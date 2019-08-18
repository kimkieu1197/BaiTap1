<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doimatkhau.aspx.cs" Inherits="kieukieukieukieudetai.doimatkhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Đổi mật khẩu thư viện</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="center_title_bar">
        <div align="center"><h2>ĐỔI MẬT KHẨU</h2></div>
    </div>
    <div class="form-login">
        <div class="form-group">
            <label>Nhập mật khẩu cũ:</label>
            <asp:TextBox ID="txtMatKhau" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mật khẩu cũ không được bỏ trống" ForeColor="Red" ControlToValidate="txtMatKhau"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>Nhập mật khẩu mới:</label>
            <asp:TextBox ID="txtMatKhauMoi" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mật khẩu mới không được bỏ trống" ForeColor="Red" ControlToValidate="txtMatKhauMoi"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label>Nhập lại mật khẩu mới:</label>
            <asp:TextBox ID="txtMatKhauMoi2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Mật khẩu nhập lại không được bỏ trống" ForeColor="Red" ControlToValidate="txtMatKhauMoi2"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Mật khẩu nhập lại không đúng" ForeColor="Red" ControlToCompare="txtMatKhauMoi2" ControlToValidate="txtMatKhauMoi"></asp:CompareValidator>
    </div>
            <label>
        <asp:Button ID="btncapnhat" runat="server" Text="Cập nhật" OnClick="btncapnhat_Click" />
        </label>
            <asp:Label ID="lblthongbao" runat="server" Text="Thông báo"></asp:Label>
        <br />
   </div>
    </form>
</body>
</html>
