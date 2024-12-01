
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
 - <a href=#a1829ff43b9549ce945f3f5fe52d654d> Команда exec</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.2.ax/exec.ram/.grot/opus.d/_cntx.org.d /home/st/REPOBARE/_repo/NBash/.arb/util.2.ax/exec.ram/.grot/opus.d/_cntx.org.d.img.md 2

PPWD: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/014_gig_dr2m/.prc/.in_fn

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1733071304_01122024234144

DATX: 1733071304
-->


[001.001.first_head.txt.md](_cntx.org.d/001.001.first_head.txt.md)



 <a id="a1829ff43b9549ce945f3f5fe52d654d"></a>
# Команда exec

Синтаксис

    exec [опции] [команда [аргументы]] [перенаправление]

Опции

    -c
    Выполнение команды в чистой среде
    -l
    Передача тире - в качестве нулевого аргумента
    -a [имя]
    Передача имя в качестве нулевого аргумента

Команда exec не создает новый процесс. Когда мы запускаем утилиту из терминала, текущий терминальный процесс заменяется командой, которая предоставляется в качестве аргумента.


    



