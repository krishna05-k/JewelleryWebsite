<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="customer.aspx.cs" Inherits="Admin_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="pagetitle">
    <h1>Customer</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard.aspx">Home</a></li>
          <li class="breadcrumb-item ">Customer</li>
            <li class="breadcrumb-item ">Customer Detail</li>
        </ol>
      </nav>
    </div><!-- End Pag-->
     <div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
			
					
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <div class="panel">
                          <div class="panel-heading"> 
                          <i class="fa fa-file-text-o"></i>
                                            
                          </div>
                          <div class="panel-body">
                              <form class="form-horizontal" action=""> 
                                   <div class="form-group">                                  
                                   <table align="center">
                                    <tr>
                                        <td>
                                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                           AutoGenerateColumns="False" DataKeyNames="id" GridLines="None" 
                                           CellPadding="4" ForeColor="#333333" AllowPaging="True" Width="1184px">
                                           <RowStyle BackColor="#EFF3FB" />
                                            <Columns>
                                                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" 
                                                    SortExpression="ID" >
                                                    <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="fname" HeaderText="F_Name" SortExpression="Name" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="lname" HeaderText="L_Name" SortExpression="Name" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="gender" HeaderText="Gender" 
                                                    SortExpression="Gender" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="mobile" HeaderText="Contact No" 
                                                    SortExpression="Contact_No" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="Gmail" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="add1" HeaderText="Address" SortExpression="Msg" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="Date" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                </asp:BoundField>
                                                <asp:CommandField ButtonType="Image" 
                                                    DeleteImageUrl="../images/d2.png" HeaderText="Operation" 
                                                    ShowDeleteButton="True" ControlStyle-Height="30" ControlStyle-Width="30">
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:CommandField>
                                            </Columns>
                                            
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle  Font-Bold="True" ForeColor="White" />
                                            <AlternatingRowStyle BackColor="White" />
                                            
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:jew %>"
                                            ProviderName="<%$ ConnectionStrings:jew.ProviderName %>" SelectCommand="SELECT * FROM [registration] "
                                            
                                             DeleteCommand="DELETE FROM [registration] WHERE [id]=@id">
                                        </asp:SqlDataSource>
                                        </td>
                                   </tr>     
                                  </table>
                                   </div>
                               </form>
                          </div>
                      </div>                                   
                  </div>                 
              </div>   
               </div>
</div>
</asp:Content>

