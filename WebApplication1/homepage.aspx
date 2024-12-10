<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Fullscreen background styling */
        .homepage-bg {
            background: url('imgs/bg4.jpg') no-repeat center center/cover;
            height: 90vh; /* Adjust for header height */
            width: 100%;
            position: relative;
            display: flex;
            align-items: center;
            justify-content: flex-end; /* Align content to the right */
            
            overflow: hidden;
            color: white;
        }

        /* Styling for content on the right */
        .right-content {
            max-width: 650px; /* Adjust width of the content block */
            text-align: left; /* Align text to the left */
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
            font-family: 'Segoe Script', cursive; /* Apply Segoe Script font */
        }

        .right-content h1 {
            font-size: 4rem;
            margin-bottom: 20px;
        }

        .right-content h2 {
            font-size: 2.0rem;
            line-height: 1.6;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="homepage-bg">
        <div class="right-content">
            <h1>Kadam Internet Service</h1>
            <h2>Welcome to our one-stop solution for reliable connectivity!</h2>
            
        </div>
    </div>
    
    


</asp:Content>
