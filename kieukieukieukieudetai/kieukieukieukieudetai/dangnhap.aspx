<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="kieukieukieukieudetai.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ĐĂNG NHẬP THƯ VIỆN</title>
</head>
<body>
            <div>
                <form id="form2" runat ="server"><div align="center"><h2>ĐĂNG NHẬP</h2></div>
                    <table id="Login1" cellspacing="0" cellpadding="0" border="0" style="width: 408px; border-collapse: collapse;">
                        <tr>
                            <td>
                                <table style="width: 100%;" align="center" cellpadding="4px;">
                                    <tr>
                                        <td class="auto-style1" align="right">Tên đăng nhập:
                                        </td>
                                        <td align="left" class="auto-style2">
                                            <asp:TextBox ID="txtUserName" runat="server" Style="width: 170px;"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Tên đăng nhập không được trống" Text="*" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 40%;" class="textinput" align="right">Mật khẩu:
                                        </td>
                                        <td style="width: 60%" align="left">
                                            <asp:TextBox ID="txtMatKhau" runat="server" class="login-pw" Style="width: 170px;" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mật khẩu không đc trống" Text="*" ForeColor="Red" ControlToValidate="txtMatKhau"></asp:RequiredFieldValidator>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center" class="auto-style3">
                                            <a class="textlink">Hiện mật khẩu</a> |
                                        <asp:HyperLink ID="Forgotpassword" runat="server" class="textlink">Quên mật khẩu?</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr align="center">
                                        <td colspan="2">
                                            <img src="images/line.jpg" width="300" height="1" alt="" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnDangNhap" runat="server" Text="Đăng nhập" class="stylebtn" OnClick="btnDangNhap_Click" />
                                            <asp:Label ID="lblthongbao" runat="server" Text="thông báo"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
    
</body>
</html>
