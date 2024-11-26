
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
 - <a href=#5f128c90909e443cbd9310b6b2879592> First Head</a>
   - <a href=#371aeabdf4124be083f6b9e80f5c8bf0> in_dr</a>
     - <a href=#3bfe211612b34e05a9f60c9b8a0e0df3> [001.rcm.d]</a>
   - <a href=#358ef908b3294ee9805444efae1e40ee> Основная информация о Find</a>
   - <a href=#738f15c188964b6495005d7fd4fada49> Синтаксис</a>
   - <a href=#d056b92af7c64c55ac3c947abb126a50> Основные параметры команды find</a>
   - <a href=#422b454e05694cf08caf6e935e9d28e7> Критерии</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/_cntx.ins.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/_cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1732608214_26112024150333

DATX: 1732608214
-->


[001.001.first_head.txt.md](_cntx.ins.d/001.001.first_head.txt.md)



 <a id="5f128c90909e443cbd9310b6b2879592"></a>
# First Head


    

[001.002.opus_in.txt.md](_cntx.ins.d/001.002.opus_in.txt.md)



 <a id="371aeabdf4124be083f6b9e80f5c8bf0"></a>
## in_dr
 <a id="3bfe211612b34e05a9f60c9b8a0e0df3"></a>
### [001.rcm.d](.ins_dr/001.rcm.d/res.md)


[001.003.opus_sd.txt.md](_cntx.ins.d/001.003.opus_sd.txt.md)





[001.004.opus_arb.txt.md](_cntx.ins.d/001.004.opus_arb.txt.md)





[001.txt.md](_cntx.ins.d/002.d/001.txt.md)



 <a id="358ef908b3294ee9805444efae1e40ee"></a>
## Основная информация о Find

Команда find - это одна из наиболее важных и часто используемых утилит системы Linux. Это команда для поиска файлов и каталогов на основе специальных условий. Ее можно использовать в различных обстоятельствах, например, для поиска файлов по разрешениям, владельцам, группам, типу, размеру и другим подобным критериям.

Утилита find предустановлена по умолчанию во всех Linux дистрибутивах, поэтому вам не нужно будет устанавливать никаких дополнительных пакетов. Это очень важная находка для тех, кто хочет использовать командную строку наиболее эффективно.

 <a id="738f15c188964b6495005d7fd4fada49"></a>
## Синтаксис

    find [папка] [параметры] критерий шаблон [действие]

    Папка - каталог в котором будем искать
    
    Параметры - дополнительные параметры, например, глубина поиска, и т д
    
    Критерий - по какому критерию будем искать: имя, дата создания, права, владелец и т д.
    
    Шаблон - непосредственно значение по которому будем отбирать файлы.


[001.txt.md](_cntx.ins.d/003.d/001.txt.md)



 <a id="d056b92af7c64c55ac3c947abb126a50"></a>
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


[001.txt.md](_cntx.ins.d/004.d/001.txt.md)



 <a id="422b454e05694cf08caf6e935e9d28e7"></a>
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




