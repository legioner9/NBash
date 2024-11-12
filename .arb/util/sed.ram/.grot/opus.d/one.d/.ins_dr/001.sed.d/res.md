
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

- [Примеры Sed](#примеры-sed)
  - [Печать первого слова каждой строки](#печать-первого-слова-каждой-строки)
  - [Затереть каждое второе слово в каждой строке](#затереть-каждое-второе-слово-в-каждой-строке)
  - [Затереть второе слово в последней строке](#затереть-второе-слово-в-последней-строке)
  - [Помещает любой входящий фрагмент в квадратные скобки. \& -  ссылка на раскрытый шаблон](#помещает-любой-входящий-фрагмент-в-квадратные-скобки-----ссылка-на-раскрытый-шаблон)

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/res.md 1

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731400666_12112024153746

DATX: 1731400666
-->


[001.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/001.txt.md)



# Примеры Sed 


[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/002.d/001.pref.txt.md)



## Печать первого слова каждой строки

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/002.d/002.txt.md)



    $ sed 's/\([[:alnum:]]*\).*/\1/' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)
    

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/003.d/001.pref.txt.md)



## Затереть каждое второе слово в каждой строке

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/003.d/002.txt.md)



    $ sed 's/[[:alnum:]]*//2' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/004.d/001.pref.txt.md)



## Затереть второе слово в последней строке

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/004.d/002.txt.md)



    $ sed '$ s/[[:alnum:]]*//2' text.txt

[see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man)

[001.pref.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/005.d/001.pref.txt.md)



## Помещает любой входящий фрагмент в квадратные скобки. & -  ссылка на раскрытый шаблон

    

[002.txt.md](/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d/005.d/002.txt.md)



    $ sed 's/.*/[&]/' <<< "WORD" # [WORD]

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->



