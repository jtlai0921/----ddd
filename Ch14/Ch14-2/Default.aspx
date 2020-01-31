<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void AdRotator1_AdCreated(object sender, AdCreatedEventArgs e)
    {
        lblOutput.Text = e.AdProperties["Caption"].ToString();
        lblOutput.Text += "連結網址: " + e.NavigateUrl;
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
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/Ch14-2.xml" 
                                    KeywordFilter="Programming" onadcreated="AdRotator1_AdCreated" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                    <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
