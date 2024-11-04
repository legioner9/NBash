# mc.menu

## Вот пример файла mc.menu:

        A       Сделать дамп текщего файла   
                od -c %f   
   
        B       Редактирование сообщения об ошибке и посылка его root'у   
                vi /tmp/mail.$$   
                mail -s "Midnight Commander bug" root < /tmp/mail.$$   
   
        M       Просмотр почты   
                emacs -f rmail   
   
         N      Просмотр новостей UseNet   
                emacs -f gnus   
   
        H       Вызвать гипертекстовый информационный вьюер   
                info   
   
        J       Рекурсивное копирование текущего каталога в другую панель   
                tar cf - . | (cd %D && tar xvpf -)   
   
        K       Создать файл-описание текущего каталога   
                echo -n "Name of distribution file: "   
                read tar   
                ln -s %d `dirname %d`/$tar   
                cd ..   
                tar cvhf ${tar}.tar $tar   
   
        = f *.tar.gz | f *.tgz & t n   
        X       Декомпрессировать tar файл   
                tar xzvf %f   