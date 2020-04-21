const selectTranch = () => {
    const tranches = document.querySelectorAll('.ct-tranche');
    console.log(tranches);

    const offeredValue = document.querySelector('#transaction_offered_value');
    console.log(offeredValue);

    var initValue = 0;
    console.log(initValue);

    tranches.forEach((tranche) => {
        tranche.addEventListener('click', (event) => {
            console.log(tranche);
            tranche.classList.toggle('selected');
            if (tranche.classList.contains('selected')) {
                initValue += parseInt(tranche.getAttribute('value'));
            } else {
                initValue -= parseInt(tranche.getAttribute('value'));
            }
            offeredValue.value = initValue;
        });
    });
};

export { selectTranch };