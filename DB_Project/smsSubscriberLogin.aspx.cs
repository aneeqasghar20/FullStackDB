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
    public partial class smsSubscriberLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Search_Button_Clickk(object sender, EventArgs e)
        {

            String name = TxtItmNo.Text;
            
            DataTable DT = new DataTable();
            DataTable DTT = new DataTable();
            String phoneNo = TextBox11.Text;
            myDAL objMyDal = new myDAL();

            int found, foundd;
           
            found = objMyDal.SearchSMSName(name, ref DT);
            foundd = objMyDal.SearchSMSPW(phoneNo, ref DTT);
            //string pw = "aneeq";
            if (found > 0 || foundd > 0)
            {
              //  if (passwordd == pw)
                    HttpContext.Current.Response.Redirect("smsSubscriber/home.aspx");

            }
            else
            {

                TextBox11.BackColor = System.Drawing.Color.Red;
                TxtItmNo.BackColor = System.Drawing.Color.Red;

            }



        }//end of function

        protected void Sign_up(object sender, EventArgs e)
        {
            String name = TextBox2.Text;
            String lname = TextBox1.Text;
            String phoneNo = TextBox3.Text;

            DataTable DT = new DataTable();
            string namev = name.ToString();
            string phoneNov = phoneNo.ToString();
            int idv = Convert.ToInt32(TextBox4.Text.ToString());
            string lnamev = lname.ToString();

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insertSMSSubscriber(idv, namev, lnamev,phoneNov);

        }//end of function
    }
}