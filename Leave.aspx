<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leave.aspx.cs" Inherits="LeaveApplication.Leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leave Application</title>
</head>

<body>
    <form id="form1" runat="server">

        <h2>Leave Application</h2>

        Employee Name:
        <asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox>
        <br /><br />

        Leave Date:
        <asp:TextBox ID="txtLeaveDate" runat="server"
            ReadOnly="true"></asp:TextBox>
        <br /><br />

        Leave Type:
        <asp:DropDownList ID="ddlLeaveType" runat="server">
            <asp:ListItem Text="-- Select Leave Type --" Value="">
            </asp:ListItem>

            <asp:ListItem Text="Medical Leave"
                Value="Medical Leave">
            </asp:ListItem>

            <asp:ListItem Text="Casual Leave"
                Value="Casual Leave">
            </asp:ListItem>

            <asp:ListItem Text="Personal Leave"
                Value="Personal Leave">
            </asp:ListItem>
        </asp:DropDownList>

        <br /><br />

        Reason:
        <br />

        <asp:TextBox ID="txtReason" runat="server"
            TextMode="MultiLine"
            Rows="5"
            Columns="30">
        </asp:TextBox>

        <br /><br />

        Load Adjusted With:
        <asp:TextBox ID="txtAdjustment" runat="server">
        </asp:TextBox>

        <br /><br />

        <asp:Button ID="btnSubmit" runat="server"
            Text="Submit Leave"
            OnClick="btnSubmit_Click" />

        <asp:Button ID="btnLogout" runat="server"
            Text="Logout"
            OnClick="btnLogout_Click" />

        <br /><br />

        <asp:Label ID="lblOutput" runat="server"
            ForeColor="Green">
        </asp:Label>

    </form>
</body>
</html>