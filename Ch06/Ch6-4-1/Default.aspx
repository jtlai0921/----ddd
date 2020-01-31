<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string title = "轉址功能：";
        Response.Write(title + "<br/>");
        Response.Write("歡迎使用ASP.NET程式設計<br/>");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect(txtURL.Text);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        URL網址:
        <asp:TextBox ID="txtURL" runat="server" Width="183px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="轉址" onclick="Button1_Click" />
    
    </div>
    </form>
</body>
</html>
