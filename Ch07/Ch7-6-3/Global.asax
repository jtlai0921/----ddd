<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        Application["msg"] = "Application開始 ==><br/>";
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        Application["msg"] += "Application結束 ==><br/>";
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // 發生未處理錯誤時執行的程式碼
    }

    void Session_Start(object sender, EventArgs e) 
    {
        Application["msg"] += "Session開始 ==><br/>";
    }

    void Session_End(object sender, EventArgs e) 
    {
        Application["msg"] += "Session結束 ==><br/>";
    }
       
</script>
