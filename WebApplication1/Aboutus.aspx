<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="WebApplication1.Aboutus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
         <style>
    /* Fullscreen background container */
    .about-section {
        background: url('imgs/wbg-1.jpg') no-repeat center center/cover;
        height: 90vh; /* Full-page height */
        display: flex; /* Flex container */
        flex-direction: column; /* Stack content vertically */
        align-items: center; /* Center content horizontally */
        justify-content: flex-start; /* Reduce space between sections */
        color: black; /* Text color for readability */
        padding: 20px;
        position: relative; /* Allow positioning of child elements */
    }

    /* About Us content centered */
    .about-content {
        text-align: center; /* Center-align text */
        margin-bottom: 20px; /* Add spacing below */
    }

    /* Small image above About Us */
    .about-image {
        margin-bottom: 15px; /* Space below the image */
        text-align: center; /* Center the image */
    }

    .about-image img {
        width: 100px; /* Adjust size of the image */
        height: auto;
    }

    /* Visit Us details aligned to the bottom right */
    .visit-content {
        text-align: right; /* Right-align text */
        position: absolute; /* Place it relative to the parent container */
        bottom: 20px; /* Adjust position from the bottom */
        right: 20px; /* Adjust position from the right */
        max-width: 30%;
    }

    /* Centered Meet Our Team section */
    .team-section {
        text-align: center;
        color: black;
        margin-top: 10px; /* Adjust top margin of the section */
    }

    .team-section h2 {
        margin-bottom: 20px; /* Reduce space below the heading */
    }

    .team-member {
        display: inline-block;
        margin: 40px; /* Adjust spacing between team members */
        text-align: center;
    }

    .team-member img {
        border-radius: 70%;
        width: 200px;
        height: 180px;
    }

    .team-member h5 {
        margin: 10px 0 5px; /* Reduce spacing between name and title */
    }

    .team-member p {
        font-size: 0.9em;
    }

    /* Small image above About Us */
    .about-image {
        margin-bottom: 15px; /* Space below the image */
        text-align: center; /* Center the image */
    }

    .about-image img {
        width: 300px; /* Adjusted width */
        height: auto; /* Maintain aspect ratio */
        border-radius: 10px; /* Optional: Add rounded corners */
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="about-section">
       
          <!-- About Us centered -->
        <div class="about-content">
            <h2>About Us</h2>
            <p>
                At Kadam Internet Service, we believe in making high-quality, affordable internet accessible to everyone. Our mission is to provide reliable connectivity with user-friendly plans tailored to meet the diverse needs of our customers. We focus not just on technology, but on the people we serve, continuously improving our services based on your feedback to ensure you stay connected to what matters most. Whether you're at home or at work, we're here to help you enjoy a seamless online experience.
            </p>
        </div>
          
          <!-- Small Image Above About Us -->
        <div class="about-image">
            <img src="imgs/grp-1.jpg" alt="Group Photo" />
        </div>

        

        <!-- Meet Our Team Section -->
        <div class="team-section">
            <h2>Meet Our Team</h2>
            <div class="team-member">
                <img src="imgs/john.1.jpg" alt="Team Member 1" />
                <h5>John Doe</h5>
                <p>CEO & Founder</p>
                <p>"With a vision to bring reliable<br /> and affordable internet to every home,<br /> I lead our team with passion and commitment <br />to delivering top-quality services."</p>
            </div>
            <div class="team-member">
                <img src="imgs/jane-2.jpg" alt="Team Member 2" />
                <h5>Jane Smith</h5>
                <p>Head of Operations</p>
                <p>"I ensure our services run smoothly,<br /> from network setup to customer support,<br /> so you can enjoy uninterrupted <br />connectivity every day."</p>
            </div>
            <div class="team-member">
                <img src="imgs/mike-3.jpg" alt="Team Member 3" />
                <h5>Mike Brown</h5>
                <p>Chief Technology Officer</p>
                <p>"Technology is at the heart of <br />what we do. I focus on integrating the latest <br />innovations to provide the best<br /> internet experience for our customers."</p>
            </div>
        </div>

        <!-- Visit Us Section -->
        <div class="visit-content">
            <h2>Visit Us</h2>
            <p>
                Kadam Internet Service<br />
                4567 Maple Avenue, Kansas City, MO, 64108, USA<br />
                Phone: (555) 987-6543<br />
                Email: support@kspinternet.com
            </p>
        </div>
    </section>
</asp:Content>
