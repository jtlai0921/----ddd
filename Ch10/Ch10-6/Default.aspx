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
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                        DataKeyNames="BookID" InsertItemPosition="LastItem">
                        <AlternatingItemTemplate>
                            <tr style="background-color:#FFF8DC;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                                </td>
                                <td>
                                    <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookCatalogLabel" runat="server" 
                                        Text='<%# Eval("BookCatalog") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookAuthorLabel" runat="server" 
                                        Text='<%# Eval("BookAuthor") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Eval("BookPrice") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookPubDateLabel" runat="server" 
                                        Text='<%# Eval("BookPubDate") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <LayoutTemplate>
                            <table id="Table1" runat="server">
                                <tr id="Tr1" runat="server">
                                    <td id="Td1" runat="server">
                                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr id="Tr2" runat="server" style="background-color:#DCDCDC;color: #000000;">
                                                <th id="Th1" runat="server">
                                                </th>
                                                <th id="Th2" runat="server">
                                                    BookID</th>
                                                <th id="Th3" runat="server">
                                                    BookCatalog</th>
                                                <th id="Th4" runat="server">
                                                    BookTitle</th>
                                                <th id="Th5" runat="server">
                                                    BookAuthor</th>
                                                <th id="Th6" runat="server">
                                                    BookPrice</th>
                                                <th id="Th7" runat="server">
                                                    BookPubDate</th>
                                            </tr>
                                            <tr ID="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr id="Tr3" runat="server">
                                    <td id="Td2" runat="server" 
                                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookCatalogTextBox" runat="server" 
                                        Text='<%# Bind("BookCatalog") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookTitleTextBox" runat="server" 
                                        Text='<%# Bind("BookTitle") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookAuthorTextBox" runat="server" 
                                        Text='<%# Bind("BookAuthor") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookPriceTextBox" runat="server" 
                                        Text='<%# Bind("BookPrice") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookPubDateTextBox" runat="server" 
                                        Text='<%# Bind("BookPubDate") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                                </td>
                                <td>
                                    <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookCatalogLabel" runat="server" 
                                        Text='<%# Eval("BookCatalog") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookAuthorLabel" runat="server" 
                                        Text='<%# Eval("BookAuthor") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Eval("BookPrice") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookPubDateLabel" runat="server" 
                                        Text='<%# Eval("BookPubDate") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                        <EmptyDataTemplate>
                            <table id="Table2" runat="server" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>
                                        未傳回資料。</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EditItemTemplate>
                            <tr style="background-color:#008A8C;color: #FFFFFF;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                                </td>
                                <td>
                                    <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookCatalogTextBox" runat="server" 
                                        Text='<%# Bind("BookCatalog") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookTitleTextBox" runat="server" 
                                        Text='<%# Bind("BookTitle") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookAuthorTextBox" runat="server" 
                                        Text='<%# Bind("BookAuthor") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookPriceTextBox" runat="server" 
                                        Text='<%# Bind("BookPrice") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="BookPubDateTextBox" runat="server" 
                                        Text='<%# Bind("BookPubDate") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color:#DCDCDC;color: #000000;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                                </td>
                                <td>
                                    <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookCatalogLabel" runat="server" 
                                        Text='<%# Eval("BookCatalog") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookAuthorLabel" runat="server" 
                                        Text='<%# Eval("BookAuthor") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Eval("BookPrice") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="BookPubDateLabel" runat="server" 
                                        Text='<%# Eval("BookPubDate") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT * FROM [Books]" 
                        DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" 
                        InsertCommand="INSERT INTO [Books] ([BookID], [BookCatalog], [BookTitle], [BookAuthor], [BookPrice], [BookPubDate]) VALUES (@BookID, @BookCatalog, @BookTitle, @BookAuthor, @BookPrice, @BookPubDate)" 
                        UpdateCommand="UPDATE [Books] SET [BookCatalog] = @BookCatalog, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookPrice] = @BookPrice, [BookPubDate] = @BookPubDate WHERE [BookID] = @BookID">
                        <DeleteParameters>
                            <asp:Parameter Name="BookID" Type="String" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="BookCatalog" Type="String" />
                            <asp:Parameter Name="BookTitle" Type="String" />
                            <asp:Parameter Name="BookAuthor" Type="String" />
                            <asp:Parameter Name="BookPrice" Type="Decimal" />
                            <asp:Parameter Name="BookPubDate" Type="DateTime" />
                            <asp:Parameter Name="BookID" Type="String" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="BookID" Type="String" />
                            <asp:Parameter Name="BookCatalog" Type="String" />
                            <asp:Parameter Name="BookTitle" Type="String" />
                            <asp:Parameter Name="BookAuthor" Type="String" />
                            <asp:Parameter Name="BookPrice" Type="Decimal" />
                            <asp:Parameter Name="BookPubDate" Type="DateTime" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
