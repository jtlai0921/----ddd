<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            double h, w;
            TextBox txt;
            txt = (TextBox)PreviousPage.FindControl("txtWeight");
            w = Convert.ToDouble(txt.Text);
            txt = (TextBox)PreviousPage.FindControl("txtHeight");
            h = Convert.ToDouble(txt.Text);
            lblOutput.Text = "BMI:" + (w / h / h);
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ch7-3-2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
    
    </div>
    </form>
</body>
</html>
