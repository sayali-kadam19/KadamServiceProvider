<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reviewsmanagement.aspx.cs" Inherits="WebApplication1.reviewsmanagement" %>
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
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                           
                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h4>Review</h4>                                      
                                    </center>
                                </div>
                            </div>
                             <div class="row">
                                 <div class="col">
                                     <center>
                                        
                                         <img width="100px" src="imgs/company.jpg" />
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
                                      <label>Name</label>
                                       <div class="form-group">
                                           <div class="input-group">
                                                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Name"></asp:TextBox>
                                                <asp:Button class="btn btn-primary  " ID="Button1" runat="server" Text="Go" OnClick="Button1_Click"></asp:Button>
                                           </div>
                                       </div>
                                  </div>                                  
                            </div>
                            <div class="row">                                       
                              <div class="col-12">
                                  <label>Review</label>
                                  <div class="form-group">
                                      <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Review" TextMode="Multiline" Rows="2"   ></asp:TextBox>
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
                            <h4>Reviews</h4>                   
                        </center>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <hr>
                    </div>
                </div>
              
        
                <div class="row">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kspDBConnectionString %>" SelectCommand="SELECT * FROM [reviews_master_tbl]"></asp:SqlDataSource>
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="Name" ReadOnly="True" SortExpression="member_id" />
                                <asp:BoundField DataField="reviews_list" HeaderText="Reviews" SortExpression="reviews_list" />
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
