<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    // Page物件的Load事件
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Ch4-2";
        showEvent("Page_Load事件觸發...<br/>");
    }
    // Page物件的PreInit事件
    protected void Page_PreInit(object sender, EventArgs e)
    {
        showEvent("Page_PreInit事件觸發...<br/>");
    }
    // Page物件的PreRender事件
    protected void Page_PreRender(object sender, EventArgs e)
    {
        showEvent("Page_PreRender事件觸發...<br/>");
    }
    // Page物件的UnLoad事件
    protected void Page_Unload(object sender, EventArgs e)
    {
        showEvent("Page_UnLoad事件觸發...<br/>");
    }
    // 顯示事件的執行過程
    void showEvent(string str)
    {
        lblOutput.Text += str;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblOutput" runat="server" BorderStyle="Solid" Height="150px" 
            Width="300px"></asp:Label>
    
    </div>
    </form>
</body>
</html>
