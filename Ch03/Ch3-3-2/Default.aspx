<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        const double PI = 3.1415926; // 常數宣告
        double area = 25.0;   // 變數宣告與初值
        string name= "陳會安", title;
        uint height, width;
        title = "我的\"個人\"首頁"; // 指定敘述
        height = 500u;
        width = height;
        area = PI * 4 * 4;
        lblOutput.Text = "姓名: " + name + "<br/>" +
                         "標題: " + title + "<br/>" +
                         "高:" + height + "<br/>" +
                         "寬:" + height + "<br/>" +
                         "面積:" + area + "<br/>";    
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="執行" Width="153px" 
            onclick="Button1_Click" />
        <br />
        <asp:Label ID="lblOutput" runat="server" EnableViewState="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
