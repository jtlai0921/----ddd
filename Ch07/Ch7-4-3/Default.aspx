<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["User"]["Name"] = "陳會安";
        Response.Cookies["User"]["ID"] = "1234";
        Response.Cookies["User"].Expires = DateTime.Today.AddDays(10);
        lblOutput.Text = "成功建立多鍵Cookie!";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string name, no;
        if (Request.Cookies["User"] != null)
        {
            name = Request.Cookies["User"]["Name"];
            no = Request.Cookies["User"]["ID"];
            lblOutput.Text = "名稱:" + name + "<br/>";
            lblOutput.Text += "學號:" + no + "<br/>";
        }
        else
        {
            lblOutput.Text = "多鍵Cookie不存在!";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DateTime dtDay = DateTime.Today.AddDays(-365);
        Response.Cookies["User"].Expires = dtDay;
        lblOutput.Text = "成功刪除多鍵Cookie!";
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
                    <asp:Button ID="Button1" runat="server" Text="新增多鍵Cookie" 
                        onclick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="取得多鍵Cookie值" 
                        onclick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="刪除多鍵Cookie" 
                        onclick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
