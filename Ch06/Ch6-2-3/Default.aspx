﻿<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            // 驗證成功顯示控制項的值
            lblOutput.Text = "成績: " + txtScore.Text;
        }
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
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">使用者</span>成<span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">績:</span></td>
                <td>
                    <asp:TextBox ID="txtScore" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="validRange" runat="server" Display="Dynamic" 
                        ErrorMessage="成績範圍需要是0~100!" ControlToValidate="txtScore" 
                        MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="送出" onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblOutput" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
