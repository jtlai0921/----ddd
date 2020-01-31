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
    
        <asp:WebPartManager ID="WebPartManager1" runat="server">
        </asp:WebPartManager>
    
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:WebPartZone ID="WebPartZone1" runat="server">
                        <ZoneTemplate>
                            <asp:Label Title="今日新聞" ID="Label1" runat="server" Text="Label"></asp:Label>
                        </ZoneTemplate>
                    </asp:WebPartZone>
                </td>
                <td>
                    <asp:WebPartZone ID="WebPartZone2" runat="server" BorderColor="#CCCCCC" 
                        Font-Names="Verdana" Padding="6">
                        <EmptyZoneTextStyle Font-Size="0.8em" />
                        <PartStyle Font-Size="0.8em" ForeColor="#333333" />
                        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White" />
                        <MenuLabelHoverStyle ForeColor="#E2DED6" />
                        <MenuPopupStyle BackColor="#5D7B9D" BorderColor="#CCCCCC" BorderWidth="1px" 
                            Font-Names="Verdana" Font-Size="0.6em" />
                        <MenuVerbStyle BorderColor="#5D7B9D" BorderStyle="Solid" BorderWidth="1px" 
                            ForeColor="White" />
                        <PartTitleStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.8em" 
                            ForeColor="White" />
                        <ZoneTemplate>
                            <asp:Calendar ID="Calendar1" Title="萬年曆" runat="server"></asp:Calendar>
                        </ZoneTemplate>
                        <MenuVerbHoverStyle BackColor="#F7F6F3" BorderColor="#CCCCCC" 
                            BorderStyle="Solid" BorderWidth="1px" ForeColor="#333333" />
                        <PartChromeStyle BackColor="#F7F6F3" BorderColor="#E2DED6" Font-Names="Verdana" 
                            ForeColor="White" />
                        <HeaderStyle Font-Size="0.7em" ForeColor="#CCCCCC" HorizontalAlign="Center" />
                        <MenuLabelStyle ForeColor="White" />
                    </asp:WebPartZone>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:WebPartZone ID="WebPartZone3" runat="server">
                    </asp:WebPartZone>
                </td>
                <td>
                    <asp:WebPartZone ID="WebPartZone4" runat="server">
                    </asp:WebPartZone>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
