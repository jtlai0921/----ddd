<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblOutput1.Text = DateTime.Now.ToString();
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblOutput2.Text = DateTime.Now.ToString();
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
        .style2
        {
            width: 201px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="lblOutput2" runat="server" BackColor="Blue" BorderStyle="Solid" 
                                ForeColor="White" Height="32px" Width="175px"></asp:Label>
                            <br />
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Ajax更新時間" 
                                onclick="Button2_Click" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </td>
                <td>
                    <asp:Label ID="lblOutput1" runat="server" BackColor="Yellow" 
                        BorderColor="Black" BorderStyle="Solid" ForeColor="Blue" Height="32px" 
                        Width="175px"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="更新時間" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
