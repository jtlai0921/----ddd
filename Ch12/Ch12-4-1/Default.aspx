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
    
        <asp:TreeView ID="TreeView1" runat="server" ImageSet="XPFileExplorer" 
            NodeIndent="15">
            <ParentNodeStyle Font-Bold="False" />
            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
            <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" 
                HorizontalPadding="0px" VerticalPadding="0px" />
            <Nodes>
                <asp:TreeNode NavigateUrl="~/Default.aspx" Text="首頁" Value="首頁">
                    <asp:TreeNode NavigateUrl="~/Mp3.aspx" Text="MP3播放器" Value="MP3播放器">
                        <asp:TreeNode NavigateUrl="~/iPodVideo.aspx" Text="iPod Video" 
                            Value="iPod Video"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/iPodNano.aspx" Text="iPod Nano" Value="iPod Nano">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/iPodShuffle.aspx" Text="iPod Shuffle" 
                            Value="iPod Shuffle"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Computers.aspx" Text="電腦" Value="電腦">
                        <asp:TreeNode NavigateUrl="~/Desktop.aspx" Text="桌上型" Value="桌上型">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Notebook.aspx" Text="筆記型" Value="筆記型">
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/PDA.aspx" Text="數位助理" Value="數位助理"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" 
                HorizontalPadding="2px" NodeSpacing="0px" VerticalPadding="2px" />
        </asp:TreeView>
    
    </div>
    </form>
</body>
</html>
