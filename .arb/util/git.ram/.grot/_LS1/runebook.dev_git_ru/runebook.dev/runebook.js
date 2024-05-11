'use strict';


$(function () {
    var isDark = Cookies.get('theme') !== 'light';
    var $switch = $('#theme-switch');
    $switch.attr('checked', isDark)
    $switch.on('click', function () {
        toggleTheme();
    })
});

function toggleTheme() {
    var $html = $('html');
    var theme = $html.attr('data-bs-theme').includes('dark') ? 'light' : 'dark';
    $html.attr('data-bs-theme', theme);
    Cookies.set('theme', theme, {
        path: '/',
        expires: 365 * 10,
        sameSite: 'None',
        secure: true
    });
}

// Copy Button
$(function () {
    $('pre').append('<button class="btn btn-dark btn-sm copy-button"  data-bs-toggle="tooltip" data-bs-title="Copy to clipboard"><i class="bi bi-clipboard"></i></button>');
    var buttons = $('button.copy-button');

    buttons.each(function (i, element) {
        bootstrap.Tooltip.getOrCreateInstance(element); 
    });

    buttons.on('click', function (event) {
        var tooltip = bootstrap.Tooltip.getOrCreateInstance(this); 
        var $btn = $(this);
        var code = event.currentTarget.closest('pre');
        if (navigator.clipboard && code) {
            navigator.clipboard.writeText(code.textContent).then(function () {
                tooltip.setContent({ '.tooltip-inner': 'Copied!' });
                tooltip.show();
                $btn.html('<i class="bi bi-check-lg"></i>').removeClass('btn-dark').addClass('btn-success');
                setTimeout(function () {
                    $btn.html('<i class="bi bi-clipboard"></i>').removeClass('btn-success').addClass('btn-dark');
                    tooltip.hide();
                    tooltip.setContent({ '.tooltip-inner': 'Copy to clipboard' });
                }, 2000);
            });
        }
    });
});

var popoverSubject = new rxjs.Subject();
var popover;
var isEnablePopup = JSON.parse(Cookies.get('isEnablePopup') ?? 'true');
setEnablePopup(isEnablePopup);

$(function () {
    $('#showPopupButton').on('click', function () {
        setEnablePopup(!isEnablePopup);
    });

    var searchInput = document.getElementById('q');

    if (searchInput) {
        var url = new URL(location.href);
        var q = url.searchParams.get('q');

        if (q) {
            $(searchInput).val(q);
            executeSearch();
        }
    }

    if ($('html').attr('lang') !== 'en') {
        popoverSubject.pipe(
            rxjs.operators.distinctUntilChanged(),
            rxjs.operators.filter(function (element) {
                return element !== null;
            }),
            rxjs.operators.debounceTime(1500),
            rxjs.operators.filter(function () {
                return isEnablePopup;
            })
        ).subscribe(function (element) {
            if (element) {
                showPopover(element);
            } else {
                hidePopover();
            }
        });
    }

    $('body').on('click', function () {
        hidePopover();
    })
});

function setEnablePopup(value) {
    if (value) {
        enablePopup();
    } else {
        disablePopup();
    }
}

function enablePopup() {
    isEnablePopup = true;
    setPopupCookie();
    $('#showPopupButton')
        .removeClass('btn-outline-danger')
        .addClass('btn-success');
}

function disablePopup() {
    isEnablePopup = false;
    setPopupCookie();
    $('#showPopupButton')
        .removeClass('btn-success')
        .addClass('btn-outline-danger');
}

function setPopupCookie() {
    Cookies.set('isEnablePopup', JSON.stringify(isEnablePopup), {
        path: '/',
        expires: 365,
        sameSite: 'None',
        secure: true
    });
}

function i18n(element) {
    popoverSubject.next(element);
}

function showPopover(target) {
    hidePopover();
    var language = $('html').attr('lang');
    var doc = $('head meta[name="x-i18n-doc"]').attr('content');
    var $target = $(target);
    var tuId = $target.attr('data-i18n');
    var sourceText = getSourceText(target);
    var targetText = getTargetText(target);
    var githubUrl = $('head meta[name="x-github"]').attr('content');

    var feedbackUrl = githubUrl + '/issues/new?' + $.param({
        'template': 'translate.md',
        'title': language + '/' + doc + '/' + tuId,
        'body': '> ' + sourceText + '\r\r' + targetText,
        'labels': ['translate'].join(',')
    });

    var feedbackButton = 'Feedback';

    // switch (language) {
    //     case 'ja':
    //         feedbackButton = '翻訳を改善';
    //         break;
    // }

    $target.on('shown.bs.popover', function () {
        $target.addClass('bg-success text-white rounded');
    }).on('hidden.bs.popover', function () {
        $target.removeClass('bg-success text-white rounded');
    });

    popover = new bootstrap.Popover($target, {
        // 'offset': 200,
        // 'container': container,
        boundary: 'main',
        placement: 'auto',
        html: true,
        sanitize: false,
        trigger: 'focus',
        title: 'English',
        content: sourceText + '<br><br><div class="d-flex justify-content-between"><a class="btn btn-primary btn-sm me-2 na" target="_blank" href="' + feedbackUrl + '"><i class="bi bi-translate"></i> ' + feedbackButton + '</a><a class="btn btn-secondary btn-sm" href="javascript:void(0);" onclick="disablePopup()">Hide</a></div>',
        template: '<div class="popover shadow-lg bg-body-secondary border-primary" role="tooltip"><div class="popover-arrow"></div><h3 class="popover-header bg-primary"></h3><div class="popover-body"></div></div>'
    });

    popover.show();
}

function hidePopover() {
    if (popover) {
        popover.hide();
        popover = undefined;
        // popoverSubject.next(null);
    }

    // $('.popover').each(function () {
    //     $(this).popover('hide');
    // });
}

function getSourceText(target) {
    var markup = $(target).data('source');
    return markup.trim();
}

function getTargetText(target) {
    var markup = $(target).html();
    return markup.trim();
}

function executeSearch() {
    var keywords = $('#q').val()
        .toLowerCase()
        .trim()
        .split(/\s+/)
        .map(function (s) {
            return s.trim();
        })
        .filter(function (s) {
            return s.length > 0;
        });

    var $entryGroupList = $('#entries div.entry-group');
    $entryGroupList.unmark();

    if (keywords.length === 0) {
        $entryGroupList.find('li').show();
        $entryGroupList.show();
        return;
    }

    $entryGroupList.each(function (index, entryGroupElement) {
        var $entryGroup = $(entryGroupElement);
        var $items = $entryGroup.find('li');
        var isEntryGroupShow = false;

        $items.each(function (itemIndex, itemElement) {
            var $item = $(itemElement);
            var $title = $item.find('a[title]');
            var target = ($item.text().trim() + ' ' + ($title.attr('title') || '').trim()).toLowerCase().trim();
            var hits = 0;

            for (var keywordIndex = 0; keywordIndex < keywords.length; keywordIndex++) {
                var keyword = keywords[keywordIndex];
                if (target.indexOf(keyword) !== -1) {
                    hits++;
                    $item.mark(keyword);
                }
            }

            if (hits >= keywords.length) {
                $item.show();
                isEntryGroupShow = true;
            } else {
                $item.hide();
            }
        })

        if (isEntryGroupShow) {
            $entryGroup.show();
        } else {
            $entryGroup.hide();
        }
    });
}
