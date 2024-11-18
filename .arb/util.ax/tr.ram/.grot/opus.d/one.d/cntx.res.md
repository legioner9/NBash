
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
 - <a href=#d3df7960cddc4403a2d4fcdbfdc33c57> First Head</a>
   - <a href=#14db2faabb9a4a7ba8d528b5de7b4960> in_dr</a>
     - <a href=#7c470b839c0f41ff881f23ba6d083fd5> [001.rcm.d]</a>
 - <a href=#44fa2602157f4e63a71da497f9110c87> Синтаксис команды tr</a>
   - <a href=#dc4f033a4d434b2d96b42da8e230a018> [see exa_tr]</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d/cntx.ins.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731903174_18112024111254

DATX: 1731903174
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="d3df7960cddc4403a2d4fcdbfdc33c57"></a>
# First Head


    

[001.002.opus_in.txt.md](cntx.ins.d/001.002.opus_in.txt.md)



 <a id="14db2faabb9a4a7ba8d528b5de7b4960"></a>
## in_dr
 <a id="7c470b839c0f41ff881f23ba6d083fd5"></a>
### [001.rcm.d](.ins_dr/001.rcm.d/res.md)


[001.003.opus_sd.txt.md](cntx.ins.d/001.003.opus_sd.txt.md)





[001.004.opus_arb.txt.md](cntx.ins.d/001.004.opus_arb.txt.md)





[001.txt.md](cntx.ins.d/001.txt.md)



 <a id="44fa2602157f4e63a71da497f9110c87"></a>
# Синтаксис команды tr

 <a id="dc4f033a4d434b2d96b42da8e230a018"></a>
## [see exa_tr](/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md)

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



