﻿<%@ Page Language="C#" MasterPageFile="~/Member.master" Title="Ch13-5-2" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblOutput.Text = Profile.Name;
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">姓名</span><span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:10.0pt;font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA">:</span></td>
            <td>
                <asp:Label ID="lblOutput" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" PostBackUrl="Default.aspx" Text="上一步" />
            </td>
        </tr>
    </table>
</asp:Content>

