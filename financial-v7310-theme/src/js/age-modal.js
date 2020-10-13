AUI().use('cookie', 'aui-modal', function (A) {
    var hein_age = A.Cookie.get("hein_age");
    if (hein_age && hein_age == 'false') {
        var modal = new A.Modal({
            headerContent: A.one(".navbar-brand-footer").html(),
            bodyContent: '<h2>Lo siento, este sitio solo puede ser visitado por personas mayores de 18 años.</h2>',
            centered: true,
            modal: true,
            draggable: false,
            resizable: false,
            render: '#age-modal',
            width: 600,
            visible: true,
            toolbars: { body: [] }
        }).render(); 
    } 
    else if (!hein_age || (hein_age != 'false' && hein_age != 'true')) {
        var modal = new A.Modal({
            headerContent: A.one(".navbar-brand-footer").html(),
            bodyContent: '<h3>Bienvenid@</h3><h1>¿Eres mayor de edad?</h1>',
            footerContent: '<p>Confirma si tienes 18 años</p>',
            destroyOnHide: true,
            centered: true,
            modal: true,
            draggable: false,
            resizable: false,
            render: '#age-modal',
            width: 600,
            visible: true,
            toolbars: {
                body: [
                {
                    label: 'Si',
                    on: {
                        click: function() {
                            A.Cookie.set("hein_age", "true");
                            modal.hide();
                        }
                    }
                },
                {
                    label: 'No',
                    on: {
                        click: function() {
                            A.Cookie.set("hein_age", "false");
                            modal.set('bodyContent', "<h2>Lo siento, este sitio solo puede ser visitado por personas mayores de 18 años.</h2>");
                            modal.set('footerContent', '');
                        }
                    }
                }
                ]
            }
        }).render();
    }
});