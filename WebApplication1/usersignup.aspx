<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="WebApplication1.usersignup1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container" style="margin-top: 00px; padding-top: 100px;">
    <div class="row">
        <div class="col-md-8 mx-auto">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img width="100px" src="imgs/generaluser.png" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h4>User Sign Up</h4>
                            </center>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <hr>
                        </div>
                    </div>
                    <div class="row">
                          <div class="col-md-6">
                              <label>Full Name</label>
                               <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                               </div>
                          </div>
                          <div class="col-md-6">
                              <label>Date of Birth</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Date"></asp:TextBox>
                                    
                              </div>
                          </div>
                    </div>

                     <div class="row">
                          <div class="col-md-6">
                              <label>Contact No</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                              </div>
                          </div>
                          <div class="col-md-6">
                              <label>Email ID</label>
                              <div class="form-group">
                                  <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                              </div>
                        </div>
                     </div>
                    <div class="row">
                       <div class="col-md-4">
                          <label>States</label>
                          <div class="form-group">
                              <asp:DropDownList class="form-control" ID="DropDownList" runat="server" placeholder="Contact No" TextMode="Number">
                                  <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                  <asp:ListItem Text="Alabama" Value="Alabama"></asp:ListItem>
                                  <asp:ListItem Text="Alaska" Value="Alaska"></asp:ListItem>
                                  <asp:ListItem Text="Arizona" Value="Arizona"></asp:ListItem>
                                  <asp:ListItem Text="Arkansas" Value="Arkansas"></asp:ListItem>
                                  <asp:ListItem Text="California" Value="California"></asp:ListItem>
                                  <asp:ListItem Text="Colorado" Value="Colorado"></asp:ListItem>
                                  <asp:ListItem Text="Connecticut" Value="Connecticut"></asp:ListItem>
                                  <asp:ListItem Text="Delaware" Value="Delaware"></asp:ListItem>
                                  <asp:ListItem Text="Florida" Value="Florida"></asp:ListItem>
                                  <asp:ListItem Text="Georgia" Value="Georgia"></asp:ListItem>
                                  <asp:ListItem Text="Hawaii" Value="Hawaii"></asp:ListItem>
                                  <asp:ListItem Text="Idaho" Value="Idaho"></asp:ListItem>
                                  <asp:ListItem Text="Illinois" Value="Illinois"></asp:ListItem>
                                  <asp:ListItem Text="Indiana" Value="Indiana"></asp:ListItem>
                                  <asp:ListItem Text="Iowa" Value="Iowa"></asp:ListItem>
                                  <asp:ListItem Text="Kansas" Value="Kansas"></asp:ListItem>
                                  <asp:ListItem Text="Kentucky" Value="Kentucky"></asp:ListItem>
                                  <asp:ListItem Text="Louisiana" Value="Louisiana"></asp:ListItem>
                                  <asp:ListItem Text="Maine" Value="Maine"></asp:ListItem>
                                  <asp:ListItem Text="Maryland" Value="Maryland"></asp:ListItem>
                                  <asp:ListItem Text="Massachusetts" Value="Massachusetts"></asp:ListItem>
                                  <asp:ListItem Text="Michigan" Value="Michigan"></asp:ListItem>
                                  <asp:ListItem Text="Minnesota" Value="Minnesota"></asp:ListItem>
                                  <asp:ListItem Text="Mississippi" Value="Mississippi"></asp:ListItem>
                                  <asp:ListItem Text="Missouri" Value="Missouri"></asp:ListItem>
                                  <asp:ListItem Text="Montana" Value="Montana"></asp:ListItem>
                                  <asp:ListItem Text="Nebraska" Value="Nebraska"></asp:ListItem>
                                  <asp:ListItem Text="Nevada" Value="Nevada"></asp:ListItem>
                                  <asp:ListItem Text="New Hampshire" Value="New Hampshire"></asp:ListItem>
                                  <asp:ListItem Text="New Jersey" Value="New Jersey"></asp:ListItem>
                                  <asp:ListItem Text="New Mexico" Value="New Mexico"></asp:ListItem>
                                  <asp:ListItem Text="New York" Value="New York"></asp:ListItem>
                                  <asp:ListItem Text="North Carolina" Value="North Carolina"></asp:ListItem>
                                  <asp:ListItem Text="North Dakota" Value="North Dakota"></asp:ListItem>
                                  <asp:ListItem Text="Ohio" Value="Ohio"></asp:ListItem>
                                  <asp:ListItem Text="Oklahoma" Value="Oklahoma"></asp:ListItem>
                                  <asp:ListItem Text="Oregon" Value="Oregon"></asp:ListItem>
                                  <asp:ListItem Text="Pennsylvania" Value="Pennsylvania"></asp:ListItem>
                                  <asp:ListItem Text="Rhode Island" Value="Rhode Island"></asp:ListItem>
                                  <asp:ListItem Text="South Carolina" Value="South Carolina"></asp:ListItem>
                                  <asp:ListItem Text="South Dakota" Value="South Dakota"></asp:ListItem>
                                  <asp:ListItem Text="Tennessee" Value="Tennessee"></asp:ListItem>
                                  <asp:ListItem Text="Texas" Value="Texas"></asp:ListItem>
                                  <asp:ListItem Text="Utah" Value="Utah"></asp:ListItem>
                                  <asp:ListItem Text="Vermont" Value="Vermont"></asp:ListItem>
                                  <asp:ListItem Text="Virginia" Value="Virginia"></asp:ListItem>
                                  <asp:ListItem Text="Washington" Value="Washington"></asp:ListItem>
                                  <asp:ListItem Text="West Virginia" Value="West Virginia"></asp:ListItem>
                                  <asp:ListItem Text="Wisconsin" Value="Wisconsin"></asp:ListItem>
                                  <asp:ListItem Text="Wyoming" Value="Wyoming"></asp:ListItem>

                              </asp:DropDownList>
                          </div>
                      </div>
                      <div class="col-md-4">
                          <label>City</label>
                          <div class="form-group">
                              <asp:TextBox Class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                          </div>
                      </div>
                      <div class="col-md-4">
                          <label>Pincode</label>
                          <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                          </div>
                      </div>
                  </div>

                  <div class="row">
                      <div class="col">
                          <label>Full Address</label>
                          <div class="form-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="Multiline" Rows="2"></asp:TextBox>
                          </div>
                      </div>
   
                  </div>
                   <div class="row">
                      <div class="col">  
                          <center>
                              <span class="badge badge-pill badge-info">Login Credentials</span>    
                          </center>
                      </div>
                  </div>


                  <div class="row">
                      <div class="col-md-6">
                           <label>User ID</label>
                           <div class="form-group">
                               <asp:TextBox Class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ></asp:TextBox>
                           </div>
                      </div>
                       <div class="col-md-6">
                           <label>Password</label>
                           <div class="form-group">
                               <asp:TextBox Class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                           </div>
                     </div>
                  </div>


                     <div class="row">
                        <div class="col">                                                                                                                  
                            <div class="form-group">
                                <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click"></asp:Button>
                            </div>                             
                        </div>
                    </div>

                </div>
            </div>

            <a href="homepage.aspx"> << Back to Home</a> <br><br />
        </div>
    </div>
</div>
</asp:Content>
