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
    public partial class adminPaackageViewing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridViewForMember();
            }
        }
        //go button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getNames();
        }
        //issue button
        protected void Button2_Click(object sender, EventArgs e)
        {



            if (checkIfPackageExists() && checkIfMemberExists())
            {
                if (checkIfIssueEntryExists())
                {
                    Response.Write("<script>alert('This member already has this package.');</script>");
                }
                else
                {
                    // Add member_name, package_name, phone_no to the query string
                    string memberName = TextBox3.Text.Trim();
                    string packageName = TextBox4.Text.Trim();
                    string phoneNo = TextBox7.Text.Trim();
                    string issueDate = TextBox5.Text.Trim();
                    string dueDate = TextBox6.Text.Trim();
                    string packagecost = TextBox8.Text.Trim();

                    Response.Redirect($"payment.aspx?member_id={TextBox2.Text.Trim()}&member_name={memberName}&package_id={TextBox1.Text.Trim()}&package_name={packageName}&phone_no={phoneNo}&issue_date={issueDate}&due_date={dueDate}&package_cost={packagecost}");

                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Package ID or Member ID');</script>");
            }
        }
        //delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfPackageExists() && checkIfMemberExists())
            {
                if (checkIfIssueEntryExists())
                {
                    deletePackage();

                }
                else
                {
                    Response.Write("<script>alert('This entry does not exist.');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Package ID or Member ID');</script>");
            }
        }

        //user defined function

        void deletePackage()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("Delete from package_issue_tbl WHERE package_id='" + TextBox1.Text.Trim() + "' AND member_id='" + TextBox2.Text.Trim() + "'", con);
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


        bool checkIfIssueEntryExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from package_issue_tbl WHERE package_id='" + TextBox1.Text.Trim() + "' AND member_id='" + TextBox2.Text.Trim() + "'", con);
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
                return false;
            }
            return false;
        }

        

        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "' ;", con);
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
                return false;
            }
            return false;
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
                SqlCommand cmd = new SqlCommand("SELECT * from package_master_tbl WHERE package_id='" + TextBox1.Text.Trim() + "' ;", con);
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
                return false;
            }
            return false;
        }

        void getNames()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT company_name from package_master_tbl WHERE package_id='" + TextBox1.Text.Trim() + "' ;", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox4.Text = dt.Rows[0]["company_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Package ID');</script>");
                }

                cmd = new SqlCommand("SELECT full_name from member_master_tbl WHERE member_id='" + TextBox2.Text.Trim() + "' ;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Package ID');</script>");
                }

                cmd = new SqlCommand("SELECT package_cost from package_master_tbl WHERE package_id='" + TextBox1.Text.Trim() + "' ;", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox8.Text = dt.Rows[0]["package_cost"].ToString();
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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    //check your condition here
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[6].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt)
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "'); </script>");
            }
        }

        private void BindGridViewForMember()
        {
            try
            {
                // Ensure the session contains the username
                if (Session["username"] != null)
                {
                    string memberId = Session["username"].ToString();

                    // Set the SqlDataSource SelectCommand dynamically
                    SqlDataSource1.SelectCommand = "SELECT * FROM package_issue_tbl";
                    SqlDataSource1.DataBind(); // Rebind data source
                   


                    // Bind GridView1 to reflect the filtered data
                    GridView1.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Session expired. Please log in again.');</script>");
                    // Optionally redirect to login page
                    Response.Redirect("userlogin.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}