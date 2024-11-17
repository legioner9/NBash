
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
 - <a href=#0f80579079274630b3d4b4cbaf872298> Chapt</a>
 - <a href=#07bb249a8ef54783bfb41271a873c155> Рекомендации RCM</a>
   - <a href=#f43ae6b85eab472784322e83a0bbb867> RCM_1 (изменения в оригинал)</a>
   - <a href=#bf8c77325361444ba2c30f6cc11176f6> RCM_2 (служебные файлы)</a>
   - <a href=#7ad3af5ba76749a489fd310cf2a85e77> RCM_3 (cокращения)</a>
   - <a href=#8a4505bfea3f4c6dbe195ec3ff0d824c> RCM_4 (notmast_butlast)</a>
   - <a href=#cfd97b62efda4c65a26336fbcccacaec> RCM_5 (mast_def_args)</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/tech.ax/regexp.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/tech.ax/regexp.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/tech.ax/regexp.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731835233_17112024162033

DATX: 1731835233
-->


[001.chapt.txt.md](cnx.d/001.chapt.txt.md)



 <a id="0f80579079274630b3d4b4cbaf872298"></a>
# Chapt
     

[001.pref.txt.md](cnx.d/002.for_tst.d/001.pref.txt.md)



 <a id="07bb249a8ef54783bfb41271a873c155"></a>
# Рекомендации RCM
 
    

[002.rcm_1.txt.md](cnx.d/002.for_tst.d/002.rcm_1.txt.md)



 <a id="f43ae6b85eab472784322e83a0bbb867"></a>
## RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cnx.d/002.for_tst.d/003.rcm_2.txt.md)



 <a id="bf8c77325361444ba2c30f6cc11176f6"></a>
## RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cnx.d/002.for_tst.d/004.rcm_3.txt.md)



 <a id="7ad3af5ba76749a489fd310cf2a85e77"></a>
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



 <a id="8a4505bfea3f4c6dbe195ec3ff0d824c"></a>
## RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cnx.d/002.for_tst.d/006.rcm_5.txt.md)



 <a id="cfd97b62efda4c65a26336fbcccacaec"></a>
## RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 




