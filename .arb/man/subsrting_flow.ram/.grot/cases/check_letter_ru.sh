#!/bin/bash

arr_ru_letter=('й' 'ц' 'у' 'к' 'е' 'н' 'г' 'ш' 'щ' 'з' 'х' 'ъ' 'ф' 'ы' 'в' 'а' 'п' 'р' 'о' 'л' 'д' 'ж' 'э' 'я' 'ч' 'с' 'м' 'и' 'т' 'ь' 'б' 'ю')
echo -e "${GREEN}\${arr_ru_letter[@]} = ${arr_ru_letter[*]}${NORMAL}" #print variable

for letter in $(grep -o . <<<"$1"); do

    echo "${letter}"

    if [[ "${letter}" = [a-z] ]]; then
        echo "lower"
    fi

    for ru_letter in ${arr_ru_letter[@]}; do
        if [ "${ru_letter}" == "${letter}" ]; then
            echo "lower"
        fi
    done

done
