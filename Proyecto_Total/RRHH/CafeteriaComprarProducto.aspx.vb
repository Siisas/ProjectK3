
Public Class CafeteriaComprarProducto
    Inherits System.Web.UI.Page
    Dim ObjetoClsCafeteriaProductos As New clsCafeteriaProductos


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Session("permisos") Is Nothing Then
                Response.Redirect("~/entrada.aspx?ReturnUrl=" & Request.RawUrl)
            End If
            Pnl_Message.CssClass = Nothing
            lblmsg.Text = Nothing
            If Not IsPostBack Then
                Session("Formulario") = "Ingreso Productos"
                LlenatDDL()
            End If

        Catch ex As Exception
            Pnl_Message.CssClass = "alert alert-danger"
            lblmsg.Text = "<span class='glyphicon glyphicon-remove-sign'></span> " & ex.Message
        End Try
    End Sub
    Public Sub LlenatDDL()
        Drl_Productos.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlComprarProductos()
        Drl_Productos.DataTextField = "NombreProducto"
        Drl_Productos.DataValueField = "IdProducto"
        Drl_Productos.DataBind()
        Drl_Productos.Items.Insert(0, "- Seleccione -")
        Drl_Categoria.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlComprarProductos()
        Drl_Categoria.DataTextField = "Categoria"
        Drl_Categoria.DataValueField = "Categoria"
        Drl_Categoria.DataBind()
        Drl_Categoria.Items.Insert(0, "- Selecciones -")
        Drl_NombreEmpleado.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlComprarProductos()
        Drl_NombreEmpleado.DataTextField = "NombreEmpleado"
        Drl_NombreEmpleado.DataValueField = "NombreEmpleado"
        Drl_NombreEmpleado.DataBind()
        Drl_NombreEmpleado.Items.Insert(0, "- Seleccione -")
        Drl_NombreCliente.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlComprarProductos()
        Drl_NombreCliente.DataTextField = "NombreCliente"
        Drl_NombreCliente.DataValueField = "NombreCliente"
        Drl_NombreCliente.DataBind()
        Drl_NombreCliente.Items.Insert(0, "- Seleccione -")
    End Sub
    Protected Sub btn_Agregar_Click(sender As Object, e As EventArgs) Handles btn_Agregar.Click
        ObjetoClsCafeteriaProductos.PublicNombreProducto = Drl_Productos.SelectedValue
        ObjetoClsCafeteriaProductos.PublicCategoria = Drl_Categoria.SelectedValue
        ObjetoClsCafeteriaProductos.PublicNombreEmpleado = Drl_NombreEmpleado.SelectedValue
        ObjetoClsCafeteriaProductos.PublicValorProducto = TxtValor.Text
        ObjetoClsCafeteriaProductos.PublicCantidadProducto = TxtCantidadProducto.Text
        ObjetoClsCafeteriaProductos.PublicNombreCliente = Drl_NombreCliente.SelectedValue
    End Sub

End Class