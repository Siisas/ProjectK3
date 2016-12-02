
Public Class CafeteriaComprarProducto
    Inherits System.Web.UI.Page
    Dim ObjetoClsCafeteriaProductos As New clsCafeteriaProductos
    Dim dt As New DataTable


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Session("permisos") Is Nothing Then
                Response.Redirect("~/entrada.aspx?ReturnUrl=" & Request.RawUrl)
            End If
            Pnl_Message.CssClass = Nothing
            lblmsg.Text = Nothing
            If Not IsPostBack Then
                Session("Formulario") = "Compra de Productos"
                LlenatDDL()
                Detalle()
                'ValorTotalVenta()
                Session("AcumulaRegistros") = dt

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
        Drl_Categoria.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlComprarCategoria()
        Drl_Categoria.DataTextField = "Categoria"
        Drl_Categoria.DataValueField = "IdCategoria"
        Drl_Categoria.DataBind()
        Drl_Categoria.Items.Insert(0, "- Seleccione -")
        Drl_NombreEmpleado.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlComprarNombreEmpleado()
        Drl_NombreEmpleado.DataTextField = "NombreEmpleado"
        Drl_NombreEmpleado.DataValueField = "CodigoEmpleado"
        Drl_NombreEmpleado.DataBind()
        Drl_NombreEmpleado.Items.Insert(0, "- Seleccione -")
        'Lbl_Valor.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlValorProducto
        'Drl_Valor.DataTextField = "ValorProducto"
        'Drl_Valor.DataValueField = "ValorProducto"
        'Drl_Valor.DataBind()
        'Drl_Valor.Items.Insert(0, "- Seleccione -")
        Drl_NombreCliente.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlComprarNombreCliente()
        Drl_NombreCliente.DataTextField = "NombreCliente"
        Drl_NombreCliente.DataValueField = "NombreCLiente"
        Drl_NombreCliente.DataBind()
        Drl_NombreCliente.Items.Insert(0, "- Seleccione -")
    End Sub
    Private Sub Detalle()
        'dt.Columns.Add(New DataColumn("Codigo del Producto", GetType(Integer)))
        dt.Columns.Add(New DataColumn("Nombre del Producto", GetType(String)))
        dt.Columns.Add(New DataColumn("Categoria", GetType(String)))
        dt.Columns.Add(New DataColumn("Nombre del Empleado", GetType(String)))
        dt.Columns.Add(New DataColumn("Valor", GetType(Integer)))
        dt.Columns.Add(New DataColumn("Cantidad", GetType(Integer)))
        dt.Columns.Add(New DataColumn("Nombre del Cliente", GetType(String)))

    End Sub

    'Private Sub ValorTotalVenta()

    '    TxtValorTotal.Text = TxtCantidadProducto.Text * Lbl_Valor.Text
    'kkk
    'End Sub
    Protected Sub btn_Agregar_Click(sender As Object, e As EventArgs) Handles btn_Agregar.Click
        Dim totalSuma As Integer
        Dim dt As DataTable
        dt = Session("AcumulaRegistros")
        TxtValorTotal.Text = Session("ValorTotal")
        dt.Rows.Add(Convert.ToString(Drl_Productos.SelectedItem), Convert.ToString(Drl_Categoria.SelectedItem), Convert.ToString(Drl_NombreEmpleado.SelectedItem), Convert.ToString(Lbl_Valor.Text), Convert.ToString(TxtCantidadProducto.Text), Convert.ToString(Drl_NombreCliente.SelectedValue),) 'Convert.ToInt32(TxtValorTotal.Text) = (Lbl_Valor.Text) * (TxtCantidadProducto.Text) 
        dt.AcceptChanges()
        totalSuma = totalSuma + TxtCantidadProducto.Text * Lbl_Valor.Text
        Gtg_TotalCompras.DataSource = dt
        Gtg_TotalCompras.DataBind()
        Session("AcumulaRegistros") = dt
        Session("ValorTotal") = (TxtValorTotal.Text)

    End Sub

    Protected Sub btn_Comprar_Click(sender As Object, e As EventArgs) Handles btn_Comprar.Click
        'ObjetoClsCafeteriaProductos.RegProductos  Session("Key")
        'Dim dt As DataTable = TryCast(Session("datos"), DataTable)
        'ObjetoClsCafeteriaProductos.PublicNombreProducto = Drl_Productos.SelectedValue
        'ObjetoClsCafeteriaProductos.PublicCategoria = Drl_Categoria.SelectedValue
        'ObjetoClsCafeteriaProductos.PublicNombreEmpleado = Drl_NombreEmpleado.SelectedValue
        'ObjetoClsCafeteriaProductos.PublicValorProducto = TxtValor.Text
        'ObjetoClsCafeteriaProductos.PublicCantidadProducto = TxtCantidadProducto.Text
        'ObjetoClsCafeteriaProductos.PublicNombreCliente = Drl_NombreCliente.SelectedValue
    End Sub

    Protected Sub Gtg_TotalCompras_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Gtg_TotalCompras.SelectedIndexChanged

    End Sub

    Protected Sub Drl_Productos_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Drl_Productos.SelectedIndexChanged
        'Dim a As Integer = Drl_Productos.SelectedValue

        'ObjetoClsCafeteriaProductos.PublicidProducto = a
        'Drl_Valor.SelectedValue = ObjetoClsCafeteriaProductos.CargarDatosIndexProducto

        ObjetoClsCafeteriaProductos.PublicidProducto = Drl_Productos.SelectedValue
        Lbl_Valor.Text = ObjetoClsCafeteriaProductos.CargarDatosIndexProducto


    End Sub

    Private Sub CafeteriaComprarProducto_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete

    End Sub
End Class