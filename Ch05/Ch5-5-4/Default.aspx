<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void ddlNames_SelectedIndexChanged(object sender, EventArgs e)
    {
        // 顯示選擇的使用者名稱
        lblOutput.Text = ddlNames.SelectedItem.Text;
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
        .style3
        {
            height: 26px;
        }
        .style4
        {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">選擇使用者名稱</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">:</span></td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:DropDownList ID="ddlNames" runat="server" 
                        Height="46px" Width="136px" AutoPostBack="True" 
                        onselectedindexchanged="ddlNames_SelectedIndexChanged">
                        <asp:ListItem Value="001">陳會安</asp:ListItem>
                        <asp:ListItem Value="002">江小魚</asp:ListItem>
                        <asp:ListItem Value="003">陳允傑</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblOutput" runat="server" BorderStyle="Ridge" Font-Size="Larger" 
                        Width="260px" ForeColor="Red"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
