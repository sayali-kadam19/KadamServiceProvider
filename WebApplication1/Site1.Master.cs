using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    LinkButton1.Visible = true;//user login link button
                    LinkButton2.Visible = true;//signup link button
                    LinkButton3.Visible = false;//logout link button
                    LinkButton7.Visible = false;//Hello user  link button

                    LinkButton6.Visible = true;//admin login link button
                    LinkButton11.Visible = false;//company link button
                    LinkButton12.Visible = true;//service provider link button
                    LinkButton8.Visible = false;//package link button
                    LinkButton9.Visible = false;//package issuing link button
                    LinkButton10.Visible = false;//member managemnet link button
                    LinkButton5.Visible = false;//member packages link button
                }
                else if (Session["role"].Equals("user"))
                {

                    LinkButton1.Visible = false;//user login link button
                    LinkButton2.Visible = false;//signup link button
                    LinkButton3.Visible = true;//logout link button
                    LinkButton7.Visible = true;//Hello user  link button
                    LinkButton7.Text= "Hello "+Session["username"].ToString();

                    LinkButton6.Visible = true;//admin login link button
                    LinkButton11.Visible = false;//company link button
                    LinkButton12.Visible = true;//service provider link button
                    LinkButton8.Visible = false;//package link button
                    LinkButton9.Visible = true;//package issuing link button
                    LinkButton10.Visible = false;//Member managemnet link button
                    LinkButton5.Visible = false;//member packages link button

                }
                else if (Session["role"].Equals("admin"))
                {

                    LinkButton1.Visible = false;//user login link button
                    LinkButton2.Visible = false;//signup link button
                    LinkButton3.Visible = true;//logout link button
                    LinkButton7.Visible = true;//Hello user  link button
                    LinkButton7.Text = "Hello Admin ";

                    LinkButton6.Visible = false;//admin login link button
                    LinkButton11.Visible = true;//company link button
                    LinkButton12.Visible = true;//service provider link button
                    LinkButton8.Visible = true;//package link button
                    LinkButton9.Visible = false;//package issuing link button
                    LinkButton10.Visible = true;//Member managemnet link button
                    LinkButton5.Visible = true;//member packages link button


                }
            }
            catch (Exception ex)
            {   

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminCompanyManagement.aspx");

        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("reviewsmanagement.aspx");

        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Packages.aspx");

        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPackageissuing.aspx");

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewPackage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        //logout
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] ="";

            LinkButton1.Visible = true;//user login link button
            LinkButton2.Visible = true;//signup link button
            LinkButton3.Visible = false;//logout link button
            LinkButton7.Visible = false;//Hello user  link button

            LinkButton6.Visible = true;//admin login link button
            LinkButton11.Visible = false;//company link button
            LinkButton12.Visible = false;//service provider link button
            LinkButton8.Visible = false;//package link button
            LinkButton9.Visible = false;//package issuing link button
            LinkButton10.Visible = false;//member managemnet link button
            
            Response.Redirect("homepage.aspx");
        }
        //view profile
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            //Response.Redirect("userprofile.aspx");
            if (Session["role"] != null && Session["role"].Equals("admin"))
            {
                // Redirect to Admin Profile Page or Admin-specific page
                Response.Redirect("adminmembermanagement.aspx");
            }
            else if (Session["role"] != null && Session["role"].Equals("user"))
            {
                // Redirect to User Profile Page
                Response.Redirect("userprofile.aspx");
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminPaackageViewing.aspx");

        }
    }
}