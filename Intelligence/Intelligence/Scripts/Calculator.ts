export namespace Calculator {

    export function bindEvents() {
        
        setupClickableLabels();
        calculateValueEvent();

    }

    function calculateValueEvent():void {
        $("#CurrentPrincipal,#AnnualAddition,#YearsToGrow,#InterestRate,#AnnualCompoundingsAmount,#HasAdditionsAtStart ")
            .on("input change",
                () => {
                    calculate();
                });
    }

    /**
     * This calculator calculates compound interest when the user
     * enters data into the fields
     */
    function calculate(): void {
        var currentPrincipal: number = parseNumber($("#CurrentPrincipal"));
        var annualAddition: number = parseNumber($("#AnnualAddition"));
        var yearsToGrow: number = parseNumber($("#YearsToGrow"));
        var interestRate: number = parseNumber($("#InterestRate"));
        var annualCompoundingsAmount: number = parseNumber($("#AnnualCompoundingsAmount"));
        var hasAdditionsAtStart: boolean = $("#HasAdditionsAtStart").val();
        var futureValue: number = 0;

        if (hasAdditionsAtStart) {
            // Beginning of the period
            // Balance(Y)   =   P(1 + r)Y   +   c[ ((1 + r)Y + 1 - (1 + r)) / r ]

            //futureValue = (currentPrincipal * Math.pow((1 + interestRate), yearsToGrow)) +
            //(annualAddition * (Math.pow((1 + interestRate), yearsToGrow) + 1) -
            //    (annualAddition * (1 + interestRate)) / interestRate);
            for (var i = 1; i <= 12; i++) {
                futureValue = (futureValue + currentPrincipal) * (1 + interestRate);
            }

        } else {
            // End of the period:

        }
        console.log(futureValue);
        $("#FutureValue").val(futureValue);
    }

    /**
     * Parses a numeric value using the value from a Jquery selector.
     * If the value is not a number, it will return 0.
     * @param $selector
     */
    function parseNumber($selector: JQuery): number {
        return isNaN($selector.val()) ? 0 : $selector.val();
        //TODO fix this to PARSEDOUBLE
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