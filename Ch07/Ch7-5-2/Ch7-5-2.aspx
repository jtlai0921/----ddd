<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        string name, password;
        lblOutput.Text = "Session ID:" + Session.SessionID + "<br/>";
        if (Session["UserName"] != null)
        {
            // 取得Session變數值
            name = Session["UserName"].ToString();
            password = Session["UserPassword"].ToString();
            // 顯示取得的Session變數值            
            lblOutput.Text += "名稱: " + name + "<br/>";
            lblOutput.Text += "密碼: " + password + "<br/>";
            Session.Abandon(); // 放棄Session
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ch7-5-2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
