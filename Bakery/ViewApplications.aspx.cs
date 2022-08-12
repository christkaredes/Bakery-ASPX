using Bakery.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bakery
{
    public partial class ViewApplications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Takes data from DB...
            using (BakeryContext context = new BakeryContext())
            {
                List<Registration> registrations = context.Registrations.ToList();
                var query = context.Registrations.ToList();
                // ...and puts them into a table
                foreach (Registration r in registrations)
                {
                    litRegistrants.Text = litRegistrants.Text +
                        $"<tr>" +
                        $"<td id='hello'>{r.FirstName}</td>" +
                        $"<td>{r.LastName}</td>" +
                        $"<td>{r.PhoneNumber}</td>" +
                        $"<td>{String.Format("{0:C}", r.Total)}</td>" +
                        $"<td>{r.YellowCakeQuant}</td>" +
                        $"<td>{r.ChocolateCakeQuant}</td>" +
                        $"<td>{r.SaltedPretzelQuant}</td>" +
                        $"<td>{r.UnsaltedPretzelQuant}</td>" +
                        $"<td>{r.OatmealCookieQuant}</td>" +
                        $"<td>{r.ChocolateChipCookieQuant}</td>" +
                        $"<td>{r.RatingId}</td>" +
                        $"</tr>";
                }
            }
        }
        // If the text inside the boxes meet the conditions, then the panel vanishes
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                if (txtUsername.Text == "dave" && txtPassword.Text == "secret")
                {
                    pnlLogin.Visible = false;
                    pnlDatabase.Visible = true;
                    lblLoginError.Visible = true;
                }
                else
                {
                    lblLoginError.Visible = true;
                }
            }
        }
    }
}