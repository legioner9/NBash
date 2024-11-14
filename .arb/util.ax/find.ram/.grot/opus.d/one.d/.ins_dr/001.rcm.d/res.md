
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731555437_14112024103717

DATX: 1731555437
-->


[001.chapt.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/001.chapt.txt.md)



# Примеры Find
    

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/002.exa.d/001.pref.txt.md)



## файлы по имени в текущей папке

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/002.exa.d/002.txt.md)



    find . -name "*.png"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/003.exa.d/001.pref.txt.md)



## все файлы в указанной директории

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/003.exa.d/002.txt.md)



    find ./Изображения

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/004.exa.d/001.pref.txt.md)



## ограничение глубины поиска

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/004.exa.d/002.txt.md)



    find . -maxdepth 1 -name "*.php"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/005.exa.d/001.pref.txt.md)



## инвертирование шаблона

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/005.exa.d/002.txt.md)



    find . -not -name "test*"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/006.exa.d/001.pref.txt.md)



## только каталоги

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/006.exa.d/002.txt.md)



    find . -type d -name "Загрузки"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/007.exa.d/001.pref.txt.md)



## в двух каталогах одновременно

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/007.exa.d/002.txt.md)



    find ./test ./test2 -type f -name "*.c"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/008.exa.d/001.pref.txt.md)



## поиск скрытых файлов

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/008.exa.d/002.txt.md)



    find . -maxdepth 1 -type f -name ".*"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->



