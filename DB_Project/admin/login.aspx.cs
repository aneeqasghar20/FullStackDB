using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Project.DAL;
using System.Data;
namespace DB_Project.admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Search_Button_Clickk(object sender, EventArgs e)
        {

            String email = TxtItmNo.Text;
            DataTable DT = new DataTable();
            DataTable DTT = new DataTable();
            String passwordd = TextBox11.Text;
            myDAL objMyDal = new myDAL();

            int found,foundd;

            found = objMyDal.SearchEmail(email,ref DT);
            foundd = objMyDal.Searchpass(passwordd, ref DTT);
            string adminpw = "admin";
                if (found>0 || foundd>0)
                {
                    if (passwordd == adminpw)
                        HttpContext.Current.Response.Redirect("home.aspx");

                }
                else
                {

                    TextBox11.BackColor = System.Drawing.Color.Red;
                    TxtItmNo.BackColor = System.Drawing.Color.Red;

                }
     


        }//end of function
    }
}