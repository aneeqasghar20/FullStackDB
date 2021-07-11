using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;  //new command
using System.Data.SqlClient; //new command

namespace DB_Project.DAL
{
    public class myDAL
    {
        private static readonly string connString =
        System.Configuration.ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString;

        public int insertStadium(string StadiumNameValue, string StadiumCityValue, string StadiumCountryValue, string StadiumAddressValue, int StadiumCapacityValue, string message )
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("InsertStadium", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = StadiumNameValue;
                cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = StadiumCityValue;
                cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = StadiumCountryValue;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = StadiumAddressValue;

                cmd.Parameters.Add("@capacity", SqlDbType.Int).Value = StadiumCapacityValue;
                cmd.Parameters.Add("@floodLights", SqlDbType.VarChar).Value = message;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return result;
        }//end of insert function

        public int SearchStadium(String Name, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("searchstadium ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@Name"].Value = Name;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }

        public int DeleteStadium(string id)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("deleteStadium", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = id;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();

            }

            return result;
        }


        public DataSet SelectStadium() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select name,capacity,addresss,city,country,floodLights from Stadium", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }

        public int UpdateStadium(string StadiumNameValue, string StadiumCityValue, string StadiumCountryValue, string StadiumAddressValue, int StadiumCapacityValue, string message )
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("UpdateStadium", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = StadiumNameValue;
                cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = StadiumCityValue;
                cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = StadiumCountryValue;
                cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = StadiumAddressValue;

                cmd.Parameters.Add("@capacity", SqlDbType.Int).Value = StadiumCapacityValue;
                cmd.Parameters.Add("@floodLights", SqlDbType.VarChar).Value = message;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return result;
        }

        //---------------------------------------------------------------------------
        // AUTHENTICATION ADMIN
        //---------------------------------------------------------------------------

        public int SearchEmail(string Name, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchEmail", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 100);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@email"].Value = Name;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }


        public int Searchpass(string Namee, ref DataTable DT)
        {

            int Foundd = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchPassword", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@passwordd", SqlDbType.VarChar, 100);
                cmd.Parameters.Add("@Foundd", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@passwordd"].Value = Namee;


                cmd.ExecuteNonQuery();

                // read output value 
                Foundd = Convert.ToInt32(cmd.Parameters["@Foundd"].Value); //convert to output parameter to interger format

                if (Foundd == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Foundd;

        }
        
        public int SearchAuth(string email, string passwordd, ref DataTable DT)
        {
            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchAuthentication", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 100);
                cmd.Parameters.Add("@passwordd", SqlDbType.VarChar, 100);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@email"].Value = email;
                cmd.Parameters["@passwordd"].Value = passwordd;



                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }

        public int SearchUseremail(string email, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchUserEmail", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@email", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@email"].Value = email;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }

        public int Searchpassword(string passwordd, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchNormalUserpw", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@passwordd", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@passwordd"].Value = passwordd;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }

        public int insertUser(int idv, string namev,string lnamev, string emailv, string pwv)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("InsertUSER", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fname", SqlDbType.VarChar).Value = namev;
                cmd.Parameters.Add("@lname", SqlDbType.VarChar).Value = lnamev;
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = idv;

                cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = emailv;
                cmd.Parameters.Add("@passwordd", SqlDbType.VarChar).Value = pwv;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return result;
        }//end of insert function

        ////////////////////

        public int insertEnclosure(int EnclosureIDValue,string StadiumNameValue, string EnclosureNameValue, string EnclosureCapacityValue, string EnclosureSizeValue)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("InsertEnclosure", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@enclosure_id", SqlDbType.Int).Value = EnclosureIDValue;
                cmd.Parameters.Add("@stadium_name", SqlDbType.VarChar).Value = StadiumNameValue;
                cmd.Parameters.Add("@enclosure_name", SqlDbType.VarChar).Value = EnclosureNameValue;
                cmd.Parameters.Add("@capacity", SqlDbType.VarChar).Value = EnclosureCapacityValue;
                cmd.Parameters.Add("@size", SqlDbType.VarChar).Value = EnclosureSizeValue;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return result;
        }//end of insert function


        
        public int SearchEnclosure(String Name, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("searchenclosure ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@stadium_name", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@stadium_name"].Value = Name;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }

      
        
        public DataSet SelectEnclosure() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select size,capacity,stadium_name,enclosure_name from Enclosure", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }
        /////////////////////////////////////////////////////////
        public int insertCBO( string CBOFNameValue, string CBOLNameValue, string CBOQualificationValue, int experienceyrsValue)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("InsertCBO", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@fname", SqlDbType.VarChar).Value = CBOFNameValue;
                cmd.Parameters.Add("@lname", SqlDbType.VarChar).Value = CBOLNameValue;

                cmd.Parameters.Add("@qualification", SqlDbType.VarChar).Value = CBOQualificationValue;

                cmd.Parameters.Add("@experience_yrs", SqlDbType.Int).Value = experienceyrsValue;

                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return result;
        }//end of insert function

        public int SearchCBO(String Name, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("searchCBO ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 25);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@fname"].Value = Name;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }


        public DataSet SelectCBO() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select CBO_id,fname,experience_yrs,qualification from CricketBoardOfficial", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }

        public int SearchMatch(String Name, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("searchMatch ", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@opposition1", SqlDbType.VarChar, 50);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@opposition1"].Value = Name;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }


        public DataSet SelectMatch() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select opposition1,opposition2,timee,datee from Match", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }

        public DataSet SelectExpenses() //to get the values of all the items from table Items and return the Dataset
        {

            DataSet ds = new DataSet(); //declare and instantiate new dataset
            SqlConnection con = new SqlConnection(connString); //declare and instantiate new SQL connection
            con.Open(); // open sql Connection
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select * from Expenses", con);  //instantiate SQL command 
                cmd.CommandType = CommandType.Text; //set type of sqL Command
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds); //Add the result  set  returned from SQLCommand to ds
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return ds; //return the dataset
        }

        public int SearchSMSName(string name, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchSMSName", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@fname", SqlDbType.VarChar, 15);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@fname"].Value = name;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }


        public int SearchSMSPW(string phoneNo, ref DataTable DT)
        {

            int Found = 0;
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SearchSMSPW", con); //name of your procedure
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@phone_no", SqlDbType.VarChar, 20);
                cmd.Parameters.Add("@Found", SqlDbType.Int).Direction = ParameterDirection.Output;

                // set parameter values
                cmd.Parameters["@phone_no"].Value = phoneNo;


                cmd.ExecuteNonQuery();

                // read output value 
                Found = Convert.ToInt32(cmd.Parameters["@Found"].Value); //convert to output parameter to interger format

                if (Found == 1)
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(ds);

                    }

                    DT = ds.Tables[0];

                }


                con.Close();


            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());

            }
            finally
            {
                con.Close();
            }

            return Found;

        }

        public int insertSMSSubscriber(int idv, string namev,string lnamev, string phoneNov)
        {
            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd;
            int result = 0;
            try
            {
                cmd = new SqlCommand("InsertSMSSubscriber", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@fname", SqlDbType.VarChar).Value = namev;
                cmd.Parameters.Add("@lname", SqlDbType.VarChar).Value = lnamev;
                cmd.Parameters.Add("@subscriber_id", SqlDbType.Int).Value = idv;

                cmd.Parameters.Add("@phone_no", SqlDbType.VarChar).Value = phoneNov;
                result = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error" + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }

            return result;
        }//end of insert function

    }
}