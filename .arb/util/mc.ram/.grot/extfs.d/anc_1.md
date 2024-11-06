# anc https://unixforum.org/viewtopic.php?t=153269

Как лучше подправить /lib/mc/extfs.d/urar для 6-й версии unrar?
Сообщение MiK13 » 16.12.2021 11:37

Столкнулся с проблемой: mc не хочет "входит" в RARовские архивы. Дома "входит". Система одинаковая -- Debian 11 Bullseye.
Стал разбираться. И в файле /lib/mc/extfs.d/urar нашёл функцию
Код: Выделить всё

mcrarfs_list ()
{
    [ x$UNRAR_VERSION = x5 ] && mcrar5fs_list "$@" || mcrar4fs_list "$@"
}
Отладочная печать показала, что UNRAR_VERSION=6. То есть анализ будет функцией mcrar4fs_list
Заменил эту строку на
Код: Выделить всё

    case "$UNRAR_VERSION" in
        6) mcrar5fs_list "$@" ;;
        5) mcrar5fs_list "$@" ;;
        *) mcrar4fs_list "$@" ;;
    esac
Стало работать.
Но, может быть, есть какой-то более оптимальный способ?