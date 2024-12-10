<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminCompanyManagement.aspx.cs" Inherits="WebApplication1.adminCompanyManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function(){
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container"style="margin-top: 00px; padding-top: 100px;">
            <div class="row">
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                           
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Companies</h4>                                      
                                    </center>
                                </div>
                            </div>
                             <div class="row">
                                 <div class="col">
                                     <center>
                                        
                                         <img width="100px" src="imgs/Company1.jpg" />
                                     </center>
                                 </div>
                             </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                  <div class="col-md-4">
                                      <label>Company ID</label>
                                       <div class="form-group">
                                           <div class="input-group">
                                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                                <asp:Button class="btn btn-primary  " ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"></asp:Button>
                                           </div>
                                       </div>
                                  </div>
                                  <div class="col-md-8">
                                      <label>Company Name</label>
                                      <div class="form-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Company Name" ></asp:TextBox>
                                      </div>
                                  </div>
                            </div>

                            


                             <div class="row">
                                <div class="col-4">
                                    <asp:Button ID="Button2" class="btn btn-block btn-lg btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                                </div>
                                 <div class="col-4">
                                    <asp:Button ID="Button3" class="btn btn-block btn-lg btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                                </div>
                                <div class="col-4">
                                     <asp:Button ID="Button4" class="btn btn-block btn-lg btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                            <h4>Company List</h4>                   
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>
              
        
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kspDBConnectionString %>" ProviderName="<%$ ConnectionStrings:kspDBConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [company_master_tbl]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="company_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                            <Columns>
                                <asp:BoundField DataField="company_id" HeaderText="Company ID" ReadOnly="True" SortExpression="company_id" />
                                <asp:BoundField DataField="company_name" HeaderText="Company Name" SortExpression="company_name" />
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
