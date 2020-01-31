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
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
       <HeaderTemplate>
          <table border="0" cellspacing="0" cellpadding="5">
          <tr bgcolor="FFCC99">
            <th>書號</th><th>書名</th><th>書價</th>
          </tr>
       </HeaderTemplate>
       <ItemTemplate>
         <tr>
           <td><%#Eval("BookID")%></td>
           <td><%#Eval("BookTitle")%></td>
           <td><%#Eval("BookPrice", "{0:c}")%></td>
         </tr>
       </ItemTemplate>
       <AlternatingItemTemplate>
         <tr bgcolor="yellow">
           <td><%#Eval("BookID")%></td>
           <td><%#Eval("BookTitle")%></td>
           <td><%#Eval("BookPrice", "{0:c}")%></td>
         </tr>
       </AlternatingItemTemplate>
       <FooterTemplate>
         </table>
       </FooterTemplate>
    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [BookID], [BookTitle], [BookPrice], [BookPubDate] FROM [Books]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
