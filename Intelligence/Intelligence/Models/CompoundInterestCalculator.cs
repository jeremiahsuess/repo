using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Intelligence.Models
{
    public class CompoundInterestCalculator
    {
        /// <summary>
        /// The amount of the value at the start of the compounding period
        /// </summary>
        public decimal CurrentPrincipal { get; set; }

        /// <summary>
        /// The amount the user would like added each year to the principal
        /// </summary>
        public decimal AnnualAddition { get; set; }

        /// <summary>
        /// The number of years for the principal to be calculated with
        /// plus annual additions for each year added
        /// </summary>
        public decimal YearsToGrow { get; set; }

        /// <summary>
        /// The interest rate for the calulation
        /// </summary>
        public decimal InterestRate { get; set; }

        /// <summary>
        /// Compound interest (x) time(s) annually
        /// </summary>
        public int AnnualCompoundingsAmount { get; set; }

        /// <summary>
        /// Make additions at the start or end of each compounding period
        /// </summary>
        public bool HasAdditionsAtStart { get; set; }

        /// <summary>
        /// The final value after running the calulation
        /// </summary>
        public decimal FutureValue { get; set; }
    }
}