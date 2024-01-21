#!/bin/bash

echo 'one two three four' | awk '{print $1}'
# one
echo 'one two three four' | awk '{print $3,$1}'
# three one
echo 'one two three four' | awk '{print "foo:",$3,"| bar:",$1}'
# foo: three | bar: one
echo 'one mississippi:two mississippi:three mississippi:four mississippi' | awk -F ":" '{print $4}'
# four mississippi
echo 'one two three four' | awk '{print $NF}' # вывести последнее поле
# four
echo 'one two three four' | awk '{print $(NF-1)}' # для получения предпоследнего поля
# three
echo 'one two three four five six' | awk '{print $((NF/2))}' # поля с середины #! DEFINE NF/2 = three
# three
echo 'one two three four five six' | awk '{print $((NF/3))}' # поля с трети #! DEFINE NF/3 = two
# two
echo 'one two three four five six' | awk '{print $((NF/3)-1)}' # поля с внутри
# one

echo -e 'one 1\n two 2' | awk '{print $1}' # обрабатывает одну строку за раз
# one
# two

echo -e 'one+ 1\n two+ 2' | awk '/one/ {print $1}' # фильтрации с помощью условия
# one+

echo -e 'one 1\n two 2' | awk '{sum+=$2} END {print sum}'  # пример использования операций с переменными # сумма второго столбца
# 3