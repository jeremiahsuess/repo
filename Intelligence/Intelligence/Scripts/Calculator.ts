export namespace Calculator {

    export function bindEvents() {

        calculate();
        setupClickableLabels();


    }


    /**
     * This calculator calculates compound interest when the user
     * enters data into the fields
     */
    function calculate() {



    }

    /**
     * When the "start" or "end" labels are clicked, it will set the
     * checkbox accordingly
     */
    function setupClickableLabels() {
        $("#HasAdditionsAtStartLabel").on("click",
            () => {
                //$('#HasAdditionsAtEnd').prop('checked', false);

                $('#HasAdditionsAtStart').val("True");
            });

        $("#HasAdditionsAtEndLabel").on("click",
            () => {
                console.log("helloworld");
                $('#HasAdditionsAtStart').val("False");
                //$('#HasAdditionsAtStart').prop('checked', false);
            });
    }




























}