
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
 - <a href=#b72fb17dec0d457aac195633b00c7ee8> Chapt</a>
   - <a href=#a62ec915c296495dad3f597ef8e12fc4> Базовое использование (замена процесса)</a>
 - <a href=#41f3b2928dab4a258644755f605ed213> Рекомендации RCM</a>
   - <a href=#f6826db1d8494b4d9674b6c088ce3789> RCM_1 (изменения в оригинал)</a>
   - <a href=#e142d98f3a184e1eaceec5249c5f519d> RCM_2 (служебные файлы)</a>
   - <a href=#47a7111fda4341848d5a6559918d851e> RCM_3 (cокращения)</a>
   - <a href=#ad414ed47cad43d89aefdccc39a5fcd2> RCM_4 (notmast_butlast)</a>
   - <a href=#e01e608df0104d40a113e878876307a2> RCM_5 (mast_def_args)</a>
   - <a href=#ab19a84faf954591a084743e712b6e58> Запуск скриптов в чистой среде</a>
   - <a href=#9bb4c1f86e5b42c497824dbf60dc26a1> Измените стандартный ввод для чтения файлов с помощью exec</a>
 - <a href=#037a0ad7b66049b08906a2f76be63f58> Redirect stdin to read from a file</a>
 - <a href=#25b0930d79124fd7864d93cc1f282068> Read the entire file as a single input</a>
 - <a href=#5286801688fb4c3fb25fe854509773d8> Process the input</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/exec.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731835191_17112024161951

DATX: 1731835191
-->


[001.chapt.txt.md](cnx.d/001.chapt.txt.md)



 <a id="b72fb17dec0d457aac195633b00c7ee8"></a>
# Chapt
    

[001.pref.txt.md](cnx.d/002.exa.d/001.pref.txt.md)



 <a id="a62ec915c296495dad3f597ef8e12fc4"></a>
## Базовое использование (замена процесса)

    

[002.txt.md](cnx.d/002.exa.d/002.txt.md)




Для замены процесса открывается терминал и перечисляются запущенные процессы:

```
$ ps
    PID TTY          TIME CMD
  13507 pts/0    00:00:08 bash
 428496 pts/0    00:00:00 ps

```

Вывод показывает текущую запущенную оболочку Bash и команду ps. Оболочка Bash имеет уникальный PID.

Для подтверждения можно проверить идентификатор текущего процесса:

```
$ echo $$
13507
``````

Утилита с дополнительной командой в качестве аргумента

В этом режиме exec пытается выполнить аргумент как команду, передавая оставшиеся аргументы, если они есть, этой команде и управляя перенаправлениями, если таковые имеются

    $ exec ls

    отображает ls и тут же выходит
    в истории ls нет
    мы в том же процессе PID

    $ echo $$
    13507


<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/002.for_tst.d/001.pref.txt.md)



 <a id="41f3b2928dab4a258644755f605ed213"></a>
# Рекомендации RCM

    

[002.rcm_1.txt.md](cnx.d/002.for_tst.d/002.rcm_1.txt.md)



 <a id="f6826db1d8494b4d9674b6c088ce3789"></a>
## RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cnx.d/002.for_tst.d/003.rcm_2.txt.md)



 <a id="e142d98f3a184e1eaceec5249c5f519d"></a>
## RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cnx.d/002.for_tst.d/004.rcm_3.txt.md)



 <a id="47a7111fda4341848d5a6559918d851e"></a>
## RCM_3 (cокращения)

    dr - dir
    fl - file
    et - entety - file|dir
    nm - name
    et_lk - entety ссылка в ее имени содержится способ ее обработки
    sdr - subdir
    pth - path
    rcv_dr - rcv dir
    ins_dr - ins dir
    prx - prefix
    ptx - postfix
    prx_et - prefix for entety (e.c. recommendationSTL for dr @|for fl &)
    ptx_fn - postfix фиксирует принадлежность служебных файлов сфрмированых работой fn
    lext - последнее расширение имени справа 
    cnx - context 
    res - результат вставки context
    

[005.rcm_4.txt.md](cnx.d/002.for_tst.d/005.rcm_4.txt.md)



 <a id="ad414ed47cad43d89aefdccc39a5fcd2"></a>
## RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cnx.d/002.for_tst.d/006.rcm_5.txt.md)



 <a id="e01e608df0104d40a113e878876307a2"></a>
## RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cnx.d/003.exa.d/001.pref.txt.md)



 <a id="ab19a84faf954591a084743e712b6e58"></a>
## Запуск скриптов в чистой среде

    

[002.txt.md](cnx.d/003.exa.d/002.txt.md)



Для сброса всех переменных окружения и чистого запуска используется опция -c:

    exec -c printenv

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/004.exa.d/001.pref.txt.md)



 <a id="9bb4c1f86e5b42c497824dbf60dc26a1"></a>
## Измените стандартный ввод для чтения файлов с помощью exec

    

[002.txt.md](cnx.d/004.exa.d/002.txt.md)



```
#!/bin/bash

INPUT_FILE="Hello.txt"

exec 6<&0

 <a id="037a0ad7b66049b08906a2f76be63f58"></a>
# Redirect stdin to read from a file
exec < "$INPUT_FILE"

 <a id="25b0930d79124fd7864d93cc1f282068"></a>
# Read the entire file as a single input
content=$(cat)

 <a id="5286801688fb4c3fb25fe854509773d8"></a>
# Process the input
echo "Read: $content"

exec 0<&6

```

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
[see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man)



