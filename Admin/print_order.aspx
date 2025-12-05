<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="print_order.aspx.cs" Inherits="Admin_print_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="pagetitle">
     <h1>Manage Order</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard.aspx">Home</a></li>
          <li class="breadcrumb-item ">Order</li>
             <li class="breadcrumb-item active">Manage Order</li>
        </ol>
      </nav>
    </div><!-- End Pag-->

    <asp:Panel ID="Panel2" runat="server">
    <table align="center" style="margin-top:1%;">

                                        <tr>
                                        <td>
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                DataKeyNames="id" DataSourceID="SqlDataSource2" AllowPaging="True" 
                                              PageSize="5" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" Width="1189px" Height="287px" BorderStyle="Solid" >
                                              <RowStyle BackColor="#E3EAEB" />
                                             <Columns>
                                                    
                                                    <asp:BoundField DataField="oid" HeaderText="oid" ReadOnly="True" 
                                                        SortExpression="oid" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                   
                                                   <asp:BoundField ReadOnly="true" DataField="Uname" HeaderText="uname"
                                                        SortExpression="uname" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="11%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" 
                                                        SortExpression="em" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="10%" />
                                                    </asp:BoundField>
                                                   
                                                    
                                                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" ReadOnly="True" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%"/>
                                                    </asp:BoundField>
                                                 <asp:BoundField DataField="pname" HeaderText="product name" SortExpression="pnm" ReadOnly="True" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%"/>
                                                    </asp:BoundField>
                                                  <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="price" ReadOnly="True" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%"/>
                                                    </asp:BoundField>
                                                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" ReadOnly="True" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%"/>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="total" HeaderText="Total" SortExpression="stock" ReadOnly="True" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                    
                                               <asp:BoundField DataField="odate" HeaderText="O_date" SortExpression="stock" ReadOnly="True" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                 <asp:BoundField DataField="status" HeaderText="Status" SortExpression="stock"  >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                   <asp:CommandField ButtonType="Image"
                                                        DeleteImageUrl="../images/d2.png" HeaderText="Opration" 
                                                        ShowDeleteButton="True" CancelImageUrl="../images/d2.png" 
                                                        EditImageUrl="../images/e1.png" ShowEditButton="True" 
                                                        UpdateImageUrl="../images/e1.png" ControlStyle-Height="30" ControlStyle-Width="30">
                                                        <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                    </asp:CommandField>
                                                </Columns>
                                            
                                         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle  Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#7C6F57" />
                                                <AlternatingRowStyle BackColor="White" />
                                            </asp:GridView>
                                          <%--   <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                             ConnectionString="<%$ ConnectionStrings:jew %>" 
                                                SelectCommand="SELECT * FROM [pro_ord]"
                                                  UpdateCommand="UPDATE pro_ord SET status=@status WHERE oid=@oid "
                                                 DeleteCommand="DELETE FROM  pro_ord WHERE (oid = @oid)" ProviderName="System.Data.OleDb">
                                                 <UpdateParameters>
                                                    <asp:Parameter Name="oid" />
                                                      <asp:Parameter Name="status" />
                                                 
                                                 </UpdateParameters>
                                                 <DeleteParameters>
                                                    <asp:Parameter Name="oid" />
                                                 </DeleteParameters>
                                                 </asp:SqlDataSource>--%>

                                             <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                              ConnectionString="<%$ ConnectionStrings:jew %>" 
                                                SelectCommand="SELECT * FROM [pro_ord]"
                                                  UpdateCommand="UPDATE pro_ord SET status=@status WHERE id=@id "
                                                 DeleteCommand="DELETE FROM pro_ord WHERE (id = @id)" ProviderName="System.Data.OleDb">
                                                <UpdateParameters>
                                                    <asp:Parameter Name="id" />
                                                    <asp:Parameter Name="status" />
                                                   
                                                 </UpdateParameters>
                                                 <DeleteParameters>
                                                    <asp:Parameter Name="oid" />
                                                 </DeleteParameters>
                                                 </asp:SqlDataSource>


                                        </td>
                                        </tr>
                                    </table>
    </asp:Panel>
</asp:Content>

