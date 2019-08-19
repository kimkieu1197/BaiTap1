<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="taikhoan.aspx.cs" Inherits="kieukieukieukieudetai.taikhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tài khoản</title>
</head>
<body>
    <form id="form1" runat="server">
        TÀI KHOẢN 
        <ul class="menuTaiKhoan">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="taikhoan" NavigateUrl="~/Tai-Khoan" ForeColor="#7E592A">Cập nhật thông tin</asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="HyperLink10" runat="server" CssClass="taikhoan" NavigateUrl="~/Doi-Mat-Khau" ForeColor="#7E592A">Đổi mật khẩu</asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="taikhoan" NavigateUrl="~/Tai-Khoan/tai-lieu-cua-toi" ForeColor="#7E592A">Quản lý tài liệu</asp:HyperLink></li>
        <li>
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="taikhoan" NavigateUrl="~/Tai-Khoan/sach-cua-toi" ForeColor="#7E592A">Quản lý sách</asp:HyperLink></li>
    </ul>
    <div>
        <div>
            <label>Họ và tên:</label>
            <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Họ tên không được bỏ trống" ForeColor="Red" ControlToValidate="txtHoTen"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Email không được bỏ trống" ForeColor="Red" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email không đúng định dạng" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Cập nhật" OnClick="Button2_Click" />
            <asp:Label ID="lblthongbao" runat="server" Text="Thông báo"></asp:Label>
            <br />
        </div>
    </form>
</body>
</html>
