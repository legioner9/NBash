'use strict';

(function() {
    var isDark = Cookies.get('theme') !== 'light';
    document.documentElement.setAttribute('data-bs-theme', isDark ? 'dark' : 'light');
})();
