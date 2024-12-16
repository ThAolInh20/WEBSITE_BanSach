<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web_bansach.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button
                runat="server"
                Text="Trang bán hàng"
                OnClientClick="window.location.href='views/user/trangchu.aspx'; return false;" />
            <asp:Button
                runat="server"
                Text="Trang quản lý"
                OnClientClick="window.location.href='views/admin/trangchuAdmin.aspx'; return false;" />
        </div>
    </form>
</body>
</html>
