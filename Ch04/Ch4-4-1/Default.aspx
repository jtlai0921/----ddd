<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Ch4-4-1";
        ltlOutput.Text = "徹底研究";
        lblTitle.BackColor = System.Drawing.Color.Yellow;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblTitle" runat="server" ForeColor="Red" Text="ASP.NET 3.5網頁設計"></asp:Label>
        <br />
        <asp:Literal ID="ltlOutput" runat="server"></asp:Literal>
    
        <br />
    
    </div>
    </form>
</body>
</html>
