<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = "江小魚";
        // 新增Cookie
        Response.Cookies["User"].Value = name;
        DateTime dtDay = DateTime.Today.AddDays(10);
        Response.Cookies["User"].Expires = dtDay;
        lblOutput.Text = "已經成功建立Cookie!";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ch7-4-2.aspx"); // 轉址
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
                    <asp:Button ID="Button1" runat="server" Text="新增Cookie" 
                        onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="讀取Cookie" 
                        onclick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
