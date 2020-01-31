<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // 初始Application變數
        if (Application["Page_Counter"] == null)
        {
            Application.Lock();
            // 初始進入次數
            Application["Page_Counter"] = 0;
            Application.UnLock();
        }
        Application.Lock();
        // 進入網頁的次數加一
        Application["Page_Counter"] = Convert.ToInt32(Application["Page_Counter"]) + 1;
        Application.UnLock();
        lblOutput.Text = "所有使用者進入網頁的總次數: " + Application["Page_Counter"];
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblOutput" runat="server" ForeColor="Blue"></asp:Label>
    
    </div>
    </form>
</body>
</html>
