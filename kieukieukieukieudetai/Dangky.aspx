<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="kieukieukieukieudetai.Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký thư viện</title>
</head>
<body>
    <form id="form1" runat="server"><div align="center"><h2>ĐĂNG KÝ THƯ VIỆN</h2></div>
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
        </div>
        <div>
            <label>Tên đăng nhập:</label>
            <asp:TextBox ID="txtTenDangNhap" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Tên đăng nhập không được bỏ trống" ForeColor="Red" ControlToValidate="txtTenDangNhap"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Mật khẩu:</label>
            <asp:TextBox ID="txtMatKhau" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mật khẩu không được bỏ trống" ForeColor="Red" ControlToValidate="txtMatKhau"></asp:RequiredFieldValidator>
        </div>
        <div>
            <label>Nhập laị mật khẩu:</label>
            <asp:TextBox ID="txtNhapLaiMK" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mật khẩu chưa được nhập lại" ForeColor="Red" ControlToValidate="txtNhapLaiMK"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu không giống nhau" ControlToCompare="txtMatKhau" ControlToValidate="txtNhapLaiMK" ForeColor="Red"></asp:CompareValidator>
        </div>
        <asp:Button ID="btndangki" runat="server" OnClick="Button1_Click" Text="Đăng kí" />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Quen-Mat-Khau">  Quên mật khẩu?</asp:HyperLink>
        <asp:Label ID="lblthongbao" runat="server" Text="Thông báo"></asp:Label>
    </div>
    </form>
</body>
</html>
