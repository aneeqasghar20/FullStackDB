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
    public partial class enclosure : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }
        protected void insrtItem_Click(object sender, EventArgs e)
        {
            int EnclosureIDValue = Convert.ToInt32(EnclosureID.Text.ToString());
            string StadiumNameValue = StadiumName.Text.ToString();
            string EnclosureNameValue = EnclosureName.Text.ToString();
            string EnclosureCapacityValue = EnclosureCapacity.Text.ToString();
            string EnclosureSizeValue = EnclosureSize.Text.ToString();
           
            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insertEnclosure(EnclosureIDValue,StadiumNameValue, EnclosureNameValue, EnclosureCapacityValue, EnclosureSizeValue);

        }

        protected void Search_Button_Click(object sender, EventArgs e)
        {

            String Name = TextBox1.Text;
            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            int found;

            found = objMyDal.SearchEnclosure(Name, ref DT);

            if (found > 0)
            {
                ItemGrid.DataSource = DT;
                ItemGrid.DataBind();
                message.InnerHtml = Convert.ToString("Following Enclosure Found");
            }
            else
            {
                message.InnerHtml = Convert.ToString("Enclosure not Found");
                ItemGrid.DataSource = null;
                ItemGrid.DataBind();
            }



        }

        public void LoadGrid()
        {
            

            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.SelectEnclosure();//seting data source for this Grid
            ItemGrid.DataBind(); //bind the data source to this grid
        }


    }
}