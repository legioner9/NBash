
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
 - <a href=#0e1e5fac6da54c1484b5f463d1958ce6> Utyl Ln</a>
   - <a href=#2a3fd52502834da2a446e049baee794b> in_dr</a>
     - <a href=#68d0616fc6384cbab75bc55335e84f0d> [001.examp.d]</a>
   - <a href=#1ffd78b262fb479aa37c9052ae72dbd8> 3 forms using</a>
     - <a href=#b739e7ba440a48678000102243f21b46> First: `ln src.file link.dist.file`   </a>
     - <a href=#1efad47af144492ea26a1f8bb080f088> Second: ln src.fl dst.dr/</a>
     - <a href=#14b46716df8146cd9cb33fd547dfd8e7> Third: ln [ПАРАМЕТР]… -t ЦЕЛЬ КАТАЛОГА… </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/ln.ram/.grot/opus.d/one.d/_cntx.ins.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/ln.ram/.grot/opus.d/one.d/_cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/ln.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732607014_26112024144334

DATX: 1732607014
-->


[001.001.first_head.txt.md](_cntx.ins.d/001.001.first_head.txt.md)



 <a id="0e1e5fac6da54c1484b5f463d1958ce6"></a>
# Utyl Ln


    

[001.002.opus_in.txt.md](_cntx.ins.d/001.002.opus_in.txt.md)



 <a id="2a3fd52502834da2a446e049baee794b"></a>
## in_dr
 <a id="68d0616fc6384cbab75bc55335e84f0d"></a>
### [001.examp.d](.ins_dr/001.examp.d/res.md)


[001.003.opus_sd.txt.md](_cntx.ins.d/001.003.opus_sd.txt.md)





[001.004.opus_arb.txt.md](_cntx.ins.d/001.004.opus_arb.txt.md)





[001.L1.txt.md](_cntx.ins.d/002.3_form.d/001.L1.txt.md)



 <a id="1ffd78b262fb479aa37c9052ae72dbd8"></a>
## 3 forms using


[001.txt.md](_cntx.ins.d/002.3_form.d/002.first.d/001.txt.md)



 <a id="b739e7ba440a48678000102243f21b46"></a>
### First: `ln src.file link.dist.file`   

Эта форма используется для создания ссылки с указанным именем (' LINK_NAME' ) на целевой файл (' TARGET' ). По сути, вы указываете исходный файл и желаемое имя целевой ссылки

[001.txt.md](_cntx.ins.d/002.3_form.d/003.second.d/001.txt.md)



 <a id="1efad47af144492ea26a1f8bb080f088"></a>
### Second: ln src.fl dst.dr/

В этой форме вы предоставляете один или несколько исходных файлов (' TARGET…' ) и каталог (' DIRECTORY' ), где будут созданы ссылки. Каждый исходный файл связан с указанным каталогом.


[001.txt.md](_cntx.ins.d/002.3_form.d/004.third.d/001.txt.md)



 <a id="14b46716df8146cd9cb33fd547dfd8e7"></a>
### Third: ln [ПАРАМЕТР]… -t ЦЕЛЬ КАТАЛОГА… 

Похоже на вторую форму, но здесь вы сначала указываете каталог (' -t DIRECTORY' ), а затем целевые файлы. Это более гибкий способ обработки нескольких файлов.



