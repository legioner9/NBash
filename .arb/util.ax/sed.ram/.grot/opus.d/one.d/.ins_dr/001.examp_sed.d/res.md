
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

h1{
    color: rgb(155, 0, 218);
    font-weight: normal;
    font-style: italic;
    font-weight:bold;

}
h2{
    color: rgb(155, 40, 238);
    font-style: italic;
    font-weight:bold;
}
h3{
    color: rgb(155, 80, 218);
    font-style: italic;
    font-weight:bold;
}
h4{
    color: rgb(155, 120, 218);
    font-style: italic;
    font-weight:bold;
}
h5{
    color: rgb(155, 160, 218);
    font-style: italic;
    font-weight:bold;
}
h6 {
    color: rgb(155, 200, 230);
    font-style: italic;
    font-weight:bold;
}
</style>

Start Contents Menu

<!-- TOC toc2f_stl0 --> 
 - <a href=#2171ae1ac33846c39d891c24d931092e> Примеры Sed </a>
   - <a href=#b6b95a50d4dd439aa55b68e8ccd32e2f> Печать первого слова каждой строки</a>
   - <a href=#c4d4214e134248a2ac6491e35200dd6e> Затереть каждое второе слово в каждой строке</a>
   - <a href=#6b53a466f8d94bc4a57d65369f2395a6> Затереть второе слово в последней строке</a>
   - <a href=#eae32726112d49c088ca29498d6dd291> Помещает любой входящий фрагмент в квадратные скобки. & -  ссылка на раскрытый шаблон</a>
   - <a href=#9418e29ebf96489b98d587967ce65f49> Зачистка от комментариев и пустых строк</a>
   - <a href=#001b893710b541a3bc520a2b9fbb8603> Добавить пробел после каждого абзаца</a>
   - <a href=#8569090f738f4a7ab0a39a8ca26dc1c9> Выравнивание текста по левому краю</a>
   - <a href=#d49cd5c0c0e24f0dadc17be3aa5d6959> Добавить пробел после строки</a>
   - <a href=#9461c52dc99b497995a61f1286db6df1> Формирование новых списков через пересечения</a>
   - <a href=#4bec7bd22616430b961341d3b31897c8> вставить строку с номером </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.examp_sed.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d/.ins_dr/001.examp_sed.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/sed.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732621472_26112024184432

DATX: 1732621472
-->


[001.txt.md](cnx.d/001.txt.md)



 <a id="2171ae1ac33846c39d891c24d931092e"></a>
# Примеры Sed 


[001.pref.txt.md](cnx.d/002.d/001.pref.txt.md)



 <a id="b6b95a50d4dd439aa55b68e8ccd32e2f"></a>
## Печать первого слова каждой строки

    

[002.txt.md](cnx.d/002.d/002.txt.md)



    $ sed 's/\([[:alnum:]]*\).*/\1/' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)
    

[001.pref.txt.md](cnx.d/003.d/001.pref.txt.md)



 <a id="c4d4214e134248a2ac6491e35200dd6e"></a>
## Затереть каждое второе слово в каждой строке

    

[002.txt.md](cnx.d/003.d/002.txt.md)



    $ sed 's/[[:alnum:]]*//2' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/004.d/001.pref.txt.md)



 <a id="6b53a466f8d94bc4a57d65369f2395a6"></a>
## Затереть второе слово в последней строке

    

[002.txt.md](cnx.d/004.d/002.txt.md)



    $ sed '$ s/[[:alnum:]]*//2' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/005.d/001.pref.txt.md)



 <a id="eae32726112d49c088ca29498d6dd291"></a>
## Помещает любой входящий фрагмент в квадратные скобки. & -  ссылка на раскрытый шаблон

    

[002.txt.md](cnx.d/005.d/002.txt.md)



    $ sed 's/.*/[&]/' <<< "WORD" # [WORD]

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/006.d/001.pref.txt.md)



 <a id="9418e29ebf96489b98d587967ce65f49"></a>
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



 <a id="001b893710b541a3bc520a2b9fbb8603"></a>
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



 <a id="8569090f738f4a7ab0a39a8ca26dc1c9"></a>
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



 <a id="d49cd5c0c0e24f0dadc17be3aa5d6959"></a>
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



 <a id="9461c52dc99b497995a61f1286db6df1"></a>
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



 <a id="4bec7bd22616430b961341d3b31897c8"></a>
## вставить строку с номером 

    

[002.txt.md](cnx.d/011.exa.d/002.txt.md)



    sed -i '8i This is Line 8' file_md`

    insert str 8 in file_md

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->



