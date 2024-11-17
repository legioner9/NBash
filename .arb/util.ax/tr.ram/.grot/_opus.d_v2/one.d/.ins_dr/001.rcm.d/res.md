
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
 - <a href=#4eadd9d663704fe5b8bb1b874488fbc7> Chapt</a>
   - <a href=#4f7c141bfb6f4d749ec0e526c4cd1ac2> Замена символов через аргументы</a>
 - <a href=#8d00d0cc8f284720a3b610a0d9019638> Рекомендации RCM</a>
   - <a href=#93091f3fc07b427bbe77ce6b5138a0d7> RCM_1 (изменения в оригинал)</a>
   - <a href=#d7c574e662f74df5829f4d2cd08ce358> RCM_2 (служебные файлы)</a>
   - <a href=#cb3995b4021d4d7d9c5ea70dd9449e7b> RCM_3 (cокращения)</a>
   - <a href=#77a94158ed014753a2bbb46fcaa35d12> RCM_4 (notmast_butlast)</a>
   - <a href=#273100812e3d4c37a7ac3ae970727896> RCM_5 (mast_def_args)</a>
   - <a href=#3adf8e3cdf5d47069c7a8cae3396a736> Удалить все буквы в нижнем регистре</a>
   - <a href=#2fd621e92ab842b6955deed3a10eff3d> Уплотнить повторяющиеся буквы большого и малого регистров</a>
   - <a href=#a7057d0bea8642e689eb1497852f9537> Вывести первые три строки файла /etc/passwd, заменив двоеточия на пробелы</a>
   - <a href=#8666a772a62a4681bb2cafcdd4fc3026> Заменить цифры IP-адреса файла addresses2 на буквы a, и результат записать в файл addresses3</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/tr.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731835225_17112024162025

DATX: 1731835225
-->


[001.chapt.txt.md](cnx.d/001.chapt.txt.md)



 <a id="4eadd9d663704fe5b8bb1b874488fbc7"></a>
# Chapt
    

[001.pref.txt.md](cnx.d/002.exa.d/001.pref.txt.md)



 <a id="4f7c141bfb6f4d749ec0e526c4cd1ac2"></a>
## Замена символов через аргументы

    

[002.txt.md](cnx.d/002.exa.d/002.txt.md)



    tr x z

    Далее следует ввести строку и нажать Enter. Ниже будет выведен обработанный результат и представлена возможность повторного ввода.

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
[see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/002.for_tst.d/001.pref.txt.md)



 <a id="8d00d0cc8f284720a3b610a0d9019638"></a>
# Рекомендации RCM

    

[002.rcm_1.txt.md](cnx.d/002.for_tst.d/002.rcm_1.txt.md)



 <a id="93091f3fc07b427bbe77ce6b5138a0d7"></a>
## RCM_1 (изменения в оригинал)

в оригинал вносим изменения - копия для истории изменений
    

[003.rcm_2.txt.md](cnx.d/002.for_tst.d/003.rcm_2.txt.md)



 <a id="d7c574e662f74df5829f4d2cd08ce358"></a>
## RCM_2 (служебные файлы)

при работе утилиты формировать следующие файлы рядом с результатами работы
  - лог
    - отдельно лог ошибок
  - ридми 
    - readme.stnd.md
    - readme.flow.md
  - сорс файлы для запуска в командной строке
    

[004.rcm_3.txt.md](cnx.d/002.for_tst.d/004.rcm_3.txt.md)



 <a id="cb3995b4021d4d7d9c5ea70dd9449e7b"></a>
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



 <a id="77a94158ed014753a2bbb46fcaa35d12"></a>
## RCM_4 (notmast_butlast)

- наличие последнего аргумента для отладки функции 


[006.rcm_5.txt.md](cnx.d/002.for_tst.d/006.rcm_5.txt.md)



 <a id="273100812e3d4c37a7ac3ae970727896"></a>
## RCM_5 (mast_def_args)

- используемые аргументы в функции не могут быть пустыми при вызове
  - допускается замена на константу e.c. @ 


[001.pref.txt.md](cnx.d/003.exa.d/001.pref.txt.md)



 <a id="3adf8e3cdf5d47069c7a8cae3396a736"></a>
## Удалить все буквы в нижнем регистре

    

[002.txt.md](cnx.d/003.exa.d/002.txt.md)



    tr -d [:lower:]

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
[see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/004.exa.d/001.pref.txt.md)



 <a id="2fd621e92ab842b6955deed3a10eff3d"></a>
## Уплотнить повторяющиеся буквы большого и малого регистров

    

[002.txt.md](cnx.d/004.exa.d/002.txt.md)



    tr -s [:upper:][:lower:]

    echo "AAcdscggooo" | tr -s [:upper:][:lower:] # Acdscgo

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/005.exa.d/001.pref.txt.md)



 <a id="a7057d0bea8642e689eb1497852f9537"></a>
## Вывести первые три строки файла /etc/passwd, заменив двоеточия на пробелы

    

[002.txt.md](cnx.d/005.exa.d/002.txt.md)



    head -n3 /etc/passwd | tr ':' ' '

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/006.exa.d/001.pref.txt.md)



 <a id="8666a772a62a4681bb2cafcdd4fc3026"></a>
## Заменить цифры IP-адреса файла addresses2 на буквы a, и результат записать в файл addresses3

    

[002.txt.md](cnx.d/006.exa.d/002.txt.md)



    tr [0-9] a < addresses2 > addresses3

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->



