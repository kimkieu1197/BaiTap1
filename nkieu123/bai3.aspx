<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai3.aspx.cs" Inherits="nkieu123.bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 197px;
            margin-left: 120px;
        }
        .auto-style2 {
            width: 197px;
            height: 23px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 197px;
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
        }
        .auto-style6 {
            width: 197px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
        .auto-style8 {
            width: 197px;
            height: 30px;
            margin-left: 120px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            width: 197px;
            height: 23px;
            margin-left: 120px;
        }
        .auto-style11 {
            width: 197px;
            height: 26px;
            margin-left: 120px;
        }
        .auto-style12 {
            width: 197px;
            margin-left: 120px;
            height: 68px;
        }
        .auto-style13 {
            height: 68px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 280px">
            <asp:Label ID="Label1" runat="server" ForeColor="#FF33CC" Text="ĐĂNG KÝ THÔNG TIN VIỆC LÀM"></asp:Label>
        </div>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblttcn" runat="server" BackColor="#66FF33" Text="Thông Tin Cá Nhân"></asp:Label>
                </td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblhovaten" runat="server" Text="*Họ &amp; tên"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txthoten" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvhovaten" runat="server" ControlToValidate="txthoten" ErrorMessage="Nhập họ tên cần tìm"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblngaythangnamsinh" runat="server" Text="*Ngày tháng năm sinh"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtngaythangnamsinh" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="cpvngaythangnamsinh" runat="server" ControlToValidate="txtngaythangnamsinh" ErrorMessage="Nhập ngày tháng năm sinh" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblgioitinh" runat="server" Text="*Giới tính"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlgioitinh" runat="server" Width="123px">
                        <asp:ListItem Value="1">Bê đê</asp:ListItem>
                        <asp:ListItem Value="fale">Nam</asp:ListItem>
                        <asp:ListItem Value="true">Nữ</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvgioitinh" runat="server" ControlToValidate="ddlgioitinh" ErrorMessage="Nhập giới tính"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lbltrinhtranghonnhan" runat="server" Text="Tình trạng hôn nhân"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddltrinhtranghn" runat="server" Width="125px">
                        <asp:ListItem Value="1">Độc thân</asp:ListItem>
                        <asp:ListItem Value="2">Kết hôn</asp:ListItem>
                        <asp:ListItem Value="3">Góa phụ</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvtinhtranghonnhan" runat="server" ControlToValidate="ddltrinhtranghn" ErrorMessage="Cho biết hôn nhân hiện tại"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblttll" runat="server" BackColor="#66FF33" Text="Thông Tin Liên Lạc"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lbldiachi" runat="server" Text="*Địa chỉ"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvdiachi" runat="server" ControlToValidate="txtdiachi" ErrorMessage="Nhập địa chỉ"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbltinhthanhpho" runat="server" Text="*Tỉnh/thành phố"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttinhthanhpho" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtinhthanhpho" runat="server" ControlToValidate="txttinhthanhpho" ErrorMessage="Nhập tình thành phố bạn đang sống"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblsodienthoai" runat="server" Text="*Số điện thoại"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvsdt" runat="server" ControlToValidate="txtsdt" ErrorMessage="Nhập số điện thoại"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="lblsodientdd" runat="server" Text="*Số điện thoại di động"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtsdtdd" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvsdtdd" runat="server" ControlToValidate="txtsdtdd" ErrorMessage="Nhập số điện thoại"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblemail" runat="server" Text="*Email"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Nhập email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lbltdhv" runat="server" BackColor="#66FF33" Text="Trình Độ Học Vấn"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbltrinhdohocvan" runat="server" Text="*Trình độ học vấn"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="đltrinhdohv" runat="server" Width="131px">
                        <asp:ListItem Value="1">Đại học</asp:ListItem>
                        <asp:ListItem Value="2">Cao đẳng</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvtrinhdohv" runat="server" ControlToValidate="đltrinhdohv" ErrorMessage="Nhập trình độ học vấn hiện tại của bạn"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblthongtinhocvan" runat="server" Text="*Thông tin học vấn"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtthongtinhv" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvthongtinhv" runat="server" ControlToValidate="txtthongtinhv" ErrorMessage="Nhập thông tin học vấn"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblngoaingu" runat="server" Text="*Ngoại ngữ"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtngoaingu" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtrinhdnn" runat="server" ControlToValidate="txtngoaingu" ErrorMessage="Nhập trình độ ngoại ngữ hiện có"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblkinang" runat="server" Text="*Kỉ năng"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtkinang" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvkinang" runat="server" ControlToValidate="txtkinang" ErrorMessage="Nhập trình độ kỉ năng của bạn"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblmmbt" runat="server" BackColor="#66FF33" Text="Mong Muốn Của Bản Thân"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="lblvieclammm" runat="server" Text="*Việc làm mong muốn"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtvieclammm" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvvieclammongmuon" runat="server" ControlToValidate="txtvieclammm" ErrorMessage="Nhập việc làm mong muốn"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Label ID="lblmucluongtt" runat="server" Text="*Mức lương thỏa thuận"></asp:Label>
                    </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtmucluongtt" runat="server"></asp:TextBox><a>VND</a>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" BackColor="#66FF33" Text="Khinh nghiệm làm việc"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblsnkn" runat="server" Text="*Số năm khinh nghiệm"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtsnkn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblknlv" runat="server" Text="*Khinh nghiệm làm việc"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtknlviec" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="lblthongbao" runat="server" Text="Thông báo"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="btnguithongtin" runat="server" Text="Gửi thông tin" />
                    <asp:Button ID="btnxoaform" runat="server" Text="Xóa form" />
                    <asp:Button ID="btndangky" runat="server" OnClick="btndangky_Click" Text="Đăng ký" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:ValidationSummary ID="vstomtatloi" runat="server" />
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="588px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
