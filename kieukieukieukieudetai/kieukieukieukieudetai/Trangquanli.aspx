<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangquanli.aspx.cs" Inherits="kieukieukieukieudetai.Trangquanli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>QUẢNG LÝ SÁCH</title>
</head>
<body>
                    <form id="form1" runat="server">
                    <div>
                        <h2 class="left">Danh sách Sách</h2>
                    </div>
                        <div class="box-content">
                            <p class="select-all">
                            <asp:CheckBox ID="ckbChonAll" runat="server" CssClass="checkbox" Text="Chọn tất cả" AutoPostBack="True" OnCheckedChanged="ckbChonAll_CheckedChanged" />
                        </p>
                            <p class="select-all">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                    <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="ckbChon" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="ID" DataField="IDSach" />
                            <asp:BoundField HeaderText="Tên Sách" DataField="TenSach" HeaderStyle-Width="100px" />
                            <asp:BoundField HeaderText="Tác Giả" DataField="TacGia" />    
                            <asp:BoundField HeaderText="Thể Loại Sách" DataField="TenTheLoai" />
                            <asp:BoundField HeaderText="Nhà Xuất Bản" DataField="TenNhaXuatBan" />
                            <asp:BoundField HeaderText="Người viết" DataField="UserName" />
                            <asp:BoundField HeaderText="Trạng Thái" DataField="TrangThai" />
                            <asp:TemplateField HeaderText="Control">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnEdit" runat="server" ImageUrl="~/Admin/css/images/edit.png" CommandName="Sua" CommandArgument='<%# Eval("IDSach") %>'/> 
                                    <asp:ImageButton ID="btnDel" runat="server" ImageUrl="~/Admin/css/images/del.png" CommandName="Xoa" CommandArgument='<%# Eval("IDSach") %>' CausesValidation="false" OnClientClick='return confirm("Bạn chắc chắn muốn xóa chứ?");' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                                </asp:GridView>
                        </p>
                            <asp:Button ID="Sửa" runat="server" Text="btnsua" />
                        <p>
                            <asp:Button ID="btnXoaAll" runat="server" Text="Xóa mục đang chọn" CssClass="button" ForeColor="Red" OnClick="btnXoaAll_Click" />
                            </p>
                            <div class="box-content">
                                <p>
                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/QLNhaXuatBan.aspx">Quản lý Nhà Xuất Bản</asp:HyperLink>
                                </p>
                                <p>
                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin/QLTheLoaiSach.aspx">Quản lý Thể Loại Sách</asp:HyperLink>
                                </p>
                            </div>
                    </div>
    </form>
</body>
</html>
