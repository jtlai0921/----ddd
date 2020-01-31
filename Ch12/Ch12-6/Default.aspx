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
    
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="XmlDataSource1">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="id" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="title" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="author" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="price" TextField="#InnerText" />
            </DataBindings>
        </asp:TreeView>
    
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Ch1-6-2.xml">
        </asp:XmlDataSource>
    
    </div>
    </form>
</body>
</html>
