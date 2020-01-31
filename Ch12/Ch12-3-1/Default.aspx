<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" 
            DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
            ForeColor="#284E98" StaticSubMenuIndent="10px" StaticDisplayLevels="2">
            <StaticSelectedStyle BackColor="#507CD1" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
            <DynamicMenuStyle BackColor="#B5C7DE" />
            <DynamicSelectedStyle BackColor="#507CD1" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Default.aspx" Text="首頁" Value="首頁">
                    <asp:MenuItem NavigateUrl="~/iPodVideo.aspx" Text="iPod Video" 
                        Value="iPod Video"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/iPodNano.aspx" Text="iPod Nano" Value="iPod Nano">
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/iPodShuffle.aspx" Text="iPod Shuffle" 
                        Value="iPod Shuffle"></asp:MenuItem>
                </asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
    </form>
</body>
</html>
