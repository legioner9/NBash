
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731411896_12112024184456

DATX: 1731411896
-->


[001.chapt.txt.md](/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/001.chapt.txt.md)



# Примеры Tr


    

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/002.exa.d/001.pref.txt.md)



## Замена символов через аргументы

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/002.exa.d/002.txt.md)



    tr x z

    Далее следует ввести строку и нажать Enter. Ниже будет выведен обработанный результат и представлена возможность повторного ввода.

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
[see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man)

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/003.exa.d/001.pref.txt.md)



## Удалить все буквы в нижнем регистре

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/003.exa.d/002.txt.md)



    tr -d [:lower:]

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
[see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man)

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/004.exa.d/001.pref.txt.md)



## Уплотнить повторяющиеся буквы большого и малого регистров

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/004.exa.d/002.txt.md)



    tr -s [:upper:][:lower:]

    echo "AAcdscggooo" | tr -s [:upper:][:lower:] # Acdscgo

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->


