<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        String temp = Label1.Text;
        Label1.Text = TextBox1.Text;
        TextBox1.Text = temp;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="ASP.NET網頁設計"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="199px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="41px" onclick="Button1_Click" 
            Text="交換" Width="82px" />
    
    </div>
    </form>
</body>
</html>
