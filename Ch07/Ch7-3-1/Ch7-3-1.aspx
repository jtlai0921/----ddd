<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string Username, Password;
        // 取得URL參數值
        Username = Server.UrlDecode(Request.QueryString["User"]);
        Password = Request.QueryString["Pass"];
        // 顯示取得的參數值
        lblOutput.Text = "名稱: " + Username + "<br/>";
        lblOutput.Text += "密碼: " + Password + "<br/>";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ch7-3-1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
