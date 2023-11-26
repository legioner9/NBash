#!/bin/bash

######## Поиск в PATH
in_path()
{
	command=$1
	our_path=$2
	result=1
	oldIFS=$IFS
	IFS=":"

	for directory in $our_path
	do
		if [ -x "$directory/$command" ]; then
			result=0
		fi
	done

	IFS=$oldIFS
	return $result
}

check_command_in_PATH()
{
	# 0 - found in PATH
	# 1 - not found or not executable
	# 2 - not found in PATH
	
	var=$1

	if [ "$var" != "" ]; then
		if [ "${var:0:1}" = "/" ]; then
			if [ ! -x $var ]; then
				return 1
			fi
		elif ! in_path "$var" "$PATH"; then
			return 2
		fi
	fi
}

####### Проверка ввода
# Только буквы и цифры
valid_alpha_num()
{
	valid_chars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

	if [ "$valid_chars" = "$1" ]; then
		return 0
	else
		return 1
	fi
}

# Только буквы в верхнем регистре
valid_alpha_upper()
{
	valid_chars="$(echo $1 | sed -e 's/[^[:upper:]]//g')"

	if [ "$valid_chars" = "$1" ]; then
		return 0
	else
		return 1
	fi
}

# Проверка телефонного номера
valid_phone()
{
	valid_chars="$(echo $1 | sed -e 's/[^- [:digit:]\(\)]//g')"

	if [ "$valid_chars" = "$1" ]; then
		return 0
	else
		return 1
	fi
}

# Целое число
validint()
{
	number="$1"
	min="$2"
	max="$3"

	# Проверка на пустой ввод
	if [ -z $number ]; then
		echo "Пустой ввод. Введите число" >&2
		return 1
	fi

	# Проверка на знак минус
	if [ "${number%${number#?}}" = "-" ]; then
		testvalue="${number#?}"
	else
		testvalue="$number"
	fi

	# Проверка на то что введено число
	nodigits="$(echo $testvalue | sed 's/[[:digit:]]//g')"

	if [ ! -z "$nodigits" ]; then
		echo "Неверный формат числа. Введите только цифры без разделителей." >&2
		return 1
	fi

	# Основное сравнение
	if [ ! -z $min ]; then
		if [ "$number" -lt "$min" ]; then
			echo "Введенное значение числа меньше заданного нижнего предела $min" >&2
			return 1
		fi
	fi

	if [ ! -z $max ]; then
		if [ "$number" -gt "$max" ]; then
			echo "Введено значение числа больше заданного верхнего предела $max" >&2
			return 1
		fi
	fi

	return 0
}

# Вещественное число
validfloat()
{
	floatinput="$1"

	# Проверка десятичной точки
	if [ ! -z $(echo "$floatinput" | sed 's/[^.]//g') ]; then

		# Извлечение целой части
		decimal_part="$(echo "$floatinput" | cut -d. -f1)"

		# Извлечение дробной части
		fractional_part="${floatinput#*\.}"

		# Проверка целой части числа
		if [ ! -z "$decimal_part" ]; then
			if ! validint "$decimal_part" "" ""; then
				return 1
			fi
		fi

		# Проверка дробной части
		# Проверка что в дробной части нет знака "-"
		if [ "${fractional_part%${fractional_part#?}}" = "-" ]; then
			echo "Неверно задано число, дробная часть не может содержать знак минус" >&2
			return 1
		fi
		if [ "$fractional_part" != "" ]; then
			if ! validint "$fractional_part" "" ""; then
				return 1
			fi
		fi
	else
		if [ "$floatinput" = "-" ]; then
			echo "Неверно задано число" >&2
			return 1
		fi

		# Проверка что оставшиеся цифры представляют допустимое число
		if ! validint "$floatinput" "" ""; then
			return 1
		fi
	fi

	return 0
}

###### Проверка високосного года
exceed_days_in_moth()
{
	case $(echo $1 | tr '[:upper:]' '[:lower:]') in
		jan*) days=31 ;; feb*) days=28 ;;
		mar*) days=31 ;; apr*) days=30 ;;
		may*) days=31 ;; jun*) days=30 ;;
		jul*) days=31 ;; aug*) days=31 ;;
		sep*) days=30 ;; oct*) days=31 ;;
		nov*) days=30 ;; dec*) days=31 ;;
		*) echo "$0: Неизвестное название месяца $1" >&2
		exit 1
	esac

	if [ $2 -lt 1 -o $2 -gt $days ]; then
		return 1
	else
		return 0 # Число месяца допустимо
	fi
}

is_leap_year()
{
	# 0 - является
	# 1 - не является

	year=$1

	if [ "$((year % 4))" -ne 0 ]; then
		return 1
	elif [ "$((year % 400))" -eq 0 ]; then
		return 0
	elif [ "$((year % 100))" -eq 0 ]; then
		return 1
	else
		return 0
	fi
}

####### Конвертация номера месяца в имя
month_num_to_name()
{
	case $1 in
		1) month="Jan" ;; 2) month="Feb" ;;
		3) month="Mar" ;; 4) month="Apr" ;;
		5) month="May" ;; 6) month="Jun" ;;
		7) month="Jul" ;; 8) month="Aug" ;;
		9) month="Sep" ;; 10) month="Oct" ;;
		11) month="Nov" ;; 12) month="Dec" ;;
		*) echo "$0: Неизвестный номер месяца $1"
			exit 1
	esac
	return 0
}


####### Представление большого числа
nicenumber()
{
	# Для вывода на печать передать любой второй аргумент например p

	DD="."
	TD=","

	integer=$(echo $1 | cut -d$DD -f1) # целая часть
	decimal=$(echo $1 | cut -d$DD -f2) # дробная часть

	# проверка на наличие дробной части
	if [ "$decimal" != "$1" ]; then
		result="$DD$decimal"
	fi

	local thousands=$integer

	# формирование целой части с разделителями
	while [ $thousands -gt 999 ]; do
		remainder=$(($thousands % 1000))

		# добавление значащих нулей до полного разряда
		while [ ${#remainder} -lt 3 ]; do
			remainder="0$remainder"
		done

		result="$TD${remainder}${result}"

		thousands=$(($thousands / 1000))
	done

	local nicenum="${thousands}${result}" # итоговое представление числа

	# вывод на печать при наличии второго параметра
	if [ ! -z $2 ]; then
		echo $nicenum
	fi
}

####### ANSI последовательности

initializeANSI()
{
	esc="\033" # Если эта последовательность не будет работать,
				#введите символ ESC непосредственно.
	# Цвета шрифта
	blackf="${esc}[30m"
	redf="${esc}[31m"
	greenf="${esc}[32m"
	yellowf="${esc}[33m"
	bluef="${esc}[34m"
	purplef="${esc}[35m"
	cyanf="${esc}[36m"
	whitef="${esc}[37m"

	# Цвета фона
	blackb="${esc}[40m"
	redb="${esc}[41m"
	greenb="${esc}[42m"
	yellowb="${esc}[43m"
	blueb="${esc}[44m"
	purpleb="${esc}[45m"
	cyanb="${esc}[46m"
	whiteb="${esc}[47m"

	# Жирный, наклонный, с подчеркиванием и инверсное отображение
	boldon="${esc}[1m"
	boldoff="${esc}[22m"
	italicson="${esc}[3m"
	italicsoff="${esc}[23m"
	ulon="${esc}[4m"
	uloff="${esc}[24m"
	invon="${esc}[7m"
	invoff="${esc}[27m"

	reset="${esc}[0m"
}