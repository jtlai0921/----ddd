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
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                        DataKeyField="BookID" BackColor="#DEBA84" BorderColor="#DEBA84" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
                        GridLines="Both" RepeatColumns="3">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <HeaderTemplate>
                            圖書目錄
                        </HeaderTemplate>
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <ItemTemplate>
                            &nbsp;<asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                            -<asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                            -<asp:Label ID="BookPriceLabel" runat="server" Text='<%# Eval("BookPrice") %>' />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [BookID], [BookTitle], [BookPrice], [BookPubDate] FROM [Books]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
