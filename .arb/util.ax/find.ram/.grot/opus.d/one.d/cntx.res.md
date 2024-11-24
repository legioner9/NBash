
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
 - <a href=#38e33889e6a54b78a90513229d303fdc> First Head</a>
   - <a href=#a361cc79b89942fea055680344b15f50> in_dr</a>
     - <a href=#2b2df7342bb54be3a9c3d64599063511> [001.rcm.d]</a>
   - <a href=#da025495187b4c39aefbc9bbab4e3808> Основная информация о Find</a>
   - <a href=#58db2df4ee754397a749e2eb512e5540> Синтаксис</a>
   - <a href=#dff6505c6742417ea9c27cf1fbdf0f76> Основные параметры команды find</a>
   - <a href=#460fcc95a0614bc9a78614db0199e3db> Критерии</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/cntx.ins.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732464425_24112024230705

DATX: 1732464425
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="38e33889e6a54b78a90513229d303fdc"></a>
# First Head


    

[001.002.opus_in.txt.md](cntx.ins.d/001.002.opus_in.txt.md)



 <a id="a361cc79b89942fea055680344b15f50"></a>
## in_dr
 <a id="2b2df7342bb54be3a9c3d64599063511"></a>
### [001.rcm.d](.ins_dr/001.rcm.d/res.md)


[001.003.opus_sd.txt.md](cntx.ins.d/001.003.opus_sd.txt.md)





[001.004.opus_arb.txt.md](cntx.ins.d/001.004.opus_arb.txt.md)





[001.txt.md](cntx.ins.d/002.d/001.txt.md)



 <a id="da025495187b4c39aefbc9bbab4e3808"></a>
## Основная информация о Find

Команда find - это одна из наиболее важных и часто используемых утилит системы Linux. Это команда для поиска файлов и каталогов на основе специальных условий. Ее можно использовать в различных обстоятельствах, например, для поиска файлов по разрешениям, владельцам, группам, типу, размеру и другим подобным критериям.

Утилита find предустановлена по умолчанию во всех Linux дистрибутивах, поэтому вам не нужно будет устанавливать никаких дополнительных пакетов. Это очень важная находка для тех, кто хочет использовать командную строку наиболее эффективно.

 <a id="58db2df4ee754397a749e2eb512e5540"></a>
## Синтаксис

    find [папка] [параметры] критерий шаблон [действие]

    Папка - каталог в котором будем искать
    
    Параметры - дополнительные параметры, например, глубина поиска, и т д
    
    Критерий - по какому критерию будем искать: имя, дата создания, права, владелец и т д.
    
    Шаблон - непосредственно значение по которому будем отбирать файлы.


[001.txt.md](cntx.ins.d/003.d/001.txt.md)



 <a id="dff6505c6742417ea9c27cf1fbdf0f76"></a>
## Основные параметры команды find

`-P` - никогда не открывать символические ссылки.

`-L` - получает информацию о файлах по символическим ссылкам. Важно для дальнейшей обработки, чтобы обрабатывалась не ссылка, а сам файл.

`-maxdepth` - максимальная глубина поиска по подкаталогам, для поиска только в текущем каталоге установите 1.

`-depth` - искать сначала в текущем каталоге, а потом в подкаталогах.

`-mount` - искать файлы только в этой файловой системе.

`-version` - показать версию утилиты find.

`-print` - выводить полные имена файлов.

`-type f` - искать только файлы.

`-type d` - поиск папки в Linux.


[001.txt.md](cntx.ins.d/004.d/001.txt.md)



 <a id="460fcc95a0614bc9a78614db0199e3db"></a>
## Критерии

`-not` <критерий> - invert критерий

<критерий1> `-not` <критерий2> - оператор исключения

<критерий1> `-o` <критерий2> - оператор ИЛИ

`-name` - поиск файлов по имени.

`-iname` - поиск файлов по имени not use register

`-perm` - поиск файлов в Linux по режиму доступа.

`-user` - поиск файлов по владельцу.

`-group` - поиск по группе.

`-mtime` - поиск по времени модификации файла.

`-atime` - поиск файлов по дате последнего чтения.

`-nogroup` - поиск файлов, не принадлежащих ни одной группе.

`-nouser` - поиск файлов без владельцев.

`-newer` - найти файлы новее чем указанный.

`-size` - поиск файлов в Linux по их размеру.




