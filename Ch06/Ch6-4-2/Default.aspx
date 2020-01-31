<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblOutput.Text = "<hr/>";
        lblOutput.Text += Request.ServerVariables[txtServer.Text];
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        const string BR = "<br/>"; // 換行標籤常數
        HttpBrowserCapabilities hbc = Request.Browser;
        lblOutput.Text = "<hr/>瀏覽程式種類: " + hbc.Type + BR;
        lblOutput.Text += "瀏覽程式名稱: " + hbc.Browser + BR;
        lblOutput.Text += "版本: " + hbc.Version + BR;
        lblOutput.Text += "主版本: " + hbc.MajorVersion + BR;
        lblOutput.Text += "次版本: " + hbc.MinorVersion + BR;
        lblOutput.Text += "平台: " + hbc.Platform + BR;
        lblOutput.Text += "支援框架: " + hbc.Frames + BR;
        lblOutput.Text += "支援表格: " + hbc.Tables + BR;
        lblOutput.Text += "支援Cookies: " + hbc.Cookies + BR;
        lblOutput.Text += "支援VBScript: " + hbc.VBScript + BR;
        lblOutput.Text += "支援JavaScript: " + hbc.JavaScript + BR;
        lblOutput.Text += "支援Java Applets: " + hbc.JavaApplets + BR;
        lblOutput.Text += "支援ActiveX控制: " + hbc.ActiveXControls + BR;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Server變數:
        <asp:TextBox ID="txtServer" runat="server" Width="183px"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="查詢" onclick="Button1_Click" />
    
        　<asp:Button ID="Button2" runat="server" Text="瀏覽程式" onclick="Button2_Click" />
        <br />
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
