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
    public partial class match : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }
        protected void Search_Button_Click(object sender, EventArgs e)
        {

            String Name = TextBox1.Text;
            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            int found;

            found = objMyDal.SearchMatch(Name, ref DT);

            if (found > 0)
            {
                ItemGrid.DataSource = DT;
                ItemGrid.DataBind();
                message.InnerHtml = Convert.ToString("Following Stadium Found");
            }
            else
            {
                message.InnerHtml = Convert.ToString("Stadium Not Found");
                ItemGrid.DataSource = null;
                ItemGrid.DataBind();
            }



        }

        public void LoadGrid()
        {
          
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.SelectMatch();//seting data source for this Grid
            ItemGrid.DataBind(); //bind the data source to this grid
        }

    }
}