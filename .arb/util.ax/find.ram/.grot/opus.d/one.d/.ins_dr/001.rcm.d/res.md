
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
 - <a href=#5b23207d235e4449891133a1ab31d914> Chapt</a>
   - <a href=#7674c657acae43f8a47cfe441a101b65> файлы по имени в текущей папке</a>
 - <a href=#2ccc5ea9f2944845ad8b4d4f941b892b> Рекомендации RCM</a>
   - <a href=#57039df6e58a412f8692832d463e6b26> RCM_1 (изменения в оригинал)</a>
   - <a href=#5d13c2b4835743fcb7a70f775c3619d9> RCM_2 (служебные файлы)</a>
   - <a href=#3202fbb175f2403a9cce742f7fefea58> RCM_3 (cокращения)</a>
   - <a href=#efb4e7189dab4012b4769b2ea815edec> RCM_4 (notmast_butlast)</a>
   - <a href=#7dd6593d432d41c795edc9e59eae3f26> RCM_5 (mast_def_args)</a>
   - <a href=#05176cde6b60477ca6c9827cad737225> все файлы в указанной директории</a>
   - <a href=#03d7c98ac3ab4ac88693da91e02e180e> ограничение глубины поиска</a>
   - <a href=#8021c09e89fd4878a025b957ec8fe47e> инвертирование шаблона</a>
   - <a href=#3cc3fee8c481412d9724a6bd2c97d822> только каталоги</a>
   - <a href=#65e66ee4f0374d418ed6f6fcb42bd321> в двух каталогах одновременно</a>
   - <a href=#3ac9dc2571124eb08754597c147a6a7f> поиск скрытых файлов</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732621461_26112024184421

DATX: 1732621461
-->


[001.chapt.txt.md](cnx.d/001.chapt.txt.md)



 <a id="5b23207d235e4449891133a1ab31d914"></a>
# Chapt
    

[001.pref.txt.md](cnx.d/002.exa.d/001.pref.txt.md)



 <a id="7674c657acae43f8a47cfe441a101b65"></a>
## файлы по имени в текущей папке

    

[002.txt.md](cnx.d/002.exa.d/002.txt.md)



    find . -name "*.png"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/002.for_tst.d/001.pref.txt.md)



 <a id="2ccc5ea9f2944845ad8b4d4f941b892b"></a>
# Рекомендации RCM

    

[002.rcm_1.txt.md](cnx.d/002.for_tst.d/002.rcm_1.txt.md)



 <a id="57039df6e58a412f8692832d463e6b26"></a>
## RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cnx.d/002.for_tst.d/003.rcm_2.txt.md)



 <a id="5d13c2b4835743fcb7a70f775c3619d9"></a>
## RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cnx.d/002.for_tst.d/004.rcm_3.txt.md)



 <a id="3202fbb175f2403a9cce742f7fefea58"></a>
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



 <a id="efb4e7189dab4012b4769b2ea815edec"></a>
## RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cnx.d/002.for_tst.d/006.rcm_5.txt.md)



 <a id="7dd6593d432d41c795edc9e59eae3f26"></a>
## RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cnx.d/003.exa.d/001.pref.txt.md)



 <a id="05176cde6b60477ca6c9827cad737225"></a>
## все файлы в указанной директории

    

[002.txt.md](cnx.d/003.exa.d/002.txt.md)



    find ./Изображения

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/004.exa.d/001.pref.txt.md)



 <a id="03d7c98ac3ab4ac88693da91e02e180e"></a>
## ограничение глубины поиска

    

[002.txt.md](cnx.d/004.exa.d/002.txt.md)



    find . -maxdepth 1 -name "*.php"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/005.exa.d/001.pref.txt.md)



 <a id="8021c09e89fd4878a025b957ec8fe47e"></a>
## инвертирование шаблона

    

[002.txt.md](cnx.d/005.exa.d/002.txt.md)



    find . -not -name "test*"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/006.exa.d/001.pref.txt.md)



 <a id="3cc3fee8c481412d9724a6bd2c97d822"></a>
## только каталоги

    

[002.txt.md](cnx.d/006.exa.d/002.txt.md)



    find . -type d -name "Загрузки"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/007.exa.d/001.pref.txt.md)



 <a id="65e66ee4f0374d418ed6f6fcb42bd321"></a>
## в двух каталогах одновременно

    

[002.txt.md](cnx.d/007.exa.d/002.txt.md)



    find ./test ./test2 -type f -name "*.c"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/008.exa.d/001.pref.txt.md)



 <a id="3ac9dc2571124eb08754597c147a6a7f"></a>
## поиск скрытых файлов

    

[002.txt.md](cnx.d/008.exa.d/002.txt.md)



    find . -maxdepth 1 -type f -name ".*"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->



