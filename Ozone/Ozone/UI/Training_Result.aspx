<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Training_Result.aspx.cs" Inherits="Ozone.Styles.Training_Result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Training_Result" runat="server">
    <div>
        <table align="center">
            <tr>
                <td style="padding: 5px;">
                    <asp:Label ID="lblTitle" runat="server" Text="Label">หัวข้อ</asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTitle" runat="server" Width="198px">
                    </asp:DropDownList>
                </td>
                <td style="padding: 5px;">
                    <asp:Label ID="lblDateStart" runat="server" Text="Label">วันที่เริ่มอบรม</asp:Label>
                </td> 
                <td>
                
                    <input type="text" name="dateStart" id="dateStart" value="" runat="server" style="width:198px"/> 
                </td>
            
                <td style="padding: 5px;">
                    <asp:Label ID="lblDateEnd" runat="server" Text="Label">วันที่สิ้นสุดอบรม</asp:Label>
                </td>
                <td>
                    <input type="text" name="dateEnd" id="dateEnd" value="" runat="server" style="width:198px"/> 
                
                </td>  
            </tr>

            <tr>
                <td style="padding: 5px;">
                    <asp:Label ID="lblAddress" runat="server" Text="Label">สถานที่</asp:Label>
                </td>
                <td> 
                    <asp:TextBox ID="txtAddress" runat="server" Width="198px" ></asp:TextBox>
                </td>
           
                <td style="padding: 5px;">
                    <asp:Label ID="lblOwner" runat="server" Text="Label">ผู้จัดการอบรม</asp:Label>
                </td>
                <td><asp:TextBox ID="txtOwner" runat="server" Width="198px"></asp:TextBox></td>
            
                <td style="padding: 5px;">
                    <asp:Label ID="lblParticipant" runat="server" Text="Label">จำนวนผู้เข้าร่วม</asp:Label>
                </td>
                <td> 
                    <asp:TextBox ID="txtParticipant" runat="server" Width="198px" 
                        onkeypress="return EnterEvent(event)" MaxLength="2"></asp:TextBox>
                </td>
            </tr>
            
        </table>

        <p align="center"> รายละเอียดผู้เข้าร่วม </p>

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>

        <p align="center"> ตำแหน่งงาน </p>

        <asp:GridView ID="GridView2" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
