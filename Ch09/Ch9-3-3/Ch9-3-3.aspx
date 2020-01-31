<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ch9-3-3</title>
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
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        
                        
                        SelectCommand="SELECT [BookID], [BookCatalog], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookTitle] LIKE '%' + @BookTitle + '%')">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="BookTitle" QueryStringField="Title" 
                                Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
