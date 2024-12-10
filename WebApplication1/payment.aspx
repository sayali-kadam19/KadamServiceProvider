<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="WebApplication1.payment" %>
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
            color: white;
        }

        /* Styling for the payment form box */
        .container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 15px;
            padding: 30px;
            width: 80%;
            max-width: 600px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        /* Styling for the payment form heading */
        h3 {
            color: #333;
        }

        /* Button styling */
        .btn {
            margin-top: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


      <div class="homepage-bg">
        <!-- Payment Form Container -->
        <div class="container">
            <h3>Payment Details</h3>
            <hr />
            <div class="form-group">
                <label>Card Number</label>
                <asp:TextBox ID="TextBoxCardNumber" CssClass="form-control" runat="server" placeholder="Card Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Expiry Date</label>
                <asp:TextBox ID="TextBoxExpiry" CssClass="form-control" runat="server" placeholder="MM/YY"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>CVV</label>
                <asp:TextBox ID="TextBoxCVV" CssClass="form-control" runat="server" placeholder="CVV" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="ButtonConfirmPayment" CssClass="btn btn-primary" runat="server" Text="Confirm Payment" OnClick="ButtonConfirmPayment_Click" />
            </div>
        </div>
    </div>
</asp:Content>
