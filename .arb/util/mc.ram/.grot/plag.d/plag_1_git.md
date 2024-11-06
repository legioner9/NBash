# anc https://habr.com/ru/articles/86756/

## files
~/.mc/bindings
~/.mc/extfs.d

Для того чтобы любые панельные плагины подключились 
к mc, достаточно положить их в домашний каталог миднайт 
коммандера ~/.mc/extfs.d. Для того чтобы вызывался плагин 
gitlogfs при нажатии на любой файл, начинающийся с префикса 
(git) необходимо в файле ~/.mc/bindings добавить описание 
данного типа файла, примерно так:

    regex/^\(git\)
    	    Open=%cd %p#gitlogfs
    	    
### 

Панельный плагин gitlogfs

Мне хотелось не только производить навигацию по репозитарию, 
но так-же иметь возможность получать файлы любой ревизии. 
Для этого был написан плагин gitlogfs

```bash
#!/bin/sh
 
LANG=C
 
changesetfs_list()
{
    DATE=`date +"%b %d %H:%M"`
    GIT_DIR=`head -n1 $2`".git"
    fname=`tail -n1 $2`
    USER=`whoami`
    git log --abbrev=7 --pretty="format:%at %h %an" "$fname" | while read chset
    do
        TIMESTAMP=`echo $chset| cut -f1 -d" "`
        DATE=`date -d @"$TIMESTAMP" +"%b %d %H:%M"`
        NAME=`echo $chset| cut -f2 -d" "`" "`basename $fname`
        echo "-rw-rw-rw-   1 $USER    0 0 $DATE  $NAME"
    done
 
}
 
changesetfs_copyout()
{
    GIT_DIR=`head -n1 $2`".git"
    fname=`tail -n1 $2`
    chset=`echo "$3"| cut -f 1 -d " "`
    filecommit=`git show --raw --pretty=tformat:%h "$chset" "$fname"|grep ^:|grep ...|cut -f3 -d " "|cut -f1 -d "."`
    git show "$filecommit" > "$4"
}
 
case "$1" in
  list) changesetfs_list "$@"; exit 0;;
  copyout) changesetfs_copyout "$@"; exit 0;;
esac
exit 1
```