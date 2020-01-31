<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

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
    
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="BookCatalog" 
            DataValueField="BookCatalog" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT DISTINCT [BookCatalog] FROM [Books]"></asp:SqlDataSource>
    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="BookID" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" 
                                SortExpression="BookID" />
                            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" 
                                SortExpression="BookTitle" />
                            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" 
                                SortExpression="BookPrice" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        
                        SelectCommand="SELECT [BookID], [BookTitle], [BookPrice] FROM [Books] WHERE ([BookCatalog] = @BookCatalog)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="BookCatalog" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
