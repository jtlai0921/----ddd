<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="PDA" %>

<script runat="server">

    protected void Button1_Command(object sender, CommandEventArgs e)
    {
        Response.Redirect(e.CommandArgument.ToString());
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="UpContent" Runat="Server">
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        <NodeTemplate>
            <asp:Button ID="Button1" runat="server" Text='<%# Eval("title") %>' 
                CommandArgument='<%# Eval("url") %>' oncommand="Button1_Command" />
        </NodeTemplate>
        <PathSeparatorTemplate>
            <span lang="EN-US" style="font-size:13.0pt;mso-bidi-font-size:
10.0pt;font-family:Wingdings;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-fareast-font-family:全真中明體;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-US;mso-fareast-language:
ZH-TW;mso-bidi-language:AR-SA;mso-char-type:symbol;mso-symbol-font-family:Wingdings">
            <span style="mso-char-type:symbol;mso-symbol-font-family:Wingdings">à</span></span>
        </PathSeparatorTemplate>
    </asp:SiteMapPath>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <span style="font-size:13.0pt;mso-bidi-font-size:10.0pt;
font-family:全真中明體;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-US;mso-fareast-language:ZH-TW;mso-bidi-language:AR-SA">數位助理</span></p>
</asp:Content>

