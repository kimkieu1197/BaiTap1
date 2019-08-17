<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="kieukieukieubai5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 112px;
        }
        .auto-style2 {
            width: 112px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <table>
            <tr>
                <td colspan="2" align="center" class="tieude">
                    <asp:Label ID="Label3" runat="server" Text="ĐĂNG NHẬP"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:Label ID="Label1" runat="server" Text="Tài khoản"></asp:Label>
                </td>
                <td>
                     <input id="txttendangnhap" type="text" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
        <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label></td>
                <td><input id="txtmatkhau" type="password" runat="server" /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>

                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button class="btn" ID="btnLogin" runat="server"  OnClick="btndangnhap" Text="Đăng nhập" Height="42px" Width="121px" />
                </td>
            </tr>
        </table>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
