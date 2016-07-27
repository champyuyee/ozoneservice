<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecordTraining.aspx.cs" Inherits="Ozone.UI.RecordTraining" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Css/jquery-ui-timepicker-addon.css" rel="stylesheet" type="text/css" />
    <link href="../Css/jquery-ui.css" rel="stylesheet" type="text/css" />

    <script src="../Scripts/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery-ui.min.js" type="text/javascript"></script>

    <script src="../Scripts/jquery-ui-timepicker-addon.js" type="text/javascript"></script>
    <script src="../Scripts/jquery-ui-sliderAccess.js" type="text/javascript"></script>

    <script type="text/javascript">

        $(function () {

            var startDateTextBox = $('#dateStart');
            var endDateTextBox = $('#dateEnd');

            startDateTextBox.datepicker({
                dateFormat: 'dd-mm-yy',
                onClose: function (dateText, inst) {
                    if (endDateTextBox.val() != '') {
                        var testStartDate = startDateTextBox.datetimepicker('getDate');
                        var testEndDate = endDateTextBox.datetimepicker('getDate');
                        if (testStartDate > testEndDate)
                            endDateTextBox.datetimepicker('setDate', testStartDate);
                    }
                    else {
                        startDateTextBox.val(dateText);
                    }
                },
                onSelect: function (selectedDateTime) {
                    endDateTextBox.datetimepicker('option', 'minDate', startDateTextBox.datetimepicker('getDate'));
                }
            });
            endDateTextBox.datepicker({
                dateFormat: 'dd-mm-yy',
                onClose: function (dateText, inst) {
                    if (startDateTextBox.val() != '') {
                        var testStartDate = startDateTextBox.datetimepicker('getDate');
                        var testEndDate = endDateTextBox.datetimepicker('getDate');
                        if (testStartDate > testEndDate)
                            startDateTextBox.datetimepicker('setDate', testEndDate);
                    }
                    else {
                        endDateTextBox.val(dateText);
                    }
                },
                onSelect: function (selectedDateTime) {
                    startDateTextBox.datetimepicker('option', 'maxDate', endDateTextBox.datetimepicker('getDate'));
                }
            });

        });

        function EnterEvent(e) {

            if (!(e.keyCode >= 48 && e.keyCode <= 57)) {
                e.preventDefault();
            }
        }

        </script>
        
</head>
<body>
    <form id="RecordTraining" runat="server">
    <div>
        
        <table align="center">
        <tr>
            <td style="padding: 5px;">
                <asp:Label ID="lblTitle" runat="server" Text="Label">หัวข้อ</asp:Label>
            </td>
            <td><asp:TextBox ID="txtTitle" runat="server" Width="198px"></asp:TextBox></td>
            
        </tr>

        <tr>
            <td style="padding: 5px;">
                <asp:Label ID="lblOwner" runat="server" Text="Label">ผู้จัดการอบรม</asp:Label>
            </td>
            <td><asp:TextBox ID="txtOwner" runat="server" Width="198px"></asp:TextBox></td>
            
        </tr>

        <tr>
            <td style="padding: 5px;">
                <asp:Label ID="lblAddress" runat="server" Text="Label">สถานที่</asp:Label>
            </td>
            <td> 
                <asp:TextBox ID="txtAddress" runat="server" Width="198px" ></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td style="padding: 5px;">
                <asp:Label ID="lblDateStart" runat="server" Text="Label">วันที่เริ่มอบรม</asp:Label>
            </td>    
            <td>
                
                <input type="text" name="dateStart" id="dateStart" value="" runat="server" style="width: 198px;"/> 
            </td>            
        </tr>

        <tr>
            <td style="padding: 5px;">
                <asp:Label ID="lblDateEnd" runat="server" Text="Label">วันที่สิ้นสุดอบรม</asp:Label>
            </td>
            <td>
                <input type="text" name="dateEnd" id="dateEnd" value="" runat="server" style="width: 198px;"/> 
                
            </td>  
        </tr>

        <tr>
            <td style="padding: 5px;">
                <asp:Label ID="lblParticipant" runat="server" Text="Label">จำนวนผู้เข้าร่วม</asp:Label>
            </td>
            <td> 
                <asp:TextBox ID="txtParticipant" runat="server" Width="198px" 
                    onkeypress="return EnterEvent(event)" MaxLength="2"></asp:TextBox>
            </td>
        </tr>
            
        </table>

        <table align="center">
            <tr>
                <td>    
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" 
                        onclick="btnConfirm_Click" />
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" 
                        onclick="btnClear_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>

</body>
</html>
