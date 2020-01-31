<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">


    protected void Page_Load(object sender, EventArgs e)
    {
        string output = Application["msg"].ToString();
        lblOutput.Text = output;
        Application["msg"] = ""; // 清除Application變數
        lblOutput.Text += "載入網頁...<br/>顯示網頁內容...";
        if (Session.IsNewSession == true)
        {
            lblOutput.Text += "<b>新的Session</b><br/>";
        }
        else
        {
            lblOutput.Text += "<b>同一個Session</b><br/>";
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Abandon(); // 結束Session
        // 轉址至自已
        Response.Redirect("Default.aspx");
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
                <td colspan="2">
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="更新網頁" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="結束Session" 
                        onclick="Button2_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
