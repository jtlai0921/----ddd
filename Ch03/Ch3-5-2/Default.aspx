<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        int age = 40;
        char grade = 'C';
        string str = "";
        if (age <= 18)  // if/else/if條件敘述
            str = "學生票：12元<br/>";
        else
            if (age >= 65)
                str = "敬老票：8元<br/>";
            else
                str = "普通票：15元<br/>";
        lblOutput.Text = str;
        switch (grade)  // switch條件敘述
        {
            case 'A':
                str = "超過80分<br/>";
                break;
            case 'B':
                str = "70~79分<br/>";
                break;
            case 'C':
                str = "60~69分<br/>";
                break;
            default:
                str = "低於60分<br/>";
                break;
        }
        lblOutput.Text += str;
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
