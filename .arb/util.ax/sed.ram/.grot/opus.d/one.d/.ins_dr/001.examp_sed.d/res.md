
<!-- [[__TOC_]] -->

<a name="top"></a>
<a class=top-link hide href="#top">↑</a>

<style type="text/css">
   .top-link {
    transition: all .25s ease-in-out;
    position: fixed;
    bottom: 0;
    right: 0;
    display: inline-flex;
    color: #000000;

    cursor: pointer;
    align-items: center;
    justify-content: center;
    margin: 0 2em 2em 0;
    border-radius: 50%;
    padding: .25em;
    width: 1em;
    height: 1em;
    background-color: #F8F8F8;
}
</style>

Start Contents Menu

<!-- TOC toc2f_stl0 --> 
 - <a href=#d2dfe57e65ae4109a11ce92a090f4f4c> Примеры Sed </a>
   - <a href=#51f9379cac05466b8b052a8572f77343> Печать первого слова каждой строки</a>
   - <a href=#f0ef418ae6fb482280ebcf61c7dfd55a> Затереть каждое второе слово в каждой строке</a>
   - <a href=#2019cd07b2c0431a9a0a32680974cd6f> Затереть второе слово в последней строке</a>
   - <a href=#08d6e3430e75415a8556c188cffb7507> Помещает любой входящий фрагмент в квадратные скобки. & -  ссылка на раскрытый шаблон</a>
   - <a href=#a5cc2106103f45d7b214637544a83a80> Зачистка от комментариев и пустых строк</a>
   - <a href=#a6b05a62473843b7a80237f5957a9194> Добавить пробел после каждого абзаца</a>
   - <a href=#27df4718def94884839188a3c66c0473> Выравнивание текста по левому краю</a>
   - <a href=#26823b8181524875a05d87d4fe6ddace> Добавить пробел после строки</a>
   - <a href=#eded3e459c8d4527961f9a90450803ae> Формирование новых списков через пересечения</a>
   - <a href=#d693fe060f904d59ade73fa61f637f6c> вставить строку с номером </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.examp_sed.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.examp_sed.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731835208_17112024162008

DATX: 1731835208
-->


[001.txt.md](cnx.d/001.txt.md)



 <a id="d2dfe57e65ae4109a11ce92a090f4f4c"></a>
# Примеры Sed 


[001.pref.txt.md](cnx.d/002.d/001.pref.txt.md)



 <a id="51f9379cac05466b8b052a8572f77343"></a>
## Печать первого слова каждой строки

    

[002.txt.md](cnx.d/002.d/002.txt.md)



    $ sed 's/\([[:alnum:]]*\).*/\1/' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)
    

[001.pref.txt.md](cnx.d/003.d/001.pref.txt.md)



 <a id="f0ef418ae6fb482280ebcf61c7dfd55a"></a>
## Затереть каждое второе слово в каждой строке

    

[002.txt.md](cnx.d/003.d/002.txt.md)



    $ sed 's/[[:alnum:]]*//2' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/004.d/001.pref.txt.md)



 <a id="2019cd07b2c0431a9a0a32680974cd6f"></a>
## Затереть второе слово в последней строке

    

[002.txt.md](cnx.d/004.d/002.txt.md)



    $ sed '$ s/[[:alnum:]]*//2' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/005.d/001.pref.txt.md)



 <a id="08d6e3430e75415a8556c188cffb7507"></a>
## Помещает любой входящий фрагмент в квадратные скобки. & -  ссылка на раскрытый шаблон

    

[002.txt.md](cnx.d/005.d/002.txt.md)



    $ sed 's/.*/[&]/' <<< "WORD" # [WORD]

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/006.d/001.pref.txt.md)



 <a id="a5cc2106103f45d7b214637544a83a80"></a>
## Зачистка от комментариев и пустых строк

    

[002.txt.md](cnx.d/006.d/002.txt.md)



    sed -n 's/#.*//;s/[[:blank:]]*$//;/^$/ d;p' file.txt

```
Данная микропрограмма состоит из 4 команд:

Первая команда s зачищает все комментарии.
Вторая команда s зачищает строки, состоящие из пробелов и символов табуляции.
Третья команда удаляет из потока строки с нулевой длиной.
Последняя команда производит печать оставшихся строк.
```

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/007.d/001.pref.txt.md)



 <a id="a6b05a62473843b7a80237f5957a9194"></a>
## Добавить пробел после каждого абзаца

    

[002.txt.md](cnx.d/007.d/002.txt.md)



    sed 'G' text.txt

    В текстах, в которых нет красной строки, абзацы обычно выделяются пустой строкой перед ними. В Sed предусмотрена команда G, которая вставляет пробелы между строками. \n ->\n\n

    ТЕКСТ
    соображения оценить нашей и особенности количественный реализация важные что задач.
    Активности анализа равным важную.

    РЕЗУЛЬТАТ
    соображения оценить нашей и особенности количественный реализация важные что задач.

    Активности анализа равным важную.

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/008.d/001.pref.txt.md)



 <a id="27df4718def94884839188a3c66c0473"></a>
## Выравнивание текста по левому краю

    

[002.txt.md](cnx.d/008.d/002.txt.md)



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

[001.pref.txt.md](cnx.d/009.d/001.pref.txt.md)



 <a id="26823b8181524875a05d87d4fe6ddace"></a>
## Добавить пробел после строки

    

[002.txt.md](cnx.d/009.d/002.txt.md)



    $ sed '/Список покупок:/G' init.txt > res.txt

    cat init.txt

    Список покупок:
    * Апельсины
    
    cat res.txt 

    Список покупок:

    * Апельсины

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/010.d/001.pref.txt.md)



 <a id="eded3e459c8d4527961f9a90450803ae"></a>
## Формирование новых списков через пересечения

    

[002.txt.md](cnx.d/010.d/002.txt.md)



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

[001.pref.txt.md](cnx.d/011.exa.d/001.pref.txt.md)



 <a id="d693fe060f904d59ade73fa61f637f6c"></a>
## вставить строку с номером 

    

[002.txt.md](cnx.d/011.exa.d/002.txt.md)



    sed -i '8i This is Line 8' file_md`

    insert str 8 in file_md

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->


