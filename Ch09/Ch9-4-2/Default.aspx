<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource2.DeleteParameters["BookID"].DefaultValue = txtID.Text;
        SqlDataSource2.Delete();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    請輸入書號:</td>
                <td>
                    <asp:TextBox ID="txtID" runat="server" Width="216px">F6752</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="刪除記錄" Width="113px" 
                        onclick="Button1_Click" />
&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="BookID" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" 
                                SortExpression="BookID" />
                            <asp:BoundField DataField="BookCatalog" HeaderText="BookCatalog" 
                                SortExpression="BookCatalog" />
                            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" 
                                SortExpression="BookTitle" />
                            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" 
                                SortExpression="BookAuthor" />
                            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" 
                                SortExpression="BookPrice" />
                            <asp:BoundField DataField="BookPubDate" HeaderText="BookPubDate" 
                                SortExpression="BookPubDate" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Books]" 
                        DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" 
                        InsertCommand="INSERT INTO [Books] ([BookID], [BookCatalog], [BookTitle], [BookAuthor], [BookPrice], [BookPubDate]) VALUES (@BookID, @BookCatalog, @BookTitle, @BookAuthor, @BookPrice, @BookPubDate)" 
                        UpdateCommand="UPDATE [Books] SET [BookCatalog] = @BookCatalog, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookPrice] = @BookPrice, [BookPubDate] = @BookPubDate WHERE [BookID] = @BookID">
                        <DeleteParameters>
                            <asp:Parameter Name="BookID" Type="String" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BookCatalog" Type="String" />
                            <asp:Parameter Name="BookTitle" Type="String" />
                            <asp:Parameter Name="BookAuthor" Type="String" />
                            <asp:Parameter Name="BookPrice" Type="Decimal" />
                            <asp:Parameter Name="BookPubDate" Type="DateTime" />
                            <asp:Parameter Name="BookID" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BookID" Type="String" />
                            <asp:Parameter Name="BookCatalog" Type="String" />
                            <asp:Parameter Name="BookTitle" Type="String" />
                            <asp:Parameter Name="BookAuthor" Type="String" />
                            <asp:Parameter Name="BookPrice" Type="Decimal" />
                            <asp:Parameter Name="BookPubDate" Type="DateTime" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
