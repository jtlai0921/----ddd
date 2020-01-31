<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        double height = Convert.ToDouble(txtHeight.Text);
        double weight = Convert.ToDouble(txtWeight.Text);
        // 顯示欄位值
        txtOutput.Text = "姓名: " + txtName.Text + "\r\n";
        txtOutput.Text += "密碼: " + txtPass.Text + "\r\n";
        txtOutput.Text += "BMI: " + (weight / (height * height));
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
        }
        .style4
        {
            width: 82px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style4">
                    姓名:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    密碼:</td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    身高:</td>
                <td>
                    <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    體重:</td>
                <td>
                    <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" align="center" colspan="2">
    <asp:Button ID="Button1" runat="server" Text="送出" Width="109px" style="text-align: center" onclick="Button1_Click" 
                         />
    
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="2">
                    <asp:TextBox ID="txtOutput" runat="server" Height="101px" ReadOnly="True" 
                        TextMode="MultiLine" Width="287px"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
