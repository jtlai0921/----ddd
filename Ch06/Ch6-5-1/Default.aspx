<%@ Page Language="C#" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">


    protected void Page_Load(object sender, EventArgs e)
    {
        string[] name = new string[5]; // 宣告一維陣列
        int x = 10;
        name[x] = "ASP.NET";   // 測試的錯誤程式碼
        lblOutput.Text = name[x];
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblOutput" runat="server" Text="Label"></asp:Label>
    
    </div>
    </form>
</body>
</html>
