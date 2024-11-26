
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
 - <a href=#6caacac85c7345ed92e8a3afa4e9da78> Chapt</a>
   - <a href=#7f42482396aa47bab623e89bbf2f3e2d> Замена символов через аргументы</a>
 - <a href=#ba7be1561f1e456dab60c7c636f28666> Рекомендации RCM</a>
   - <a href=#46ab81bdec874a8c8fc330c6b1c70ae2> RCM_1 (изменения в оригинал)</a>
   - <a href=#6d4e254bbe0e48aea61f43bb6b490004> RCM_2 (служебные файлы)</a>
   - <a href=#6cf00cf13b674feb9fdb662e035ddd66> RCM_3 (cокращения)</a>
   - <a href=#7205394e5ef64d1397ed879e1481e186> RCM_4 (notmast_butlast)</a>
   - <a href=#7432a9f56b4a4f2db35dfe650b7c906f> RCM_5 (mast_def_args)</a>
   - <a href=#6775a6d604a94dc2a99d1d800d16ed61> Удалить все буквы в нижнем регистре</a>
   - <a href=#89598e71f0d24c92907221aacfffa0b0> Уплотнить повторяющиеся буквы большого и малого регистров</a>
   - <a href=#9774f95744fd45b38894863d363d62dc> Вывести первые три строки файла /etc/passwd, заменив двоеточия на пробелы</a>
   - <a href=#16000945b18140f7a9301ff18829c82a> Заменить цифры IP-адреса файла addresses2 на буквы a, и результат записать в файл addresses3</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732621480_26112024184440

DATX: 1732621480
-->


[001.chapt.txt.md](cnx.d/001.chapt.txt.md)



 <a id="6caacac85c7345ed92e8a3afa4e9da78"></a>
# Chapt
    

[001.pref.txt.md](cnx.d/002.exa.d/001.pref.txt.md)



 <a id="7f42482396aa47bab623e89bbf2f3e2d"></a>
## Замена символов через аргументы

    

[002.txt.md](cnx.d/002.exa.d/002.txt.md)



    tr x z

    Далее следует ввести строку и нажать Enter. Ниже будет выведен обработанный результат и представлена возможность повторного ввода.

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
[see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/002.for_tst.d/001.pref.txt.md)



 <a id="ba7be1561f1e456dab60c7c636f28666"></a>
# Рекомендации RCM

    

[002.rcm_1.txt.md](cnx.d/002.for_tst.d/002.rcm_1.txt.md)



 <a id="46ab81bdec874a8c8fc330c6b1c70ae2"></a>
## RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cnx.d/002.for_tst.d/003.rcm_2.txt.md)



 <a id="6d4e254bbe0e48aea61f43bb6b490004"></a>
## RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cnx.d/002.for_tst.d/004.rcm_3.txt.md)



 <a id="6cf00cf13b674feb9fdb662e035ddd66"></a>
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



 <a id="7205394e5ef64d1397ed879e1481e186"></a>
## RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cnx.d/002.for_tst.d/006.rcm_5.txt.md)



 <a id="7432a9f56b4a4f2db35dfe650b7c906f"></a>
## RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cnx.d/003.exa.d/001.pref.txt.md)



 <a id="6775a6d604a94dc2a99d1d800d16ed61"></a>
## Удалить все буквы в нижнем регистре

    

[002.txt.md](cnx.d/003.exa.d/002.txt.md)



    tr -d [:lower:]

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
[see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/004.exa.d/001.pref.txt.md)



 <a id="89598e71f0d24c92907221aacfffa0b0"></a>
## Уплотнить повторяющиеся буквы большого и малого регистров

    

[002.txt.md](cnx.d/004.exa.d/002.txt.md)



    tr -s [:upper:][:lower:]

    echo "AAcdscggooo" | tr -s [:upper:][:lower:] # Acdscgo

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/005.exa.d/001.pref.txt.md)



 <a id="9774f95744fd45b38894863d363d62dc"></a>
## Вывести первые три строки файла /etc/passwd, заменив двоеточия на пробелы

    

[002.txt.md](cnx.d/005.exa.d/002.txt.md)



    head -n3 /etc/passwd | tr ':' ' '

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/006.exa.d/001.pref.txt.md)



 <a id="16000945b18140f7a9301ff18829c82a"></a>
## Заменить цифры IP-адреса файла addresses2 на буквы a, и результат записать в файл addresses3

    

[002.txt.md](cnx.d/006.exa.d/002.txt.md)



    tr [0-9] a < addresses2 > addresses3

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->



