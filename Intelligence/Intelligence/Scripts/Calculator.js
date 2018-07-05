"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Calculator;
(function (Calculator) {
    function bindEvents() {
        calculate();
        setupClickableLabels();
    }
    Calculator.bindEvents = bindEvents;
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
        $("#HasAdditionsAtStartLabel").on("click", function () {
            //$('#HasAdditionsAtEnd').prop('checked', false);
            $('#HasAdditionsAtStart').val("True");
        });
        $("#HasAdditionsAtEndLabel").on("click", function () {
            console.log("helloworld");
            $('#HasAdditionsAtStart').val("False");
            //$('#HasAdditionsAtStart').prop('checked', false);
        });
    }
})(Calculator = exports.Calculator || (exports.Calculator = {}));
//# sourceMappingURL=Calculator.js.map