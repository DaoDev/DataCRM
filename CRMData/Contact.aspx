<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Contact.aspx.vb" Inherits="CRMData.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hfContactID" runat="server" />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Mã khách hàng"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtMaKH" type="text" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Mã số thuế"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtMasothue" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Tên khách hàng"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtTenKH" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Mã địa bàn"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtMadiaban" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Tên địa bàn"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtTendiaban" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtEmail" type="Email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Số điện thoại"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtSodienthoai" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Ngày đăng ký"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtNgayDK" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Địa chỉ"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Email khác"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtEmailKhac" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Số điện thoại khác"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtSoDienThoaiKhac" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label12" runat="server" Text="Kế toán"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtKetoan" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Nhà cung cấp"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtNhaCC" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label14" runat="server" Text="Ngày hết hạn"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtNgayhethan" runat="server" TextMode="DateTime"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="Dữ liệu gốc"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtDLGoc" runat="server"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label16" runat="server" Text="Ngày cập nhập"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtNgaycapnhap" runat="server" TextMode="DateTime"></asp:TextBox>
                    </td>
                </tr>

                  <tr>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="Tài khoản cập nhập"></asp:Label>
                    </td>

                    <td>
                        <asp:TextBox ID="txtTaikhoancapnhap" runat="server"></asp:TextBox>
                    </td>
                </tr>

            </table>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAdd" runat="server" Text="Add" />
        &nbsp;&nbsp;
        <asp:Button ID="btnEdit" runat="server" Text="Edit" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnDelete" runat="server" Text="Delete" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKH" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="Masothue" HeaderText="Masothue" SortExpression="Masothue" />
                <asp:BoundField DataField="TenKH" HeaderText="TenKH" SortExpression="TenKH" />
                <asp:BoundField DataField="Madiaban" HeaderText="Madiaban" SortExpression="Madiaban" />
                <asp:BoundField DataField="Tendiaban" HeaderText="Tendiaban" SortExpression="Tendiaban" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Sodienthoai" HeaderText="Sodienthoai" SortExpression="Sodienthoai" />
                <asp:BoundField DataField="NgayDK" HeaderText="NgayDK" SortExpression="NgayDK" />
                <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
                <asp:BoundField DataField="EmailKhac" HeaderText="EmailKhac" SortExpression="EmailKhac" />
                <asp:BoundField DataField="SoDienThoaiKhac" HeaderText="SoDienThoaiKhac" SortExpression="SoDienThoaiKhac" />
                <asp:BoundField DataField="Ketoan" HeaderText="Ketoan" SortExpression="Ketoan" />
                <asp:BoundField DataField="NhaCC" HeaderText="NhaCC" SortExpression="NhaCC" />
                <asp:BoundField DataField="Ngayhethan" HeaderText="Ngayhethan" SortExpression="Ngayhethan" />
                <asp:BoundField DataField="DLGoc" HeaderText="DLGoc" SortExpression="DLGoc" />
                <asp:BoundField DataField="Ngaycapnhap" HeaderText="Ngaycapnhap" SortExpression="Ngaycapnhap" />
                <asp:BoundField DataField="Taikhoancapnhap" HeaderText="Taikhoancapnhap" SortExpression="Taikhoancapnhap" />
                <asp:ButtonField Text="Edit" />
                <asp:ButtonField Text="Delete" />
                <asp:ButtonField Text="View " />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CRMConnectionString %>" SelectCommand="SELECT * FROM [CRMKhachHang]"></asp:SqlDataSource>
    </form>
</body>
</html>

