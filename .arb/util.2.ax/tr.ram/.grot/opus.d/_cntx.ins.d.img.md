
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
 - <a href=#2f4fc929017343e5b288fb8ec10e8fee> Tr util</a>
 - <a href=#41ccb5ccce7d430b9d29470ac42d2636> [Tr examp]</a>
 - <a href=#60a796c3848240fca57d82d4d05d33fd> Синтаксис команды tr</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.2.ax/tr.ram/.grot/opus.d/_cntx.ins.d /home/st/REPOBARE/_repo/NBash/.arb/util.2.ax/tr.ram/.grot/opus.d/_cntx.ins.d.img.md 2

PPWD: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/014_gig_dr2m/.prc/.in_fn

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1733080041_02122024020721

DATX: 1733080041
-->


[001.001.first_head.txt.md](_cntx.ins.d/001.001.first_head.txt.md)



 <a id="2f4fc929017343e5b288fb8ec10e8fee"></a>
# Tr util


    

 <a id="41ccb5ccce7d430b9d29470ac42d2636"></a>
# [Tr examp](_cntx.ins.d/001.002.Tr_examp.h1file.md)


[002.txt.md](_cntx.ins.d/002.txt.md)



 <a id="60a796c3848240fca57d82d4d05d33fd"></a>
# Синтаксис команды tr

Программа обрабатывает текст посимвольно. По умолчанию у её синтаксиса следующий вид (квадратные скобки указывают, что аргумент не обязателен):

    tr [КЛЮЧ]... НАБОР1 [НАБОР2]

```
Всего доступно 4 ключа для уточнения операции над символами:

Ключ	   Длинный вариант	    Значение
-c, -C     --complement	        Сначала получить дополнение НАБОРА1
-d	       --delete	            Удалить знаки из НАБОРА2, не превращать
-s	       --squeeze-repeats	Замещать последовательность знаков, которые повторяются, из перечисленных в последнем НАБОРЕ, на один такой знак
-t	       --truncate-set1	    Сначала сократить НАБОР1 до размеров НАБОРА2
```

НАБОРЫ указываются как символьные строки. В большинстве случаев символы представляют сами себя. Полный набор опций представлен в следующей таблице:

```
Опция	        Значение
\HHH	        Знак в восьмеричной кодировке (с трех цифр ННН)
\\	            Обратный слэш
\b	            Забой
\f	            Перевод страницы
\n	            Начать с новой строки
\r	            Возврат каретки
\t	            Горизонтальная табуляция
\v	            Вертикальная табуляция
ЗНАК1-ЗНАК2	    Все знаки от ЗНАК1 до ЗНАК2 в порядке возрастания
[ЗНАК*]	ЗНАК     заполняет НАБОР2 до длины НАБОРА1
[ЗНАК*ЧИСЛО]	Указанное ЧИСЛО одинаковых ЗНАКОВ; ЧИСЛО восьмиричных, если начинается с 0
[:alnum:]	    Все буквы и цифры
[:alpha:]	    Все буквы
[:blank:]	    Все горизонтальные пробельные символы
[:cntrl:]	    Все управляющие знаки
[:digit:]	    Все цифры
[:graph:]	    Все печатаемые знаки, исключая пробел
[:lower:]	    Все маленькие буквы
[:print:]	    Все печатаемые знаки, включая пробел
[:punct:]	    Все знаки пунктуации
[:space:]	    Все вертикальные и горизонтальные пробельные знаки
[:upper:]	    Все большие буквы
[:xdigit:]	    Все шестнадцатиричные цифры
[=ЗНАК=]	    Все знаки, эквивалентные ЗНАКУ

``````

Превращение осуществляется, если не указано `-d` для обоих НАБОРОВ. `-t` можно использовать только во время превращения. Если нужно, `НАБОР2` будет расширен до размеров `НАБОРА1` повторением последнего символа. Лишние символы НАБОРА2 будут пропущены. Гарантированно расширяются в порядке возрастания только `[:lower:]` и `[:upper:]`. Использованные символы в `НАБОРЕ2` во время превращения можно применять для определения превращения регистра только в парах. `-s` использует последний указанный набор. Уплотнение происходит после превращения или удаления.


