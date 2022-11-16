using ECommLib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsApp
{
    public partial class ProductsViaLib : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ErrorPanel.Visible = false;
        }

        protected void SupplierObjectDataSource_Selected(object sender, ObjectDataSourceStatusEventArgs e)
        {
            if (e.ReturnValue == null) { 
                DataPanel.Visible = false;
                ErrorPanel.Visible = true;
            }
        }
    }
}