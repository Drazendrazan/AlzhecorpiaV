'use strict';

var menuItems = [
    {
        id   : 'deployramp',
        title: 'Deploy Ramp',
    },
    {
        id   : 'detach',
        title: 'Detach',
    },
    {
        id   : 'ramprm',
        title: 'Ramprm',
    },
    {
        id   : 'attach',
        title: 'Attach',
    },
];

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
window.onload = function () {
    var svgMenu = new RadialMenu({
        parent      : document.body,
        size        : 400,
        closeOnClick: false,
        menuItems   : menuItems,
        onClick     : function (item) {
            NUIcommand(item.id);
        }
    });


    window.addEventListener('message', (event) => {
        if (event.data.type === 'open') {
            svgMenu.open();
        }
    });

};


function NUIclose() {
    fetch(`https://${GetParentResourceName()}/close`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify({
            itemId: 'close'
        })
    }).then(resp => resp.json());
}

function NUIcommand(commandString) {
    fetch(`https://${GetParentResourceName()}/command`, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json; charset=UTF-8',
        },
        body: JSON.stringify({
            itemId: commandString
        })
    }).then(resp => resp.json());
}