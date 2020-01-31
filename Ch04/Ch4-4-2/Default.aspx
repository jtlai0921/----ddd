<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (pnlSwitch.Visible == true)
            pnlSwitch.Visible = false;
        else
            pnlSwitch.Visible = true;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="pnlSwitch" runat="server" GroupingText="圖書資料">
            <asp:Label ID="Label1" runat="server" Text="ASP.NET 3.5網頁設計"></asp:Label>
        </asp:Panel>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="29px" Text="切換顯示" 
            Width="124px" onclick="Button1_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>
