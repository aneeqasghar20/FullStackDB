using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DB_Project.DAL;
using System.Data;
namespace DB_Project
{
    public partial class normalUserLogin : System.Web.UI.Page
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

            int found, foundd;
            // var pw="ali"
            found = objMyDal.SearchUseremail(email, ref DT);
            foundd = objMyDal.Searchpassword(passwordd, ref DTT);
            string pw = "aneeq";
            if (found > 0 || foundd > 0)
            {
                if(passwordd == pw)
                HttpContext.Current.Response.Redirect("normalUser/home.aspx");

            }
            else
            {

                TextBox11.BackColor = System.Drawing.Color.Red;
                TxtItmNo.BackColor = System.Drawing.Color.Red;

            }



        }//end of function

        protected void Sign_up(object sender, EventArgs e)
        {
            String name = TextBox1.Text;
            String lname = TextBox4.Text;
            String email = TextBox2.Text;
            String pw = TextBox3.Text;
            
            DataTable DT = new DataTable();
            string namev = name.ToString();
            string emailv = email.ToString();
            string pwv = pw.ToString();
            int idv = Convert.ToInt32(TextBox5.Text.ToString());
            string lnamev = pw.ToString();
            
            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insertUser(idv, namev,lnamev, emailv, pwv);

        }//end of function
    }
}