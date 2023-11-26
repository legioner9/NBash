#!/bin/bash

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

echo -n "Ввод: "
read input

if ! valid_phone "$input"; then
	echo "Только буквы в верхнем регистре"
	exit 1
else
	echo "Ввод верный."
fi

exit 0


