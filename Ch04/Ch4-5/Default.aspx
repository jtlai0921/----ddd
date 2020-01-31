<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblOutput.Text = Button1.Text + ": 陳允傑";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        lblOutput.Text = LinkButton1.Text + ": 江小魚";
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        lblOutput.Text = Button1.Text + ": 陳會安";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1 {
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
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="顯示使用者" />
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">顯示使用者</asp:LinkButton>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" 
                        ImageUrl="~/button.jpg" Width="46px" onclick="ImageButton1_Click" />
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
