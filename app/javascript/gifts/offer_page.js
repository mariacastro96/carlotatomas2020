function selectTranch() {
    window.addEventListener('turbolinks:load', (_event) => {
        const tranches = document.querySelectorAll('.ct-tranche');

        const offeredValue = document.querySelector('#transaction_offered_value');

        var initValue = 0;


        tranches.forEach((tranche) => {
            tranche.addEventListener('click', (event) => {
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

export { selectTranch };