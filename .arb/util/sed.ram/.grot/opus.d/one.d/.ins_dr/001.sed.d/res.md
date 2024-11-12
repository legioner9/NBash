
<!-- [[__TOC_]] -->

<a name=top></a>
<a class=top-link hide href=#top>↑</a>

Start Contents Menu

<!-- TOC tocDepth:1..6 chapterDepth:1..6 -->

<!-- /TOC -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d/res.md 1

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/opus.d/one.d/.ins_dr/001.sed.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731399303_12112024151503

DATX: 1731399303
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



