
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731583918_14112024183158

DATX: 1731583918
-->


[001.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/001.txt.md)



# Примеры Sed 


[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/002.d/001.pref.txt.md)



## Печать первого слова каждой строки

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/002.d/002.txt.md)



    $ sed 's/\([[:alnum:]]*\).*/\1/' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)
    

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/003.d/001.pref.txt.md)



## Затереть каждое второе слово в каждой строке

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/003.d/002.txt.md)



    $ sed 's/[[:alnum:]]*//2' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/004.d/001.pref.txt.md)



## Затереть второе слово в последней строке

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/004.d/002.txt.md)



    $ sed '$ s/[[:alnum:]]*//2' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/005.d/001.pref.txt.md)



## Помещает любой входящий фрагмент в квадратные скобки. & -  ссылка на раскрытый шаблон

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/005.d/002.txt.md)



    $ sed 's/.*/[&]/' <<< "WORD" # [WORD]

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/006.d/001.pref.txt.md)



## Зачистка от комментариев и пустых строк

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/006.d/002.txt.md)



    sed -n 's/#.*//;s/[[:blank:]]*$//;/^$/ d;p' file.txt

```
Данная микропрограмма состоит из 4 команд:

Первая команда s зачищает все комментарии.
Вторая команда s зачищает строки, состоящие из пробелов и символов табуляции.
Третья команда удаляет из потока строки с нулевой длиной.
Последняя команда производит печать оставшихся строк.
```

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/007.d/001.pref.txt.md)



## Добавить пробел после каждого абзаца

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/007.d/002.txt.md)



    sed 'G' text.txt

    В текстах, в которых нет красной строки, абзацы обычно выделяются пустой строкой перед ними. В Sed предусмотрена команда G, которая вставляет пробелы между строками. \n ->\n\n

    ТЕКСТ
    соображения оценить нашей и особенности количественный реализация важные что задач.
    Активности анализа равным важную.

    РЕЗУЛЬТАТ
    соображения оценить нашей и особенности количественный реализация важные что задач.

    Активности анализа равным важную.

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/008.d/001.pref.txt.md)



## Выравнивание текста по левому краю

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/008.d/002.txt.md)



    $ sed 's/\(^[*][[:space:]]\)/   \1/;/Список покупок:/a ---------------' init.txt > res.txt

    cat init.txt

    Список покупок:
    * Апельсины
    * Бананы
    * Одеяло
    * Зимняя резина
    * Сапоги
    
    cat res.txt 
    
    Список покупок:
    ---------------
       * Апельсины
       * Бананы
       * Одеяло
       * Зимняя резина
       * Сапоги


<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/009.d/001.pref.txt.md)



## Добавить пробел после строки

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/009.d/002.txt.md)



    $ sed '/Список покупок:/G' init.txt > res.txt

    cat init.txt

    Список покупок:
    * Апельсины
    
    cat res.txt 

    Список покупок:

    * Апельсины

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/010.d/001.pref.txt.md)



## Формирование новых списков через пересечения

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/010.d/002.txt.md)



Sed может использоваться для порождения новых данных на основе существующих, если между ними есть связность. Например можно реализовать что-то похожее на то, как работает реляционная база данных.

Пусть у нас есть два файла, в которых хранятся таблицы с данными. Мы будем использовать договоренность, что данные начинаются с третей строки, чтобы первые две использовать под заголовки. В первой таблице мы будем хранить идентификационные номера пользователей (файл users.txt).

```
 ID                           NAME
----  --------------------------------------------------
1001  Alice Brown
1002  Bob McDonald
5000  Tracy Presley
8544  Ron Tornton
```

Во второй таблице мы будем хранить контактную информацию (файл contacts.txt).

```
 ID           Place              Phone
----  ---------------------  ---------------
1001       3L24              555-0124
1002       3R65              555-0265
6000       3L02              555-0002
7000       2R06              555-0106
8544       4R44              555-0044
5000       1L02              555-0102
3000       0R25              555-0025
```
Наша задача на основе этих таблиц получить еще одну, в которой заменить известные идентификаторы реальными именами людей. Реализовать это можно, например, такой сложной командой:

```
sed $(sed -n '3,$p' users.txt | awk '{print "-e s/"$1"/"$2"_"$3"/"}') <<< "$(sed -n '1p;3,$p' contacts.txt)" | column -t | tr '_' ' '
```
Результат

```
ID             Place  Phone
Alice Brown    3L24   555-0124
Bob McDonald   3R65   555-0265
6000           3L02   555-0002
7000           2R06   555-0106
Ron Tornton    4R44   555-0044
Tracy Presley  1L02   555-0102
3000           0R25   555-0025
```

На самом деле мы используем целый конгломерат команд, потому что нам нужно много вспомогательных действий. Давайте разберем всю конструкцию по частям.

Команда строится из конвейера:

- Первая команда sed готовит новую таблицу. Она получается путем замены в первой колонке идентификаторов таблицы `contacts.txt` на известные имена сотрудников из таблицы `users.txt`, причем неизвестные идентификаторы будут сохраняться. Чтобы это сделать, мы используем команду в подоболочке. В ней мы используем `Awk`, чтобы подготовить микропрограмму с командами вида `-e s/<ID>/<NAME>/`, причем мы ожидаем, что имя состоит из двух слов, и по этой причине мы временно вставляем вместо пробела символ `_`, чтобы он не влиял на разбивку по колонкам. `Awk` используется только из удобства доступа к параметрам по ссылкам `$1`, `$2` и `$3`, и в принципе можно придумать, как это можно оформить по другому. Далее мы передаем файл `contacts.txt` как поток команде `sed`.
- Командой `column` из пакета `util-linux` мы формируем таблицу, чтобы колонки красиво выравнивались по ширине.
- Последняя команда `tr` используется для замены `_` на простой пробел.

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/011.exa.d/001.pref.txt.md)



## вставить строку с номером 

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/011.exa.d/002.txt.md)



    sed -i '8i This is Line 8' file_md`

    insert str 8 in file_md

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->



