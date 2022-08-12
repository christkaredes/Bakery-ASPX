using System;
using Bakery.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class index : System.Web.UI.Page
    {
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            double _yellowCakeQuant = 0;
            double _chocolateCakeQuant = 0;
            double _saltedPretzelQuant = 0;
            double _unsaltedPretzelQuant = 0;
            double _oatmealCookieQuant = 0;
            double _chocolateChipCookieQuant = 0;

            double.TryParse(drpYellowCake.SelectedValue, out _yellowCakeQuant);
            double.TryParse(drpChocolateCake.SelectedValue, out _chocolateCakeQuant);
            double.TryParse(drpSaltedPretzel.SelectedValue, out _saltedPretzelQuant);
            double.TryParse(drpUnsaltedPretzel.SelectedValue, out _unsaltedPretzelQuant);
            double.TryParse(drpOatmealCookie.SelectedValue, out _oatmealCookieQuant);
            double.TryParse(drpChocolateChipCookie.SelectedValue, out _chocolateChipCookieQuant);

            double _yellowCakeTotal = (_yellowCakeQuant * 15);
            double _chocolateCakeTotal = (_chocolateCakeQuant * 10);
            double _saltedPretzelTotal = (_saltedPretzelQuant * 5);
            double _unsaltedPretzelTotal = (_unsaltedPretzelQuant * 4.50);
            double _oatmealCookieTotal = (_oatmealCookieQuant * 1);
            double _chocolatechipCookieTotal = (_chocolateChipCookieQuant * 2);

            double _total = (_yellowCakeTotal + _chocolateCakeTotal + _saltedPretzelTotal +
                             _unsaltedPretzelTotal + _oatmealCookieTotal + _chocolatechipCookieTotal);

            lblTotal.Text = String.Format("{0:C}", _total);

            if (Page.IsValid)
            {
                // Opens connection SQL server, interacts with DB, then closes
                using (BakeryContext context = new BakeryContext())
                {
                    Registration registration = new Registration();
                    registration.FirstName = txtFirstName.Text;
                    registration.LastName = txtLastName.Text;
                    registration.PhoneNumber = txtPhoneNumber.Text;
                    registration.Total = _total;
                    registration.YellowCakeQuant = double.Parse(drpYellowCake.SelectedValue);
                    registration.ChocolateCakeQuant = double.Parse(drpChocolateCake.SelectedValue);
                    registration.SaltedPretzelQuant = double.Parse(drpSaltedPretzel.SelectedValue);
                    registration.UnsaltedPretzelQuant = double.Parse(drpUnsaltedPretzel.SelectedValue);
                    registration.OatmealCookieQuant = double.Parse(drpOatmealCookie.SelectedValue);
                    registration.ChocolateChipCookieQuant = double.Parse(drpChocolateChipCookie.SelectedValue);
                    registration.RatingId = int.Parse(drpRating.SelectedValue);
                    context.Registrations.Add(registration);
                    context.SaveChanges();
                }
                // Summarizes user's answers on next panel
                pnlForm.Visible = false;
                pnlConfirm.Visible = true;
                
                lblFirstNameResults.Text = txtFirstName.Text;
                lblLastNameResults.Text = txtLastName.Text;
                lblPhoneNumberResults.Text = txtPhoneNumber.Text;
                lblYellowCakeResults.Text = drpYellowCake.Text;
                lblChocolateCakeResults.Text = drpChocolateCake.Text;
                lblSaltedPretzelResults.Text = drpSaltedPretzel.Text;
                lblUnsaltedPretzelResults.Text = drpUnsaltedPretzel.Text;
                lblOatmealCookieResults.Text = drpOatmealCookie.Text;
                lblChocolateChipCookieResults.Text = drpChocolateChipCookie.Text;
            }
        }

        protected void btnGetTotal_Click(object sender, EventArgs e)
        {
                double _yellowCakeQuant = 0;
                double _chocolateCakeQuant = 0;
                double _saltedPretzelQuant = 0;
                double _unsaltedPretzelQuant = 0;
                double _oatmealCookieQuant = 0;
                double _chocolateChipCookieQuant = 0;

                double.TryParse(drpYellowCake.SelectedValue, out _yellowCakeQuant);
                double.TryParse(drpChocolateCake.SelectedValue, out _chocolateCakeQuant);
                double.TryParse(drpSaltedPretzel.SelectedValue, out _saltedPretzelQuant);
                double.TryParse(drpUnsaltedPretzel.SelectedValue, out _unsaltedPretzelQuant);
                double.TryParse(drpOatmealCookie.SelectedValue, out _oatmealCookieQuant);
                double.TryParse(drpChocolateChipCookie.SelectedValue, out _chocolateChipCookieQuant);
                
                double _yellowCakeTotal = (_yellowCakeQuant * 15);
                double _chocolateCakeTotal = (_chocolateCakeQuant * 10);
                double _saltedPretzelTotal = (_saltedPretzelQuant * 5);
                double _unsaltedPretzelTotal = (_unsaltedPretzelQuant * 4.50);
                double _oatmealCookieTotal = (_oatmealCookieQuant * 1);
                double _chocolatechipCookieTotal = (_chocolateChipCookieQuant * 2);

                double _total = (_yellowCakeTotal + _chocolateCakeTotal + _saltedPretzelTotal + 
                                 _unsaltedPretzelTotal + _oatmealCookieTotal + _chocolatechipCookieTotal);

                lblTotal.Text = String.Format("{0:C}", _total);
                btnSubmit.Visible = true;
                lblYourTotalIs.Visible = true;
                lblTotal.Visible = true;
        }
    }
}