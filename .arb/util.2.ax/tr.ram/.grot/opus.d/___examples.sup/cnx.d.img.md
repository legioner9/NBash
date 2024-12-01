
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
 - <a href=#432f395d6d0d4761b233bc667357dbea> Примеры Tr</a>
   - <a href=#32763c020cc9434db2418d3a7bd4c5e1> Замена символов через аргументы</a>
   - <a href=#64d32162d0ad440c90e1068cae3148a3> Удалить все буквы в нижнем регистре</a>
   - <a href=#64156a42efd5409d9496e8122c4d7b6e> Уплотнить повторяющиеся буквы большого и малого регистров</a>
   - <a href=#af787438bb574750ba4e6417f988e8a2> Вывести первые три строки файла /etc/passwd, заменив двоеточия на пробелы</a>
   - <a href=#2b2ef3c9e5b546a4a60c85c95a67c014> Заменить цифры IP-адреса файла addresses2 на буквы a, и результат записать в файл addresses3</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.2.ax/tr.ram/.grot/opus.d/___examples.sup/cnx.d /home/st/REPOBARE/_repo/NBash/.arb/util.2.ax/tr.ram/.grot/opus.d/___examples.sup/cnx.d.img.md 2

PPWD: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/014_gig_dr2m/.prc/.in_fn

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1733080039_02122024020719

DATX: 1733080039
-->


[001.chapt.txt.md](cnx.d/001.chapt.txt.md)



 <a id="432f395d6d0d4761b233bc667357dbea"></a>
# Примеры Tr


    

[001.pref.txt.md](cnx.d/002.exa.d/001.pref.txt.md)



 <a id="32763c020cc9434db2418d3a7bd4c5e1"></a>
## Замена символов через аргументы
    

[002.txt.md](cnx.d/002.exa.d/002.txt.md)



    tr x z

    Далее следует ввести строку и нажать Enter. Ниже будет выведен обработанный результат и представлена возможность повторного ввода.

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
[see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/003.exa.d/001.pref.txt.md)



 <a id="64d32162d0ad440c90e1068cae3148a3"></a>
## Удалить все буквы в нижнем регистре

    

[002.txt.md](cnx.d/003.exa.d/002.txt.md)



    tr -d [:lower:]

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
[see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man)

[001.pref.txt.md](cnx.d/004.exa.d/001.pref.txt.md)



 <a id="64156a42efd5409d9496e8122c4d7b6e"></a>
## Уплотнить повторяющиеся буквы большого и малого регистров

    

[002.txt.md](cnx.d/004.exa.d/002.txt.md)



    tr -s [:upper:][:lower:]

    echo "AAcdscggooo" | tr -s [:upper:][:lower:] # Acdscgo

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/005.exa.d/001.pref.txt.md)



 <a id="af787438bb574750ba4e6417f988e8a2"></a>
## Вывести первые три строки файла /etc/passwd, заменив двоеточия на пробелы

    

[002.txt.md](cnx.d/005.exa.d/002.txt.md)



    head -n3 /etc/passwd | tr ':' ' '

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->

[001.pref.txt.md](cnx.d/006.exa.d/001.pref.txt.md)



 <a id="2b2ef3c9e5b546a4a60c85c95a67c014"></a>
## Заменить цифры IP-адреса файла addresses2 на буквы a, и результат записать в файл addresses3

    

[002.txt.md](cnx.d/006.exa.d/002.txt.md)



    tr [0-9] a < addresses2 > addresses3

<!-- [see simbol_class](/REPOBARE/_repo/NBash/.arb/man/symbol_class.ram/.grot/exam.man) -->
<!-- [see pipe_input](/REPOBARE/_repo/NBash/.arb/man/pipe_input.ram/.grot/exam.man) -->



