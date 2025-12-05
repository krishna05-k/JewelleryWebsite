<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="mng_product.aspx.cs" Inherits="Admin_mng_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="pagetitle">
     <h1>Manage Product</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="dashboard.aspx">Home</a></li>
          <li class="breadcrumb-item ">Product</li>
             <li class="breadcrumb-item active">Manage Product</li>
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
                                                CellPadding="4" ForeColor="#333333" GridLines="None" Width="1148px" Height="287px" BorderStyle="Solid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                              <RowStyle BackColor="#E3EAEB" />
                                             <Columns>
                                                    
                                                  
                                                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                                        SortExpression="id" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                   <asp:BoundField ReadOnly="true" DataField="catnm" HeaderText="Sub Category" 
                                                        SortExpression="catnm" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="11%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="pname" HeaderText="pname" 
                                                        SortExpression="pname" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="10%" />
                                                    </asp:BoundField>
                                                   
                                                    <asp:BoundField DataField="weightt" HeaderText="Weight" SortExpression="weight" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%"/>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="wages" HeaderText="Wages" SortExpression="wages" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%"/>
                                                    </asp:BoundField>
                                                  <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%"/>
                                                    </asp:BoundField>
                                                 <asp:ImageField HeaderText="Images" SortExpression="img" 
                                                        DataImageUrlField="img" ControlStyle-Height="100" ControlStyle-Width="100">
                                                    <ControlStyle Height="100" Width="100"></ControlStyle>

                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:ImageField>  
                                                    <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" >
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
                                               <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:jew %>" 
                                                SelectCommand="SELECT * FROM [product]"
                                                  UpdateCommand="UPDATE product SET pname=@pname,weightt=@weightt,wages=@wages,price=@price,img=@img,stock=@stock WHERE id=@id "
                                                 DeleteCommand="DELETE FROM product WHERE (id = @id)" ProviderName="System.Data.OleDb">
                                                 <UpdateParameters>
                                                    <asp:Parameter Name="id" />
                                                    <asp:Parameter Name="pname" />
                                                       <asp:Parameter Name="weightt" />
                                                        <asp:Parameter Name="wages" />
                                                    <asp:Parameter Name="price" />
                                                  <asp:Parameter Name="img" />
                                                    <asp:Parameter Name="stock" />
                                                   
                                                 </UpdateParameters>
                                                 <DeleteParameters>
                                                    <asp:Parameter Name="id" />
                                                 </DeleteParameters>
                                                 </asp:SqlDataSource>
                                        </td>
                                        </tr>
                                    </table>
    </asp:Panel>
</asp:Content>

