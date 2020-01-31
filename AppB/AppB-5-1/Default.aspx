<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Shape s;
        Circle c = new Circle();
        Rectangle r = new Rectangle();
        string str;
        int i = 0;
        for (i = 1; i <= 2; i++)
        {
            if (i == 1)
            {
                str = "長方形";
                s = r;
            }
            else
            {
                str = "圓形";
                s = c;
            }   // 多形 
            lblOutput.Text += str + "面積: " + s.Area() + "<br/>";
        }
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
