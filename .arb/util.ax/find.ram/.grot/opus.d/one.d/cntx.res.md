
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
 - <a href=#b8d2a30f616d4d509e4d14672917c69e> First Head</a>
   - <a href=#a47ee821af8145b9ba294c741c4bff03> in_dr</a>
     - <a href=#a8a9ad8fe60c42ebb0337bbd63890614> [001.rcm.d]</a>
   - <a href=#2384abe9d7c647a385c2536c32479b9b> Основная информация о Find</a>
   - <a href=#aa1387a6afba47f7b0103b6f27c69e13> Синтаксис</a>
   - <a href=#073ce79431d7402eaea4fff9a5bfdf0b> Основные параметры команды find</a>
   - <a href=#b0d77e33a6a0454f8d2ee211bf294703> Критерии</a>

<!-- /TOC toc2f_stl0 -->

End Contents Menu

<!--
CMND: ufl_stl0 9 /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/cntx.ins.d /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d/cntx.res.md 2

PPWD: /home/st/REPOBARE/_repo/NBash/.arb/util.ax/find.ram/.grot/opus.d/one.d

FLOW: /home/st/REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m

DATE: 1731903164_18112024111244

DATX: 1731903164
-->


[001.001.first_head.txt.md](cntx.ins.d/001.001.first_head.txt.md)



 <a id="b8d2a30f616d4d509e4d14672917c69e"></a>
# First Head


    

[001.002.opus_in.txt.md](cntx.ins.d/001.002.opus_in.txt.md)



 <a id="a47ee821af8145b9ba294c741c4bff03"></a>
## in_dr
 <a id="a8a9ad8fe60c42ebb0337bbd63890614"></a>
### [001.rcm.d](.ins_dr/001.rcm.d/res.md)


[001.003.opus_sd.txt.md](cntx.ins.d/001.003.opus_sd.txt.md)





[001.004.opus_arb.txt.md](cntx.ins.d/001.004.opus_arb.txt.md)





[001.txt.md](cntx.ins.d/002.d/001.txt.md)



 <a id="2384abe9d7c647a385c2536c32479b9b"></a>
## Основная информация о Find

Команда find - это одна из наиболее важных и часто используемых утилит системы Linux. Это команда для поиска файлов и каталогов на основе специальных условий. Ее можно использовать в различных обстоятельствах, например, для поиска файлов по разрешениям, владельцам, группам, типу, размеру и другим подобным критериям.

Утилита find предустановлена по умолчанию во всех Linux дистрибутивах, поэтому вам не нужно будет устанавливать никаких дополнительных пакетов. Это очень важная находка для тех, кто хочет использовать командную строку наиболее эффективно.

 <a id="aa1387a6afba47f7b0103b6f27c69e13"></a>
## Синтаксис

    find [папка] [параметры] критерий шаблон [действие]

    Папка - каталог в котором будем искать
    
    Параметры - дополнительные параметры, например, глубина поиска, и т д
    
    Критерий - по какому критерию будем искать: имя, дата создания, права, владелец и т д.
    
    Шаблон - непосредственно значение по которому будем отбирать файлы.


[001.txt.md](cntx.ins.d/003.d/001.txt.md)



 <a id="073ce79431d7402eaea4fff9a5bfdf0b"></a>
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



 <a id="b0d77e33a6a0454f8d2ee211bf294703"></a>
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




