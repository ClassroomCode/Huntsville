using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                NameTextBox.Text = string.Empty;
                GreetingLabel.Text = string.Empty;
                EmployeePanel.Visible= false;
            }
        }

        protected void ShowGreetingButton_Click(object sender, EventArgs e)
        {
            GreetingLabel.Text = $"Hello, {NameTextBox.Text}";
        }

        protected void ShowAddressCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            EmployeePanel.Visible = ShowAddressCheckBox.Checked;
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Save the employee
        }
    }
}