<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="WebApplication1.Packages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

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
                                        <h4>Packages</h4>                                      
                                    </center>
                                </div>
                            </div>
                             <div class="row">
                                 <div class="col">
                                     <center>
                                        
                                       <img id="imgview" height="150px" width="100px" src="img_inventory/Package1.png" />
                                     </center>
                                 </div>
                             </div>

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:FileUpload onchange="readURL(this);" class="form-control" ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                            
                            <div class="row"> 
                                
                                   <div class="col-md-4">
                                        <label>Package ID</label>
                                         <div class="form-group">
                                             <div class="input-group">
                                                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Package ID"></asp:TextBox>
                                                  <asp:Button class="form-control btn btn-primary" ID="Button7" runat="server" Text="Go" OnClick="Button7_Click" />
                                             </div>
                                         </div>
                                    </div>
                                   <div class="col-md-4">
                                      <label> Date</label>
                                      <div class="form-group">
                                          <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date" ></asp:TextBox>
                                      </div>
                                </div>
                               
                                  
                            </div>
                           

                             <div class="row">    
                                   
                                  <div class="col-md-9">
                                      <label>Service Provider Name</label>
                                      <div class="form-group">
                                          
                                          <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" placeholder="Provider Name" >
                                                    <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                    <asp:ListItem Text="AT&T" Value="AT&T"></asp:ListItem>
                                                    
                                          </asp:DropDownList>
                                      </div>
                                  </div>
                                  
      
                            </div>
                            <div class="row">
                                <div class="col-md-9">
                                    <label>Cost</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Enter Cost"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                           <div class="row">                                 
                                   
                                 <div class="col-12">
                                     <label>Package Description</label>
                                     <div class="form-group">
                                         <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Package Description" TextMode="Multiline" Rows="2"   ></asp:TextBox>
                                     </div>
                                 </div>
       
                           </div>

                             <div class="row">
                                <div class="col-4">
                                    <asp:Button ID="Button1" class="btn btn-block btn-lg btn-success" runat="server" Text="Add" OnClick="Button1_Click" />                                   
                                </div>  
                                 <div class="col-4">
                                    <asp:Button ID="Button4" class="btn btn-block btn-lg btn-warning" runat="server" Text="Update" OnClick="Button4_Click" />
                                </div> 
                                <div class="col-4">
                                      <asp:Button ID="Button3" class="btn btn-block btn-lg btn-danger" runat="server" Text="Delete" OnClick="Button3_Click" />
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
                            <h4>Package List</h4>                   
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>
              
        
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kspDBConnectionString %>" SelectCommand="SELECT * FROM [package_master_tbl]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="package_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="package_id" HeaderText="ID" ReadOnly="True" SortExpression="package_id" />
                                
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-9">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("company_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                        </div>

                                                        <div class="col-12">
                                                            <span> Package ID - </span>
                                                            <asp:Label ID="Label12" runat="server" Font-Bold="true" Text='<%# Eval("package_id") %>'></asp:Label>
                                                         </div>
                                                        <div class="col-12">
                                                            <span> Package Cost - </span>
                                                            <asp:Label ID="Label2" runat="server" Font-Bold="true" Text='<%# Eval("package_cost") %>' Font-Italic="True" Font-Size="Large"></asp:Label>
                                                        </div>
                                                        <div class="col-12">
                                                            <span> Package Date - </span>
                                                             <asp:Label ID="Label13" runat="server" Font-Bold="true" Text='<%# Eval("package_date") %>'></asp:Label>
                                                        </div>
                                                        <div class="col-12">
                                                            <span> Package Details - </span>
                                                            <asp:Label ID="Label4" runat="server" Font-Bold="true" Text='<%# Eval("package_description") %>' Font-Italic="True" Font-Size="Large"></asp:Label>
                                                        </div>
                                                    </div>


                                                </div>
                                                <div class="col-lg-3">
                                                    <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("img_link") %>' />
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
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
