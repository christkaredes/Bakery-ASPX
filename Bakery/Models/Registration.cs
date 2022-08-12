using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Bakery.Models
{
    public class Registration
    {
        // Data to be stored in the DB
        [Key]
        public int Id { get; set; }
        [Required]
        public string FirstName { get; set; }
        [Required]
        public string LastName { get; set; }
        [Required]
        public string PhoneNumber { get; set; }
        public double Total { get; set; }
        public double YellowCakeQuant { get; set; }
        public double ChocolateCakeQuant { get; set; }
        public double SaltedPretzelQuant { get; set; }
        public double UnsaltedPretzelQuant { get; set; }
        public double OatmealCookieQuant { get; set; }
        public double ChocolateChipCookieQuant { get; set; }
        public int RatingId { get; set; }
    }
}