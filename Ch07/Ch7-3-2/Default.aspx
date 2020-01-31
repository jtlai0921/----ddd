<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    身高:</td>
                <td>
                    <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    體重:</td>
                <td>
                    <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="計算BMI值" 
                        PostBackUrl="~/Ch7-3-2.aspx" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
