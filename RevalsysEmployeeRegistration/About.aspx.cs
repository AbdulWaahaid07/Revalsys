using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RevalsysEmployeeRegistration.RevException;

namespace RevalsysEmployeeRegistration
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var er = new Exceptionr();

            //Logging in error either on a DB, Textfile or review it
            errorr.Text = er.OccuringException;
            stackr.Text = er.Stackerror;
        }
    }
}