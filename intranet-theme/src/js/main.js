AUI().ready('event', 'node',function(A) {
    var body = A.one('body');
    var sm_trigger = A.one('.sidemenu-trigger');
    var sb_trigger = A.one('#nav-sidebar-trigger');
    var submenu_trigger = A.one('.has-submenu a');

    submenu_trigger.on('click', function(e) {
        e.preventDefault();
        $(this).parent().toggleClass('open');
    });

    sb_trigger.on('click', function(e) {
        e.preventDefault();
        $('#page-wrapper').toggleClass('sidebar-hidden');
        $("i", this).toggleClass("icon-arrow-right icon-arrow-left");
        $('.nav-buttons').toggleClass('active');
    });

    sm_trigger.on('click', function(e){
        e.preventDefault();
        body.toggleClass('sidemenu-is-closed');
    });
});