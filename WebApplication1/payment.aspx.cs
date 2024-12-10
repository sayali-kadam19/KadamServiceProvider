using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class payment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Optionally fetch package details using query parameters
                string memberId = Request.QueryString["member_id"];
                string packageId = Request.QueryString["package_id"];
                // Display fetched details if required
            }
        }

        protected void ButtonConfirmPayment_Click(object sender, EventArgs e)
        {
            // Simulate payment processing
            bool paymentSuccess = ProcessPayment(TextBoxCardNumber.Text.Trim(), TextBoxExpiry.Text.Trim(), TextBoxCVV.Text.Trim());

            if (paymentSuccess)
            {
                // Save issued package details in the database
                SaveIssuedPackage();
                Response.Redirect("confirmation.aspx");
            }
            else
            {
                Response.Write("<script>alert('Payment failed. Please try again.');</script>");
            }
        }

        bool ProcessPayment(string cardNumber, string expiry, string cvv)
        {
            // Validate card number (16 digits)
            if (!Regex.IsMatch(cardNumber, @"^\d{16}$"))
            {
                Response.Write("<script>alert('Card number must be 16 digits.');</script>");
                return false;
            }

            // Validate expiry date (MM/YY format)
            if (!Regex.IsMatch(expiry, @"^(0[1-9]|1[0-2])\/\d{2}$"))
            {
                Response.Write("<script>alert('Expiry date must be in MM/YY format.');</script>");
                return false;
            }

            // Validate CVV (3 or 4 digits)
            if (!Regex.IsMatch(cvv, @"^\d{3,4}$"))
            {
                Response.Write("<script>alert('CVV must be 3 or 4 digits.');</script>");
                return false;
            }

            // Dummy payment validation logic
            return true;
        }

        void SaveIssuedPackage()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }

                // Capture the new query parameters
                string memberId = Request.QueryString["member_id"];
                string memberName = Request.QueryString["member_name"];
                string packageId = Request.QueryString["package_id"];
                string packageName = Request.QueryString["package_name"];
                string phoneNo = Request.QueryString["phone_no"];
                string issueDate = Request.QueryString["issue_date"];
                string dueDate = Request.QueryString["due_date"];
                string packagecost = Request.QueryString["package_cost"];

                // Insert all necessary data into the package_issue_tbl
                SqlCommand cmd = new SqlCommand("INSERT into package_issue_tbl(member_id, member_name, package_id, package_name, phone_no, issue_date, due_date, package_cost) values (@member_id, @member_name, @package_id, @package_name, @phone_no, @issue_date, @due_date, @package_cost)", con);
                cmd.Parameters.AddWithValue("@member_id", memberId);
                cmd.Parameters.AddWithValue("@member_name", memberName);
                cmd.Parameters.AddWithValue("@package_id", packageId);
                cmd.Parameters.AddWithValue("@package_name", packageName);
                cmd.Parameters.AddWithValue("@phone_no", phoneNo);
                cmd.Parameters.AddWithValue("@issue_date", issueDate);
                cmd.Parameters.AddWithValue("@due_date", dueDate);
                cmd.Parameters.AddWithValue("@package_cost", packagecost);

                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }
    }
}
