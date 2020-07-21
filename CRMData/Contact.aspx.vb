
Imports System.Data
Imports System.Data.SqlClient

Public Class Contact
	Inherits System.Web.UI.Page

    Public Property MessageBox As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
        Dim con As SqlConnection = New SqlConnection("Data Source=DESKTOP-KJ2TNUV\SQLEXPRESS;Initial Catalog=CRM;Integrated Security=True")
        Dim cmd As SqlCommand = New SqlCommand("INSERT INTO [dbo].[CRMKhachHang]
           ([MaKH]
           ,[Masothue]
           ,[TenKH]
           ,[Madiaban]
           ,[Tendiaban]
           ,[Email]
           ,[Sodienthoai]
           ,[NgayDK]
           ,[DiaChi]
           ,[EmailKhac]
           ,[SoDienThoaiKhac]
           ,[Ketoan]
           ,[NhaCC]
           ,[Ngayhethan]
           ,[DLGoc]
           ,[Ngaycapnhap]
           ,[Taikhoancapnhap])
     VALUES
           ('" + txtMaKH.Text + "',
            '" + txtMasothue.Text + "',
            '" + txtTenKH.Text + "',
            '" + txtMadiaban.Text + "',
            '" + txtTendiaban.Text + "',
            '" + txtEmail.Text + "',
            '" + txtSodienthoai.Text + "',
            '" + txtNgayDK.Text + "',
            '" + txtDiaChi.Text + "',
            '" + txtEmailKhac.Text + "',
            '" + txtSoDienThoaiKhac.Text + "',
            '" + txtKetoan.Text + "',
            '" + txtNhaCC.Text + "',
            '" + txtNgayhethan.Text + "',
            '" + txtDLGoc.Text + "',
            '" + txtNgaycapnhap.Text + "',
            '" + txtTaikhoancapnhap.Text + "')")
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

	End Sub

    Protected Sub btnEdit_Click(sender As Object, e As EventArgs) Handles btnEdit.Click
        Dim con As SqlConnection = New SqlConnection("Data Source=DESKTOP-KJ2TNUV\SQLEXPRESS;Initial Catalog=CRM;Integrated Security=True")
        Dim cmd As SqlCommand = New SqlCommand("UPDATE [dbo].[CRMKhachHang]
   SET [MaKH] = '" + txtMaKH.Text + "'
      ,[Masothue] = '" + txtMasothue.Text + "'
      ,[TenKH] ='" + txtTenKH.Text + "'
      ,[Madiaban] = '" + txtMadiaban.Text + "'
      ,[Tendiaban] = '" + txtTendiaban.Text + "'
      ,[Email] = '" + txtEmail.Text + "'
      ,[Sodienthoai] = '" + txtSodienthoai.Text + "'
      ,[NgayDK] = '" + txtNgayDK.Text + "'
      ,[DiaChi] = '" + txtDiaChi.Text + "'
      ,[EmailKhac] = '" + txtDiaChi.Text + "'
      ,[SoDienThoaiKhac] = '" + txtSoDienThoaiKhac.Text + "'
      ,[Ketoan] = '" + txtKetoan.Text + "'
      ,[NhaCC] = '" + txtNhaCC.Text + "'
      ,[Ngayhethan] = '" + txtNgayhethan.Text + "'
      ,[DLGoc] = '" + txtDLGoc.Text + "'
      ,[Ngaycapnhap] =  '" + txtNgaycapnhap.Text + "'
      ,[Taikhoancapnhap] = '" + txtTaikhoancapnhap.Text + "' WHERE [MaKH]= '" + txtMaKH.Text + "'", con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
    End Sub

    Protected Sub btnDelete_Click(sender As Object, e As EventArgs) Handles btnDelete.Click
        Dim con As SqlConnection = New SqlConnection("Data Source=DESKTOP-KJ2TNUV\SQLEXPRESS;Initial Catalog=CRM;Integrated Security=True")
        Dim cmd As SqlCommand = New SqlCommand("DELETE FROM [dbo].[CRMKhachHang]
      WHERE [MaKH]='" + txtMaKH.Text + "'", con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
    End Sub


End Class