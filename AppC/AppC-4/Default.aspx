<%@ Page Language="C#" Trace="true" TraceMode="SortByCategory" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Trace.Warn("MyTrace", "Beginning User Code...");
        int i = 0;
        Trace.Write("MyTrace", "For Loop Beginning");
        for (i = 1; i <= 5; i++)
        {
            lblOutput.Text += i + "<br>";
            if (Trace.IsEnabled)
            {
                Trace.Warn("MyTrace", "Count : " + i);
            }
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
    
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
