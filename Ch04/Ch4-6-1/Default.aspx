<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        imgOutput.ImageUrl = "pig.jpg";
        imgOutput.AlternateText = "小豬";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        imgOutput.ImageUrl = "mouse.gif";
        imgOutput.AlternateText = "老鼠";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                    <asp:Button ID="Button1" runat="server" Text="顯示圖片1" onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="顯示圖片2" onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Image ID="imgOutput" runat="server" Height="170px" Width="220px" 
                        BorderStyle="Inset" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
