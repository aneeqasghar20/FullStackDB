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
    public partial class official : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }
        protected void insrtItem_Click(object sender, EventArgs e)
        {
            string CBOFNameValue = CBOName.Text.ToString();
            string CBOLNameValue = CBOLName.Text.ToString();
            string CBOQualificationValue = CBOQualification.Text.ToString();
            int experienceyrsValue = Convert.ToInt32(experienceyrs.Text.ToString());
            

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insertCBO(CBOFNameValue,CBOLNameValue, CBOQualificationValue, experienceyrsValue);

        }

        protected void Search_Button_Click(object sender, EventArgs e)
        {

            String Name = TextBox1.Text;
            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            int found;

            found = objMyDal.SearchCBO(Name, ref DT);

            if (found > 0)
            {
                ItemGrid.DataSource = DT;
                ItemGrid.DataBind();
                message.InnerHtml = Convert.ToString("Following CBO Found");
            }
            else
            {
                message.InnerHtml = Convert.ToString("CBO Not Found");
                ItemGrid.DataSource = null;
                ItemGrid.DataBind();
            }



        }
        public void LoadGrid()
        {
            
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.SelectCBO();//seting data source for this Grid
            ItemGrid.DataBind(); //bind the data source to this grid
        }


    }
}