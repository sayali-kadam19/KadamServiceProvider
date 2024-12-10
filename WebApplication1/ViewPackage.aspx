<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewPackage.aspx.cs" Inherits="WebApplication1.ViewPackage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

    $(document).ready(function () {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    });
   

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container" style="margin-top: 00px; padding-top: 100px;">
        <div class="row">
            <div class="col-sm-12">
                <center>
                    <h3>Package List</h3>
                </center>
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <asp:Panel CssClass="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="false">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </asp:Panel>
                    </div>
                </div>
                <br />
                <div class="row">
                   <div class="card">
                        <div class="card-body">
      
      

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
                                                                        <asp:Label ID="Label2" runat="server" Font-Bold="true" Text='<%# Eval("package_cost") %>'></asp:Label>
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
            <center>
                <a href="homepage.aspx"> << Back to Home</a> <br><br />
            </center>
        </div>
    </div>

</asp:Content>
