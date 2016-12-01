
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
                Session("nose") = dt
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
        Drl_NombreCliente.DataSource = ObjetoClsCafeteriaProductos.CargarDatosDDlComprarNombreCliente()
        Drl_NombreCliente.DataTextField = "NombreCliente"
        Drl_NombreCliente.DataValueField = "CodigoCliente"
        Drl_NombreCliente.DataBind()
        Drl_NombreCliente.Items.Insert(0, "- Seleccione -")
    End Sub
    Private Sub Detalle()
        dt.Columns.Add(New DataColumn("Producto", GetType(String)))
        dt.Columns.Add(New DataColumn("Categoria", GetType(String)))
        dt.Columns.Add(New DataColumn("NombreEmpleado", GetType(String)))
        dt.Columns.Add(New DataColumn("Valor", GetType(Integer)))
        dt.Columns.Add(New DataColumn("Cantidad", GetType(Integer)))
        dt.Columns.Add(New DataColumn("NombreCLiente", GetType(String)))
    End Sub
    Protected Sub btn_Agregar_Click(sender As Object, e As EventArgs) Handles btn_Agregar.Click

        Dim dt As DataTable
        dt = Session("nose")


        dt.Rows.Add(Convert.ToString(Drl_Productos.SelectedValue), Convert.ToString(Drl_Categoria.SelectedValue), Convert.ToString(Drl_NombreEmpleado.SelectedValue), Convert.ToString(TxtValor.Text), Convert.ToString(TxtCantidadProducto.Text), Convert.ToString(Drl_NombreCliente.SelectedValue))
        dt.AcceptChanges()
        'dt.Rows.Add(Convert.ToString(Drl_NombreEmpleado.SelectedItem), Convert.ToString(Drl_Categoria.SelectedItem), Convert.ToString(TxtCantidadProducto.Text), Convert.ToString(Drl_NombreCliente.SelectedItem))
        Gtg_TotalCompras.DataSource = dt
        Gtg_TotalCompras.DataBind()
        Session("nose") = dt

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

    Protected Sub Drl_NombreCliente_SelectedIndexChanged(sender As Object, e As EventArgs) Handles Drl_NombreCliente.SelectedIndexChanged

    End Sub

    'Protected Sub btninsertar_Click(sender As Object, e As EventArgs) Handles btninsertar.Click


    '    Dim detalles As DataTable



    '    Dim row As DataRow = detalles.NewRow()
    '    row(1) = grid.Cells(1).Text
    '    row(2) = grid.Cells(2).Text
    '    row(3) = grid.Cells(3).Text
    '    row(4) = grid.Cells(4).Text
    '    row(5) = grid.Cells(5).Text
    '    row(6) = grid.Cells(6).Text
    '    row(7) = grid.Cells(7).Text
    '    row(8) = grid.Cells(8).Text
    '    row(9) = grid.Cells(9).Text
    '    row(10) = grid.Cells(10).Text
    '    row(11) = grid.Cells(11).Text
    '    row(12) = grid.Cells(12).Text
    '    row(13) = grid.Cells(13).Text
    '    row(14) = grid.Cells(14).Text
    '    row(15) = grid.Cells(15).Text
    '    row(16) = grid.Cells(16).Text

    '    detalles.Rows.Add(row)

    '    GridView1.DataSource = detalles
    '    GridView1.DataBind()

    'End Sub

    'Private Sub Form_Load()

    '    If Not IsPostBack Then
    '        'aqui lanzas la consulta

    '        da.Fill(dt)
    '        'dt es el datatable

    '        GridView1.DataSource = dt

    '        GridView1.DataBind()


    '        Session("datos") = dt
    '    End If

    'End Sub




    'Private Sub button1_Click()
    '    Dim dt As DataTable = TryCast(Session("datos"), DataTable)

    '    Dim row As DataRow = dt.NewRow

    '    row("campo1") = TextBox1.Text

    '    row("campo2") = TextBox2.Text

    '    dt.Rows.Add(row)

    '    GridView1.DataSource = dt

    '    GridView1.DataBind()
    '    Session("datos") = dt

    '    Dim dt As DataTable = TryCast(Session("datos"), DataTable)
    'End Sub
End Class