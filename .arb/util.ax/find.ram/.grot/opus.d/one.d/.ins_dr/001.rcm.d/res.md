
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
 - <a href=#93826a251eb945bbab222f9970eb5fc7> Chapt</a>
   - <a href=#cfeab9ae259b440cb6669fd5eb0c623b> файлы по имени в текущей папке</a>
 - <a href=#d4b0fc35c4c848188e9c8d369e99dae1> Рекомендации RCM</a>
   - <a href=#2a99d2e00ede4aed9366ca361f7dbb9f> RCM_1 (изменения в оригинал)</a>
   - <a href=#663b73502ffc4a6d90f60c01009cff73> RCM_2 (служебные файлы)</a>
   - <a href=#0ef1ec47966b4cae93c85b69712b003f> RCM_3 (cокращения)</a>
   - <a href=#7c407041fc5f4374a9441891a4c0837f> RCM_4 (notmast_butlast)</a>
   - <a href=#fdac45afce12469e8036edca16e74841> RCM_5 (mast_def_args)</a>
   - <a href=#40519342d1944c3381ba988df883d024> все файлы в указанной директории</a>
   - <a href=#5ceda27cc6964084859f0ff73abd7fc2> ограничение глубины поиска</a>
   - <a href=#d9adea4d835242cdac0c89030e42ab34> инвертирование шаблона</a>
   - <a href=#5a819dd59c1441d296a68ec5a859c21e> только каталоги</a>
   - <a href=#45379ad37daf4a9ca6bf50b55414337b> в двух каталогах одновременно</a>
   - <a href=#b9ca31aa35684db0af5cb8b85919cf1d> поиск скрытых файлов</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731835199_17112024161959

DATX: 1731835199
-->


[001.chapt.txt.md](cnx.d/001.chapt.txt.md)



 <a id="93826a251eb945bbab222f9970eb5fc7"></a>
# Chapt
    

[001.pref.txt.md](cnx.d/002.exa.d/001.pref.txt.md)



 <a id="cfeab9ae259b440cb6669fd5eb0c623b"></a>
## файлы по имени в текущей папке

    

[002.txt.md](cnx.d/002.exa.d/002.txt.md)



    find . -name "*.png"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/002.for_tst.d/001.pref.txt.md)



 <a id="d4b0fc35c4c848188e9c8d369e99dae1"></a>
# Рекомендации RCM

    

[002.rcm_1.txt.md](cnx.d/002.for_tst.d/002.rcm_1.txt.md)



 <a id="2a99d2e00ede4aed9366ca361f7dbb9f"></a>
## RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cnx.d/002.for_tst.d/003.rcm_2.txt.md)



 <a id="663b73502ffc4a6d90f60c01009cff73"></a>
## RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cnx.d/002.for_tst.d/004.rcm_3.txt.md)



 <a id="0ef1ec47966b4cae93c85b69712b003f"></a>
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



 <a id="7c407041fc5f4374a9441891a4c0837f"></a>
## RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cnx.d/002.for_tst.d/006.rcm_5.txt.md)



 <a id="fdac45afce12469e8036edca16e74841"></a>
## RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cnx.d/003.exa.d/001.pref.txt.md)



 <a id="40519342d1944c3381ba988df883d024"></a>
## все файлы в указанной директории

    

[002.txt.md](cnx.d/003.exa.d/002.txt.md)



    find ./Изображения

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/004.exa.d/001.pref.txt.md)



 <a id="5ceda27cc6964084859f0ff73abd7fc2"></a>
## ограничение глубины поиска

    

[002.txt.md](cnx.d/004.exa.d/002.txt.md)



    find . -maxdepth 1 -name "*.php"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/005.exa.d/001.pref.txt.md)



 <a id="d9adea4d835242cdac0c89030e42ab34"></a>
## инвертирование шаблона

    

[002.txt.md](cnx.d/005.exa.d/002.txt.md)



    find . -not -name "test*"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/006.exa.d/001.pref.txt.md)



 <a id="5a819dd59c1441d296a68ec5a859c21e"></a>
## только каталоги

    

[002.txt.md](cnx.d/006.exa.d/002.txt.md)



    find . -type d -name "Загрузки"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/007.exa.d/001.pref.txt.md)



 <a id="45379ad37daf4a9ca6bf50b55414337b"></a>
## в двух каталогах одновременно

    

[002.txt.md](cnx.d/007.exa.d/002.txt.md)



    find ./test ./test2 -type f -name "*.c"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/008.exa.d/001.pref.txt.md)



 <a id="b9ca31aa35684db0af5cb8b85919cf1d"></a>
## поиск скрытых файлов

    

[002.txt.md](cnx.d/008.exa.d/002.txt.md)



    find . -maxdepth 1 -type f -name ".*"

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/info.ax/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/info.ax/pipe_input.ram/.grot/exam.man) -->
<!-- [see stream](/REPOBARE/_repo/NBash/.arb/info.ax/stream.ram/.grot/exam.man) -->



