<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // 顯示數學常數
        lblOutput.Text = "E = " + Math.E + "<br/>";
        lblOutput.Text += "PI= " + Math.PI + "<br/>";
        // 指數和對數函數
        double x = 15.536;
        double y = 3.37;
        lblOutput.Text +="x= " + x + " y=" + y + "<br/>";
        lblOutput.Text +="Exp(x)= " + Math.Exp(x) + "<br/>";
        lblOutput.Text +="Log(x)= " + Math.Log(x) + "<br/>";
        lblOutput.Text +="Pow(x,y)= " + Math.Pow(x, y) + "<br/>";
        lblOutput.Text +="Sqrt(x)= " + Math.Sqrt(x) + "<br/>";
        // 三角函數
        double deg = 60.0;
        double rad = deg * Math.PI / 180.0;
        lblOutput.Text +="deg= " + deg + " rad= " + rad + "<br/>";
        lblOutput.Text +="Sin(rad)= " + Math.Sin(rad) + "<br/>";
        lblOutput.Text +="Cos(rad)= " + Math.Cos(rad) + "<br/>";
        lblOutput.Text +="Tan(rad)= " + Math.Tan(rad) + "<br/>";
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
