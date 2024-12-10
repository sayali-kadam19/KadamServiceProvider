<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminPackageissuing.aspx.cs" Inherits="WebApplication1.adminPackageissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <script type="text/javascript">
        $(document).ready(function(){
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid" style="margin-top: 00px; padding-top: 100px;">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                           
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Package Issuing</h4>                                      
                                    </center>
                                </div>
                            </div>
                             <div class="row">
                                 <div class="col">
                                     <center>
                                        
                                         <img width="100px" src="imgs/package.jpg" />
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
                                      <label>Member ID</label>
                                      <div class="form-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member ID" ></asp:TextBox>
                                      </div>
                                  </div>
                                  <div class="col-md-6">
                                    <label>Package ID</label>
                                     <div class="form-group">
                                         <div class="input-group">
                                              <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Package ID"></asp:TextBox>
                                              <asp:Button for="TextBox1" class="btn btn-dark  " ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"></asp:Button>
                                         </div>
                                     </div>
                                </div>
                            </div>
                            <div class="row">                                 
                                  <div class="col-md-6">
                                      <label>Member Name</label>
                                      <div class="form-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="true" ></asp:TextBox>
                                      </div>
                                  </div>
                                <div class="col-md-6">
                                    <label>Package Name</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Package Name" ReadOnly="true" ></asp:TextBox>
                                    </div>
                                </div>
                                  
                           </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Phone Number</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Internet Plan Phone Number" ></asp:TextBox>
                                        </div>                             
                                </div>

                                <div class="col-md-6">
                                    <label>Cost</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Cost Per Month" ReadOnly="true"  ></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                           <div class="row">                                 
                                   <div class="col-md-6">
                                       <label>Issue Date</label>
                                       <div class="form-group">
                                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Issue Date" TextMode="Date" ></asp:TextBox>
                                       </div>
                                   </div>
                                 <div class="col-md-6">
                                     <label>Due Date</label>
                                     <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Due Date" TextMode="Date" ></asp:TextBox>
                                     </div>
                                 </div>
       
                           </div>

                            


                             <div class="row">
                                <div class="col-6">
                                    <asp:Button ID="Button2" class="btn btn-block btn-lg btn-primary" runat="server" Text="Issue" OnClick="Button2_Click" />
                                </div>
                                 
                                <div class="col-6">
                                     <asp:Button ID="Button4" class="btn btn-block btn-lg btn-success" runat="server" Text="Delete" OnClick="Button4_Click" />
                                </div>
                            </div>

                        </div>
                    </div>

                    <a href="homepage.aspx"> << Back to Home</a> <br><br />
                </div>

                <div class="col-md-7">
                    <div class="card">
            <div class="card-body">
                
                <div class="row">
                    <div class="col">
                        <center>
                            <h4>Issued Package</h4>                   
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>
              
        
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:kspDBConnectionString %>' SelectCommand="SELECT * FROM [package_issue_tbl]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id"></asp:BoundField>
                                <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name"></asp:BoundField>
                                <asp:BoundField DataField="package_id" HeaderText="Package ID" SortExpression="package_id"></asp:BoundField>
                                <asp:BoundField DataField="package_name" HeaderText="Package Name" SortExpression="package_name"></asp:BoundField>
                                <asp:BoundField DataField="phone_no" HeaderText="Phone No" SortExpression="phone_no"></asp:BoundField>
                                <asp:BoundField DataField="issue_date" HeaderText="Issued Date" SortExpression="issue_date"></asp:BoundField>
                                <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date"></asp:BoundField>
                                <asp:BoundField DataField="package_cost" HeaderText="Package cost" SortExpression="package_cost"></asp:BoundField>

                            </Columns>
                        </asp:GridView>
                    </div>
                </div>

    

            </div>
        </div>


                </div>
            </div>
</div>
</asp:Content>
