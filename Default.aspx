<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LeaveApplication.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Calendar</title>
</head>

<body>
    <form id="form1" runat="server">

        <h2>
            Welcome,
            <asp:Label ID="lblUsername" runat="server"></asp:Label>
        </h2>

        <h2>Academic Calendar</h2>

        <asp:Calendar ID="Calendar1" runat="server"
            OnSelectionChanged="Calendar1_SelectionChanged">
        </asp:Calendar>

        <br />

        Selected Date:
        <asp:Label ID="Label1" runat="server"
            Text="No date selected">
        </asp:Label>

        <br /><br />

        <asp:Button ID="btnApplyLeave" runat="server"
            Text="Apply Leave"
            OnClick="btnApplyLeave_Click">
        </asp:Button>

    </form>
</body>
</html>