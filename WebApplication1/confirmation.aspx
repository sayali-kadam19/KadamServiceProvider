<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="WebApplication1.confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    /* Fullscreen background styling */
    .homepage-bg {
        background: url('imgs/wbg-1.jpg') no-repeat center center/cover;
        height: calc(100vh - 100px); /* Adjust for header height */
        width: 100%;
        position: relative;
        display: flex;
        justify-content: center; /* Center content horizontally */
        align-items: center; /* Center content vertically */
        overflow: hidden;
        color: white;
    }

    /* Styling for confirmation box */
    .custom-alert {
        background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
        border: 2px solid #28a745; /* Green border */
        border-radius: 15px;
        padding: 30px;
        width: 80%;
        max-width: 600px;
        text-align: center;
        box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.3);
    }

    /* Styling for alert heading */
    .custom-alert h4 {
        font-size: 28px;
        font-weight: bold;
        color: #28a745;
        margin-bottom: 20px;
    }

    /* Styling for alert message */
    .custom-alert p {
        font-size: 18px;
        margin-bottom: 20px;
        color: #333;
    }

    /* Thank you text styling */
    .thank-you {
        font-weight: bold;
        color: #155724;
        margin-top: 10px;
    }

    /* Back link styling */
    .back-link a {
        font-size: 16px;
        color: #007bff;
        text-decoration: none;
        border: 1px solid #007bff;
        padding: 5px 10px;
        border-radius: 5px;
    }

    .back-link a:hover {
        background-color: #007bff;
        color: white;
    }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="homepage-bg">
        <!-- Confirmation Box -->
        <div class="custom-alert">
            <h4>Congratulations!</h4>
            <p>Your internet package has been issued successfully.</p>
            <p class="thank-you">Thank you for choosing KSP Services.</p>
            <div class="back-link">
                <a href="homepage.aspx"><< Back to Home Screen</a>
                

            </div>
        </div>
    </div>
   
</asp:Content>
