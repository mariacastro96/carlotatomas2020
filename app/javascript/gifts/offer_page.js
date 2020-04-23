function selectTranch() {
    window.addEventListener('turbolinks:load', (_event) => {
        const tranches = document.querySelectorAll('.ct-tranche');

        const offeredValue = document.querySelector('#transaction_offered_value');

        const button = document.querySelector('#ct-submit-btn');

        var initValue = 0;


        tranches.forEach((tranche) => {
            button.disabled = true
            tranche.addEventListener('click', (event) => {
                button.disabled = false
                tranche.classList.toggle('selected');
                if (tranche.classList.contains('selected')) {
                    initValue += parseInt(tranche.getAttribute('value'));
                } else {
                    initValue -= parseInt(tranche.getAttribute('value'));
                }
                offeredValue.value = initValue;
            });
        });
    });
};

function unblockConfirmButton() {
    window.addEventListener('turbolinks:load', (_event) => {
        const tranches = document.querySelectorAll('.ct-tranche');
        const button = document.querySelector('#ct-submit-btn');

        if (Array.from(tranches).some(({ classList }) => classList.contains('selected'))) {
            button.disabled = true
        } else {
            button.disabled = false
        }
    });
};



export { selectTranch };
export { unblockConfirmButton };