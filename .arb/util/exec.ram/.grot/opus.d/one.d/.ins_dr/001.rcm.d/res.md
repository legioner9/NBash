
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731469126_13112024103846

DATX: 1731469126
-->


[001.chapt.txt.md](/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/001.chapt.txt.md)



# Chapt
    

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/002.exa.d/001.pref.txt.md)



## Базовое использование (замена процесса)

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/002.exa.d/002.txt.md)




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

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/003.exa.d/001.pref.txt.md)



## Запуск скриптов в чистой среде

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/003.exa.d/002.txt.md)



Для сброса всех переменных окружения и чистого запуска используется опция -c:

    exec -c printenv

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/004.exa.d/001.pref.txt.md)



## Измените стандартный ввод для чтения файлов с помощью exec

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/004.exa.d/002.txt.md)



```
#!/bin/bash

INPUT_FILE="Hello.txt"

exec 6<&0

# Redirect stdin to read from a file
exec < "$INPUT_FILE"

# Read the entire file as a single input
content=$(cat)

# Process the input
echo "Read: $content"

exec 0<&6

```

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
[see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man)



