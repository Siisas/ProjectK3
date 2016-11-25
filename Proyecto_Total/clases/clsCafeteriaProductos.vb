Public Class clsCafeteriaProductos
    Protected idProducto As Integer
    Protected nombreProducto As String
    Protected idCategoria As Integer
    Protected categoria As String
    Protected cantidadProducto As Integer
    Protected valorProducto As Integer
    Protected fechaRegistroProducto As Date
    Protected codigoCliente As Integer
    Protected codigoEmpleado As Integer
    Protected nombreCliente As String
    Protected nombreEmpleado As String
    Protected proveedor As String



    Public Property PublicidProducto As Integer
        Get
            Return idProducto
        End Get
        Set(value As Integer)
            idProducto = value
        End Set
    End Property

    Public Property PublicNombreProducto As String
        Get
            Return nombreProducto
        End Get
        Set(value As String)
            nombreProducto = value
        End Set
    End Property

    Public Property PublicIdCategoria As Integer
        Get
            Return idCategoria
        End Get
        Set(value As Integer)
            idCategoria = value
        End Set
    End Property

    Public Property PublicCategoria As String
        Get
            Return categoria
        End Get
        Set(value As String)
            categoria = value
        End Set
    End Property

    Public Property PublicCantidadProducto As Integer
        Get
            Return cantidadProducto
        End Get
        Set(value As Integer)
            cantidadProducto = value
        End Set
    End Property

    Public Property PublicValorProducto As Integer
        Get
            Return valorProducto
        End Get
        Set(value As Integer)
            valorProducto = value
        End Set
    End Property

    Public Property PublicFechaRegistroProducto As Date
        Get
            Return fechaRegistroProducto
        End Get
        Set(value As Date)
            fechaRegistroProducto = value
        End Set
    End Property

    Public Property PublicCodigoCliente As Integer
        Get
            Return codigoCliente
        End Get
        Set(value As Integer)
            codigoCliente = value
        End Set
    End Property

    Public Property PublicCodigoEmpleado As Integer
        Get
            Return codigoEmpleado
        End Get
        Set(value As Integer)
            codigoEmpleado = value
        End Set
    End Property

    Public Property PublicNombreCliente As String
        Get
            Return nombreCliente
        End Get
        Set(value As String)
            nombreCliente = value
        End Set
    End Property

    Public Property PublicNombreEmpleado As String
        Get
            Return nombreEmpleado
        End Get
        Set(value As String)
            nombreEmpleado = value
        End Set
    End Property
    Public Property PublicProveedor As String
        Get
            Return proveedor
        End Get
        Set(value As String)
            proveedor = value
        End Set
    End Property

    'empiezo a hacer conexion con la base de datos para insertar datos 
    'utilizo stored procedured y una propiedad como parametro que recibe
    Public Sub RegEmpleadosCafeteria()

        Dim cn As New SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings("conexion2").ConnectionString) ' Conexion con la base 
        Try
            Dim cms As New SqlClient.SqlCommand("SpRegistrarEmpleado", cn)
            cn.Open()
            cms.CommandType = CommandType.StoredProcedure
            cms.Parameters.AddWithValue("@NombreEmpleado", nombreEmpleado)
            cms.Connection = cn
            cms.ExecuteNonQuery()

        Catch ex As Exception
            Throw ex
        Finally
            If cn.State = ConnectionState.Open Then
                cn.Close()
            End If
        End Try
    End Sub

    Public Sub RegClienteCafeteria()

        Dim cn As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("conexion2").ConnectionString)
        Try
            Dim cms As New SqlClient.SqlCommand("SpRegistarCliente", cn)
            cn.Open()
            cms.CommandType = CommandType.StoredProcedure
            cms.Parameters.AddWithValue("@NombreCliente", nombreCliente)
            cms.Connection = cn
            cms.ExecuteNonQuery()
        Catch ex As Exception
            Throw ex
        Finally
            If cn.State = ConnectionState.Open Then
                cn.Close()
            End If
        End Try
    End Sub

    Public Sub RegProductos()
        Dim cn As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("conexion2").ConnectionString)
        Try
            Dim cmd As New SqlClient.SqlCommand("SpInsertarProductos", cn)
            cn.Open()
            cmd.CommandType = CommandType.StoredProcedure
            cmd.Parameters.AddWithValue("@NombreProducto", PublicNombreProducto)
            cmd.Parameters.AddWithValue("@IdCategoria", PublicIdCategoria)
            cmd.Parameters.AddWithValue("@CantidadProducto", PublicCantidadProducto)
            cmd.Parameters.AddWithValue("@ValorProducto", PublicValorProducto)
            cmd.Parameters.AddWithValue("@FechaRegistroProd", PublicFechaRegistroProducto)
            cmd.Parameters.AddWithValue("@CodigoCliente", PublicCodigoCliente)
            cmd.Parameters.AddWithValue("@CodigoEmpleado", PublicCodigoEmpleado)
            cmd.Parameters.AddWithValue("@Proveedor", PublicProveedor)
            cmd.Connection = cn
            cmd.ExecuteNonQuery()
        Catch ex As Exception
            Throw ex
        Finally
            If cn.State = ConnectionState.Open Then
                cn.Close()
            End If
        End Try
    End Sub

    Public Function CargarDatosDDlProductos()
        Dim cx As New SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings("conexion2").ConnectionString)
        Dim datos As New DataSet
        Dim RecibeData As SqlClient.SqlDataAdapter
        Try
            cx.Open()
            Dim cmd As New SqlClient.SqlCommand("SpDdlProductos", cx)
            RecibeData = New SqlClient.SqlDataAdapter(cmd)
            RecibeData.Fill(datos)
            cmd.ExecuteReader()
            Return datos
        Catch ex As Exception
            Throw ex
        Finally
            If cx.State = ConnectionState.Open Then
                cx.Close()
            End If
        End Try
    End Function
End Class