<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int pos;
        string no;
        if (e.CommandName == "Select")
        {
            pos = Convert.ToInt32(e.CommandArgument); // 哪一列圖書
            no = GridView1.DataKeys[pos].Value.ToString();
            lblOutput.Text = "書號: " + no;
        }
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
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="BookID" DataSourceID="SqlDataSource1" CellPadding="2" 
                        ForeColor="Black" GridLines="None" BackColor="LightGoldenrodYellow" 
                        BorderColor="Tan" BorderWidth="1px" OnRowCommand="GridView1_RowCommand">
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="BookID" 
                                DataNavigateUrlFormatString="Details.aspx?Id={0}" DataTextField="BookID" 
                                HeaderText="書號" />
                            <asp:BoundField DataField="BookTitle" HeaderText="書名" 
                                SortExpression="BookTitle" />
                            <asp:BoundField DataField="BookPrice" HeaderText="書價" 
                                SortExpression="BookPrice" DataFormatString="{0:c}" />
                            <asp:BoundField DataField="BookPubDate" HeaderText="出版日" 
                                SortExpression="BookPubDate" DataFormatString="{0:d}" />
                            <asp:ImageField DataImageUrlField="BookID" 
                                DataImageUrlFormatString="~/images/{0}small.gif" HeaderText="封面">
                            </asp:ImageField>
                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="功能" 
                                ShowHeader="True" Text="顯示書號" />
                        </Columns>
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM [Books]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
