<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="manage_cate.aspx.cs" Inherits="manage_cate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="pagetitle">
     <h1>Manage Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard.aspx">Home</a></li>
          <li class="breadcrumb-item ">Category</li>
             <li class="breadcrumb-item active">Manage Category</li>
        </ol>
      </nav>
    </div><!-- End Pag-->
        <asp:Panel ID="Panel2" runat="server">
    <table align="center" style="margin-top:1%;">

                                        <tr>
                                        <td>
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                DataKeyNames="cid" DataSourceID="SqlDataSource2" AllowPaging="True" 
                                              PageSize="5" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None" Width="1159px" Height="287px" BorderStyle="Solid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                              <RowStyle BackColor="#E3EAEB" />
                                             <Columns>
                                                    
                                                  
                                                    <asp:BoundField DataField="cid" HeaderText="pid" ReadOnly="True" 
                                                        SortExpression="cid" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                   <asp:BoundField DataField="catnm" HeaderText="Sub Category" 
                                                        SortExpression="catnm" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="8%" />
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
                                               <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:jew %>" 
                                                SelectCommand="SELECT * FROM [category]"
                                                  UpdateCommand="UPDATE category SET catnm=@catnm WHERE cid=@cid "
                                                 DeleteCommand="DELETE FROM category WHERE (cid = @cid)" ProviderName="System.Data.OleDb">
                                                 <UpdateParameters>
                                                    <asp:Parameter Name="cid" />
                                                    <asp:Parameter Name="catnm" />
                                                  
                                                    
                                                 </UpdateParameters>
                                                 <DeleteParameters>
                                                    <asp:Parameter Name="cid" />
                                                 </DeleteParameters>
                                                 </asp:SqlDataSource>
                                        </td>
                                        </tr>
                                    </table>
    </asp:Panel>

</asp:Content>

