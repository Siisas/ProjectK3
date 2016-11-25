<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CafeteriaComprarProducto.aspx.vb" Inherits="digitacion.CafeteriaComprarProducto" %>

<%@ Register Src="~/Controles/Header.ascx" TagName="Header" TagPrefix="Control" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Kamilion Caféteria</title>
    <link rel="icon" href="~/favicon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="~/favicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="../Css2/jquery.min.js"></script>
    <script type="text/javascript" src="../Css2/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../Css2/jquery-ui-timepiker.js"></script>
    <script type="text/javascript" src="../Css2/scripts.js"></script>
    <!--#########Estilos############-->
    <link type="text/css" rel="Stylesheet" href="~/Css2/Boot/css/bootstrap.min.css" />
    <link type="text/css" rel="Stylesheet" href="~/Css2/jquery-ui.css" />
    <link type="text/css" rel="Stylesheet" href="~/Css2/Kamilion.css" />

</head>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <Control:Header ID="Header" runat="server" />
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:Panel ID="Pnl_Message" runat="server">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </asp:Panel>
            </ContentTemplate>
        </asp:UpdatePanel>
        <article>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <section>
                        <%--Aqui hago una columna --%>
                        <div class="text-center Subtitulos">Comprar Productos</div>
                        <div class="Form">
                            <div class="Cell-Form">
                                <div class="input-group">
                                    <div class="input-group-addon">Producto</div>
                                    <asp:DropDownList ID="Drl_Productos" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-addon">Categoría</div>
                                    <asp:DropDownList ID="Drl_Categoria" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="Space-Form"></div>

                            <div class="Cell-Form">
                                <div class="input-group">
                                    <div class="input-group-addon">Valor</div>
                                    <asp:TextBox ID="TxtValor" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="input-group">
                                    <div class="input-group-addon">Cantidad</div>
                                      <asp:TextBox ID="TxtCantidadProducto" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>                                       
                        </div>
                        <asp:Button ID="btn_Agregar"  CssClass="btn btn-primary" runat="server" Text="Agregar" />     
                        <asp:Button ID="btn_Comprar"  CssClass="btn btn-primary" runat="server" Text="Comprar" />          
                         </section>
                    <section>
                        <div class="text-center Subtitulos">Total a pagar</div>
                        <div class="Cell-Form">
                            <div class="input-group">
                                <div class="input-group-addon">Total a pagar</div>
                                 <asp:TextBox ID="TxtValorTotal" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                        </div>
                              <asp:GridView class="Grid_Js" ID="Gtg_TotalCompras" runat="server"></asp:GridView>
                    </section>
                </ContentTemplate>
            </asp:UpdatePanel>
        </article>
    </form>
</body>
</html>
