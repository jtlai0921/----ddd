<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Circle c = new Circle(15, 25, 20);
        lblOutput.Text = "圓心(X,Y): (" + c.x + "," +
                                    c.y + ")" + "<br/>";
        lblOutput.Text += "半徑： " + c.r + "<br/>";
        lblOutput.Text += "圓面積： " + c.Area();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblOutput" runat="server" EnableViewState="False"></asp:Label>
    
    </div>
    </form>
</body>
</html>
