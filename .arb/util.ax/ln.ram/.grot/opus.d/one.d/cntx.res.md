
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
 - <a href=#2cd3d28235014bb1bf29ee41d70a3c61> Utyl Ln</a>
   - <a href=#99e0ade652b3429dabb711acd8127e9e> in_dr</a>
     - <a href=#9559d917d5f54040a0e506e25a140ed1> [001.examp.d]</a>
   - <a href=#6e2886a4e2404b7eb892ce2bdc0d4629> 3 forms using</a>
     - <a href=#0ab37d7c177146ea94d0c228a7224fe9> First: `ln src.file link.dist.file`   </a>
     - <a href=#482a840371154ea6923b57044da804fc> Second: ln src.fl dst.dr/</a>
     - <a href=#6b762895fb084ddcb5c3fc32d5551780> Third: ln [ПАРАМЕТР]… -t ЦЕЛЬ КАТАЛОГА… </a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/ln.ram/.grot/opus.d/one.d/cntx.ins.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/ln.ram/.grot/opus.d/one.d/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/ln.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732598149_26112024121549

DATX: 1732598149
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="2cd3d28235014bb1bf29ee41d70a3c61"></a>
# Utyl Ln


    

[001.002.opus_in.txt.md](cntx.ins.d/001.002.opus_in.txt.md)



 <a id="99e0ade652b3429dabb711acd8127e9e"></a>
## in_dr
 <a id="9559d917d5f54040a0e506e25a140ed1"></a>
### [001.examp.d](.ins_dr/001.examp.d/res.md)


[001.003.opus_sd.txt.md](cntx.ins.d/001.003.opus_sd.txt.md)





[001.004.opus_arb.txt.md](cntx.ins.d/001.004.opus_arb.txt.md)





[001.L1.txt.md](cntx.ins.d/002.3_form.d/001.L1.txt.md)



 <a id="6e2886a4e2404b7eb892ce2bdc0d4629"></a>
## 3 forms using


[001.txt.md](cntx.ins.d/002.3_form.d/002.first.d/001.txt.md)



 <a id="0ab37d7c177146ea94d0c228a7224fe9"></a>
### First: `ln src.file link.dist.file`   

Эта форма используется для создания ссылки с указанным именем (' LINK_NAME' ) на целевой файл (' TARGET' ). По сути, вы указываете исходный файл и желаемое имя целевой ссылки

[001.txt.md](cntx.ins.d/002.3_form.d/003.second.d/001.txt.md)



 <a id="482a840371154ea6923b57044da804fc"></a>
### Second: ln src.fl dst.dr/

В этой форме вы предоставляете один или несколько исходных файлов (' TARGET…' ) и каталог (' DIRECTORY' ), где будут созданы ссылки. Каждый исходный файл связан с указанным каталогом.


[001.txt.md](cntx.ins.d/002.3_form.d/004.third.d/001.txt.md)



 <a id="6b762895fb084ddcb5c3fc32d5551780"></a>
### Third: ln [ПАРАМЕТР]… -t ЦЕЛЬ КАТАЛОГА… 

Похоже на вторую форму, но здесь вы сначала указываете каталог (' -t DIRECTORY' ), а затем целевые файлы. Это более гибкий способ обработки нескольких файлов.



