using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication1
{
    public partial class Packages : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static string global_filepath;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillCompanyNameValues();
            }
            GridView1.DataBind();
        }
        //go button click
        protected void Button7_Click(object sender, EventArgs e)
        {
            getPackageByID();
        }
        //add button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkIfPackageExists())
            {
                Response.Write("<script>alert('Package already Exists.');</script>");
            }
            else
            {
                addNewPackage();
            }

        }
        //update button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            updatePackageByID();
        }
        //delete button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            deletePackageByID();
        }

        //user defined functions

        void deletePackageByID()
        {
            if (checkIfPackageExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE FROM package_master_tbl WHERE package_id='" + TextBox1.Text.Trim() + "' ", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Package Deleted Successfully');</script>");
                    
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }
        
        void updatePackageByID()
        {
            if (checkIfPackageExists())
            {
                try
                {
                    string filepath = "~/img_inventory/Package1.png";
                    string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    if (filename == "" || filename == null)
                    {
                        filepath = global_filepath;
                    }
                    else 
                    {
                        FileUpload1.SaveAs(Server.MapPath("img_inventory/" + filename));
                        filepath = "~/img_inventory/" + filename;
                    }

                    

                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE package_master_tbl SET package_date=@package_date,company_name=@company_name,package_description=@package_description,img_link=@img_link,package_cost=@package_cost WHERE package_id ='" + TextBox1.Text.Trim() + "' ", con);

                    cmd.Parameters.AddWithValue("@package_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@package_date", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@company_name", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@package_description", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@img_link", filepath);
                    cmd.Parameters.AddWithValue("@package_cost", TextBox8.Text.Trim());


                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Package Updated Successfully');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Package ID');</script>");
            }
        }


        void getPackageByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from package_master_tbl WHERE package_id='"+TextBox1.Text.Trim()+"' ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count>=1)
                {
                    TextBox3.Text = dt.Rows[0]["package_date"].ToString();
                    DropDownList1.SelectedValue = dt.Rows[0]["company_name"].ToString().Trim();
                    TextBox6.Text = dt.Rows[0]["package_description"].ToString();
                    TextBox8.Text = dt.Rows[0]["package_cost"].ToString();
                    global_filepath = dt.Rows[0]["img_link"].ToString() ;
                }
                else
                {
                    Response.Write("<script>alert('Invalid Package ID');</script>");
                }
            }
            catch (Exception ex)
            {
            }

        }

        void fillCompanyNameValues()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT company_name from company_master_tbl ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                DropDownList1.DataSource = dt;
                DropDownList1.DataValueField = "company_name";
                DropDownList1.DataBind();

            }
            catch (Exception ex)  
            { 
            }
        }

        bool checkIfPackageExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from package_master_tbl where package_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
          

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void addNewPackage()
        {
            try
            {
                string filepath = "~/img_inventory/Package1.png";
                string filename=Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("img_inventory/" + filename));
                filepath = "~/img_inventory/" + filename;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }

                SqlCommand cmd = new SqlCommand("INSERT into package_master_tbl(package_id,package_date,company_name,package_description,img_link,package_cost) values (@package_id,@package_date,@company_name,@package_description,@img_link,@package_cost)", con);

                cmd.Parameters.AddWithValue("@package_id",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@package_date", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@company_name",DropDownList1.SelectedItem.Value);            
                cmd.Parameters.AddWithValue("@package_description", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@img_link", filepath);
                cmd.Parameters.AddWithValue("@package_cost", TextBox8.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Package added successfully');</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        
    }
}