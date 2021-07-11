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
    public partial class stadium : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gridLoad();
        }
        protected void insrtItem_Click(object sender, EventArgs e)
        {
            string StadiumNameValue = StadiumName.Text.ToString();
            string StadiumCityValue = StadiumCity.Text.ToString();
            string StadiumCountryValue = StadiumCountry.Text.ToString();
            string StadiumAddressValue = StadiumAddress.Text.ToString();
            int StadiumCapacityValue = Convert.ToInt32(StadiumCapacity.Text.ToString());
            var message = "" ;  
            if (CheckBox1.Checked)  
            {  
                message = CheckBox1.Text+" ";  
            }  

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.insertStadium(StadiumNameValue, StadiumCityValue, StadiumCountryValue, StadiumAddressValue, StadiumCapacityValue, message);

        }

        protected void Search_Button_Click(object sender, EventArgs e)
        {

            String Name = TextBox1.Text;
            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            int found;

            found = objMyDal.SearchStadium(Name, ref DT);

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

        protected void ItemGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            myDAL objMyDal = new myDAL();
            GridViewRow row = ItemGrid.Rows[e.RowIndex];
            // int ItemID = Convert.ToInt32(row.Cells[2].Text.ToString());
            Label itemNo = (Label)ItemGrid.Rows[e.RowIndex].FindControl("lblStadiumName");
            string ItemID = itemNo.Text.ToString();
            int result = objMyDal.DeleteStadium(ItemID);
            if (result == -1)
            {
                ItemGrid.DataSource = objMyDal.SelectStadium();
                ItemGrid.DataBind();
            }
            else
            {
                string message = "No row deleted";
                ClientScript.RegisterOnSubmitStatement(this.GetType(), "alert",

                message.ToString());
            }

        }

        public void gridLoad()
        {
            
            myDAL objMyDal = new myDAL();
            ItemGrid.DataSource = objMyDal.SelectStadium();//seting data source for this Grid
            ItemGrid.DataBind(); //bind the data source to this grid
        }

        public void LoadGrid()
        {
            String Name = TextBox1.Text;
            DataTable DT = new DataTable();

            myDAL objMyDal = new myDAL();

            int found;

            found = objMyDal.SearchStadium(Name, ref DT);

            if (found > 0)
            {
                ItemGrid.DataSource = DT;
                ItemGrid.DataBind();
                message.InnerHtml = Convert.ToString("Following Items Found");
            }
            else
            {
                message.InnerHtml = Convert.ToString("Item Not Found");
                ItemGrid.DataSource = null;
                ItemGrid.DataBind();
            }


            //myDAL objMyDal = new myDAL();
            //ItemGrid.DataSource = objMyDal.SelectItem();//seting data source for this Grid
            //ItemGrid.DataBind(); //bind the data source to this grid
        }

        protected void ItemGrid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            ItemGrid.EditIndex = e.NewEditIndex;
            LoadGrid();
        }

        protected void ItemGrid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)ItemGrid.Rows[e.RowIndex];
            //==== getting the value from the respective controls=====
           // Label itemNo = (Label)ItemGrid.Rows[e.RowIndex].FindControl("txtItemNo");
            TextBox StadiumName = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtStadiumName");
            TextBox StadiumCapacity = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtStadiumCapacity");
            TextBox StadiumAddress = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtStadiumAddress");
            TextBox StadiumCity = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtStadiumCity");
            TextBox StadiumCountry = (TextBox)ItemGrid.Rows[e.RowIndex].FindControl("txtStadiumCountry");
            CheckBox StadiumFloodLights = (CheckBox)ItemGrid.Rows[e.RowIndex].FindControl("StadiumFloodLights");
            
            string StadiumNameValue = StadiumName.Text.ToString();
            string StadiumCityValue = StadiumCity.Text.ToString();
            string StadiumCountryValue = StadiumCountry.Text.ToString();
            string StadiumAddressValue = StadiumAddress.Text.ToString();
            int StadiumCapacityValue = Convert.ToInt32(StadiumCapacity.Text.ToString());
            var message = "";
            if (StadiumFloodLights.Checked)
            {
                message = CheckBox1.Text + " ";
            }

            //=====updating the newly entered values in database====
            myDAL objMyDal = new myDAL();
            objMyDal.UpdateStadium(StadiumNameValue, StadiumCityValue, StadiumCountryValue, StadiumAddressValue, StadiumCapacityValue, message);
            
            //======================================================
            ItemGrid.EditIndex = -1;
            LoadGrid();


        }

        protected void ItemGrid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            ItemGrid.EditIndex = -1;
            LoadGrid();

        }//end of function



    }
}