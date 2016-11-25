﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Auditoria_Con_V2.aspx.vb" Inherits="digitacion.Auditoria_Con_V2" %>

<%@ Register src="../menu.ascx" tagname="menu" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>    
  <!-- Inicio Script jQuery Datepicker --->
  <link type="text/css"rel="stylesheet" href="../Css2/jquery-ui.css" />   
  <script type="text/javascript" src="../Css2/jquery.min.js"></script>
  <script type="text/javascript" src="../Css2/jquery-ui.min.js"></script>
  <script type="text/jscript">
      $(function () {
          $('#TxtFc_Llamada').datepicker({ dateFormat: 'dd/mm/yy' }).val();
      });
  </script>
  <!-- Fin Script jQuery Datepicker --->

    


    <style type="text/css">

 
        
.Color
{
    background-color:#A6A6A6;
    color:White;
    border-color:Black;
    border-style:solid;
}

.celdasder
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: small;
	color: Navy;
	font-weight: bold;
	width: 10%;
}
.celdascent
{
	font-family: Arial, Helvetica, sans-serif;
	font-size: medium;
	color: Navy;
	font-weight: bold;
	width: 80%;
}

.titulo
{ 
 font-family:Arial, Helvetica, sans-serif;
   font-size:xx-large;
   color:navy
   }
   
    
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            color: Navy;
            font-weight: bold;
            width: 10%;
            height: 5px;
        }
        .style5
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: medium;
            color: Navy;
            font-weight: bold;
            width: 80%;
            height: 5px;
        }
       
    
        .style2
        {
            width: 100%;
            border-color:Black;
            border-style:solid;
        }
 
        .style8
        {
            width: 100%;
            color:Black;
        }
        
        .style9
        {
            border-color:Black;
            border-style:solid;
            
            
        }
        .style6
        {
            width: 30%;
            height: 22px;
        }
        .style7
        {
            width: 70%;
            height: 22px;
        }
       
                
        .style3
        {
            color: #000099;
        }
         
        
        .textotittabla
{
	font-family: Arial, Helvetica, sans-serif;
	font-size:small;
	color: #000042;
	font-weight: bold;
	background: #E2E8FA;
	width: 15%;
}
   
        .textotittabla
{
	font-family: Arial, Helvetica, sans-serif;
	font-size:small;
	color: #000042;
	font-weight: bold;
	background: #E2E8FA;
	width: 15%;
}
 
        .celdascons
{
		width: 35%;
}
       
        .celdascons
{
		width: 35%;
}
     
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    
        <table style="width: 100%; height: 100%">
            <tr>
                <td class="celdasder">
                </td>
                <td class="celdascent">
                    <table style="border-style: outset; border-width: 1px; width:100%">
                        <tr>
                            <td style="width:20%">
                                &nbsp;</td>
                            <td align="left" class="titulo">
                                Kamilion Comunicaciones ERP</td>
                        </tr>
                    </table>
                </td>
                <td class="celdasder">
                </td>
            </tr>
            <tr>
                <td class="celdasder">
                    &nbsp;</td>
                <td class="celdascent">
                    <asp:Label ID="lblmsg" runat="server" style="color: #FF3300"></asp:Label>
                </td>
                <td class="celdasder">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4">
                    </td>
                <td class="style5">
                    <uc1:menu ID="menu1" runat="server" />
                </td>
                <td class="style4">
                    </td>
            </tr>
            <tr>
                <td class="celdasder">
                    &nbsp;</td>
                <td class="celdascent">
                    <asp:Label ID="lblmsg0" runat="server" 
                        style="font-size: medium; font-style: italic">Consulta Auditorias</asp:Label>
                </td>
                <td class="celdasder">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">
                </td>
                <td style="width:15%" valign="top">
                    <table class="style8">
                        <tr>
                            <td class="style6">
                                <asp:Label ID="lblusuario" runat="server"></asp:Label>
                            </td>
                            <td class="style7">
                                <asp:Label ID="lblnombreusu" runat="server"></asp:Label>
                            &nbsp;&nbsp;
                                </td>
                        </tr>
                        </table>
                </td>
                <td class="celdasder">
                </td>
            </tr>
            <tr>
                <td class="celdasder">
                    &nbsp;</td>
                <td style="width:15%" valign="top">
                    &nbsp;</td>
                <td class="celdasder">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">
                    &nbsp;</td>
                <td style="width:15%" valign="top">
                    <table class="style2" border="2">
                        <tr>
                            <td width="65%">
                                <table class="style8">
                                    <tr>
                                        <td width="40%">
                                            <table class="style2" border="2">
                                                <tr>
                                                    <td width="40%">
                                                        <center><asp:Image ID="Image1" runat="server" ImageUrl="~/LOGO.jpg" 
                                                                Height="67px"  /></center>
                                                    </td>
                                                 </tr>
                                            </table>
                                        </td>
                                        <td width="40%">
                                            <table class="style2" border="2">
                                                <tr>
                                                    <td width="40%">
                                                        <center><asp:Label ID="LblTitulo" runat="server" Text="SISTEMA DE GESTION DE CALIDAD"></asp:Label></center>
                                                    </td>
                                                    <td width="50%" class="style9" colspan="2">
                                                        <center>GCM-F-24</center>
                                                    </td>
                                                 </tr>
                                                <tr>
                                                    <td width="40%">
                                                    <center><asp:Label ID="LblTitulo1" runat="server" Text="GESTION DE CALIDAD Y MEJORA"></asp:Label></center>
                                                    </td>
                                                    <td class="style9">
                                                        <center>FECHA<asp:Label ID="LblFecha" runat="server" Visible="False"></asp:Label></center>
                                                        <center>17/09/2014</center>                                            
                                                    </td>
                                                    <td class="style9">
                                                        <center>VERSION</center>
                                                        <center>1</center>
                                                    </td>
                                                 </tr>
                                                <tr>
                                                    <td width="40%">
                                                    <center><asp:Label ID="LblTitulo2" runat="server" Text="AUDITORIA"></asp:Label></center>
                                                    </td>
                                                    <td class="style9" colspan="2">
                                                        <center>Página 1 DE 1</center>
                                                    </td>
                                                 </tr>
                                            </table> 
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="50%" class="style9">
                                NUMERO DE CONSECUTIVO</td>
                            <td width="50%" class="style9">
                                            <asp:Label ID="Lblcaso" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                NOMBRE DE INGENIERO/AGENTE DE SOPORTE</td>
                            <td class="style9">
                                <asp:Label ID="LblNomAgente" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                GRUPO</td>
                            <td class="style9">
                                <asp:Label ID="LblGrupo" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                AUDITOR</td>
                            <td class="style9">
                                <asp:Label ID="LblAuditor" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                CAMPAÑA</td>
                            <td class="style9">
                                <asp:Label ID="LblCampaña" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                PROCESO</td>
                            <td class="style9">
                                <asp:Label ID="LblProceso" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                FECHA Y HORA DE LA LLAMADA</td>
                            <td class="style9">
                                                <asp:Label ID="LblFc_Llamada" runat="server"></asp:Label>                                                
                                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                TIEMPO ACUMULADO DE LA LLAMADA</td>
                            <td class="style9">
                                                <asp:Label ID="LblTiempoAcumulado" runat="server"></asp:Label>
                                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                CANTIDAD DE LLAMADAS AL MIN</td>
                            <td class="style9">                            
                                <asp:Label ID="LblCantidad_Llamadas" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                ESTADO CASO</td>
                            <td class="style9">
                                <asp:Label ID="LblEstado" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                TIPO DE AUDITORIA</td>
                            <td class="style9">
                                <asp:Label ID="LblTipo_Auditoria" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td class="Color" >
                            <center>Errores Criticos</center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="30%" class="Color" >
                                <center>ITEM</center>
                                </td>
                            <td width="20%" class="Color">
                                <center>CALIFICACION</center>
                                </td>
                            <td width="50%" class="Color">
                                <center>OBSERVACION</center>
                                </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem1" runat="server" Text="Amabilidad y Empatia"
                                    ToolTip="Se enfrenta o interrumpe al cliente de manera continúa durante la llamada, utiliza expresiones de ironía, burlescas o recalcadas, demuestra impaciencia e intolerancia con el cliente. El trato debe ser cálido, mantener en todo momento la calma y tolerancia, respeta las opiniones del cliente."></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblAmabilidad_Empatia" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Amabilidad_Empatia" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem2" runat="server" Text="Colgada de Llamada" 
                                    ToolTip="Ingeniero finaliza la llamada sin atender el requerimiento al cliente o permite que el cliente cuelgue por falta de atención. (Hold o espera prolongada  sin retomar la llamada)."></asp:Label></center>
                            </td>
                            <td class="style9">                            
                            <center>
                                <asp:Label ID="LblColgada_Llamada" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Colgada_Llamada" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem3" runat="server" Text="Realiza filtros adecuados" 
                                    ToolTip="Soluciona en el menor tiempo posible y de manera eficaz la necesidad del cliente,  utiliza en forma adecuada las herramientas disponibles para realizar las diferentes consultas que requiere el caso .  Indaga y realiza preguntas que lo llevan a identificar y diagnosticar el requerimiento exacto del cliente."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblRealiza_Filtro_A" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Realiza_Filtro_A" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem4" runat="server" Text="Corona Abierta" 
                                    ToolTip="El Ingeniero debe realizar acompañamiento continuo para evitar que el cliente perciba el ruido del ambiente laboral durante el desarrollo de la llamada (situaciones como: Intrucciones dentro de la operación por parte del personal administrativo, conversaciones entre consultores,  respiraciones audibles ocasionadas por cercanía al tubo acústico, digitación del teclado por tiempos extensos)y otros escenarios que afecten ante el cliente el buen nombre de la compañía."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblCorona_Abierta" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Corona_Abierta" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem5" runat="server" Text="Documentación" 
                                    ToolTip="Se afecta al consultor cuando:
• Ingresa a las cuentas y no registra las acciones o información brindada al cliente.
• Cuando deja comentarios con informacion que no corresponde a la gestion realizada.
• Cuando no tipifica de forma adecuada en los tickler en AC y/o categoria SIC."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblDocumentacion" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Documentacion" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem6" runat="server" Text="Procedimiento de PQR" 
                                    ToolTip="• Aplica correctamente los procedimientos relacionados con tipología de PQR, para cierre de fallatec/soportec/SMS queja. 
• No documenta tickler terminos"></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblProcedimiento_PQR" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Procedimiento_PQR" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem7" runat="server" 
                                    Text="Procedimientos pruebas y trámites incompletos o incorrectos" 
                                    ToolTip="• Consultor debe informar y aplicar de forma completa  y correcta los procesos y pruebas establecidas para el tipo de falla reportado por el cliente, evitando escalamientos innecesarios a tercer nivel, procurando una respuesta de acuerdo a los lineamientos y procesos establecidos. 
• Consulta todos los aplicativos dados por la compañia para realizar el diagnostico y suministrar una respuesta a la solicitud del cliente.
• Cuando no captura o no toma los datos que permitan identificar la falla, dar una solucion optima o en su defecto generar el escalamiento correspondiente a el area resolutora con toda la informacion requerida. (CHEK LIST).
• No Reporta la inconsistencia identificada."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblProcedimiento_Prueb_Tram_Incom_Incorrec" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Procedimiento_Prueb_Tram_Incom_Incorrec" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td class="Color">
                            <center>Errores De Gestion (NO CRITICO)</center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="30%">                            
                            <center>
                                <asp:Label ID="LblItem8" runat="server" 
                                    Text="Presenta el objetivo de la llamada"                                     
                                    ToolTip="Al generar contacto con el cliente informa el motivo de la llamada, se presenta con nombre y apellido, aclarando a que tipo de servicio  se dara el soporte."></asp:Label>
                                </center>
                            </td>
                            <td width="20%">
                            <center>
                                <asp:Label ID="LblPresenta_Obj_Llamada" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td width="50%">
                            <center>
                                <asp:Label ID="LblObs_Presenta_Obj_Llamada" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem9" runat="server" Text="Comunicación"                                     
                                    ToolTip="Evidencia una correcta vocalización, pronunciación, articulación, entonación e intesidad utilizando un lenguaje apropiado evitando tecnicismos o jergas inadecuadas.  Tiene fluidez verbal al dirigirse con el cliente, encontrando palabras precisas en el momento indicado, hace que su comunicación sea grata y armoniosa, con una adecuada entonación y dicción, genera combinación de sucesos de voces y dinamismo al hablar."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblCordialidad_Comunicacion" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Cordialidad_Comunicacion" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem19" runat="server" Text="Cordialidad"
                                    ToolTip="Evidencia cordialidad con la que atiende a los clientes manifestando el gusto y/o entusiasmo por atenderlos. En las interlocuciones con el usuario es importante solicitar el nombre y hacer uso de el mínimo 2 veces, utiliza títulos de respeto, brinda la información de manera oportuna evitando interrumpir al usuario esporádicamente."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblCordialidad" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Cordialidad" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem20" runat="server" Text="Contacto activo"
                                    ToolTip="Ingeniero deja en espera a el cliente mas de 40 segundos, no agradece los tiempos de espera."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblContacto_Activo" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Contacto_Activo" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblItem10" runat="server" Text="Claridad al transmitir la información" 
                                    ToolTip="Evita Explicar en forma mecanica los procedimientos y tramites, se coloca en el lugar del cliente para brindar informaciòn pausada y coherente de principio a fin."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblClaridad_Transmitir_Inf" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Claridad_Transmitir_Inf" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem11" runat="server" Text="Seguridad" 
                                    ToolTip="No duda al suministrar la información y transmite confianza al cliente, tiene el control de la llamada. El lngeniero de soporte debe apoderarse de la situación planteada desde el principio evitando realizar preguntas cuyas respuestas están en el sistema. Evita referirse a Claro como un tercero."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblSeguridad" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Seguridad" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem12" runat="server" 
                                    Text="Manejo de guion"
                                    ToolTip="Utiliza los guiones establecidos por la compañía.(saludo, despedida, captura de datos y demas)
Utiliza guion de cierre de llamada (reinicio PDP)
Utiliza los guiones para el manejo de etiqueta telefonica."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblUtiliza_Guion_Saludo_Nom" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Utiliza_Guion_Saludo_Nom" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        </table>
                    <table class="style2" border="2">
                        <tr>
                            <td class="Color">
                            <center>Errores Criticos Internas Kamilion</center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="30%" class="style9">                            
                            <center><asp:Label ID="LblItem13" runat="server" Text="Gestion de Llamada" 
                                    ToolTip="Tipifica de manera correcta el resultado de la gestion realizada al caso en CRM (Cerrado, Escalado, gestionado, rechazado, Previamente Cerrado) de acuerdo a la gestion realizada durante (la o las) llamadas generadas."></asp:Label>
                                </center>
                                </td>
                            <td width="20%" class="style9">
                            <center>
                                <asp:Label ID="LblGestion_Llamada" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td width="50%" class="style9">
                            <center>
                                <asp:Label ID="LblObs_Gestion_Llamada" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem14" runat="server" Text="Gestion de Soporte" 
                                    ToolTip="Tipifica cada uno de los parametros que son parte relevante del diagnostico, gestion y cierre del caso teniendo en cuenta el tipo de requerimiento reportado por el usuario."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblGestion_Soporte" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Gestion_Soporte" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem15" runat="server" Text="Gestion de Asignacion" 
                                    ToolTip="Diligencia de manera correta y completa la solicitu de de escalamiento a las areas Tenicas e Informatica en las herramientas disponibles para dicha gestion."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblGestion_Asignacion" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Gestion_Asignacion" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="LblItem16" runat="server" Text="Gestion de Cierre" 
                                    ToolTip="Confirma con el usuario el estado en el cual quedara el caso o la reclamacion."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblGestion_Cierre" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Gestion_Cierre" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblReincide1" runat="server" Text="Reincide" ToolTip="El ingeniero tiene en cuenta las recomendaciones realizadas en las ultimas retroalimentaciones generadas."></asp:Label></center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblReincide" runat="server"></asp:Label>
                                </center>
                            </td>
                            <td class="style9">
                                <center>
                                    <asp:Label ID="LblObs_Reincide" runat="server"></asp:Label>
                                </center>
                            </td>
                        </tr>
                        </table>


                    <table class="style2" border="2">
                        <tr>
                            <td class="Color">
                            <center>Variables Estadisticas</center>
                            </td>
                        </tr>
                    </table>
                    <table class="style2" border="2">
                        <tr>
                            <td width="30%" class="style9">
                                <center><asp:Label ID="LblItem17" runat="server" Text="Solución" 
                                        ToolTip="Asesor logró resolver las inquietudes y peticiones del cliente de acuerdo a los procedimientos establecidos por la compañía."></asp:Label></center>
                                </td>
                            <td width="20%" class="style9">
                            <center>
                                <asp:Label ID="LblSolucion" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td width="50%" class="style9">
                            <center>
                                <asp:Label ID="LblObs_Solucion" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblItem18" runat="server" 
                                    Text="Interés" 
                                    ToolTip="No se apersona del requerimiento, poca disposición en atender al cliente, no ofrece alternativas, remitea  otra instancia teniendo los recursos para brindar la solución, no consulta las herraminetas disponibles para obtener información completa y correcta de los procedimientos y trámites."></asp:Label></center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblInteres_Escucha" runat="server"></asp:Label>
                            </center>
                            </td>
                            <td class="style9">
                            <center>
                                <asp:Label ID="LblObs_Interes_Escucha" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                        </table>

                    <table class="style2" border="2">
                        <tr>
                            <td class="style9">
                            <center><asp:Label ID="Label23" runat="server" Text="OBSERVACIONES GENERALES:"></asp:Label>                            
                                <br />
                                <asp:Label ID="LblObs_Generales" runat="server"></asp:Label>
                            </center>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="celdasder">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">
                    &nbsp;</td>
                <td style="width:15%" valign="top">
                ID Registro
                &nbsp;
                <asp:TextBox ID="TxtCod_Consulta" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Button ID="BtnConsulta" runat="server" Text="Consulta" />
                </td>
                <td class="celdasder">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">
                    &nbsp;</td>
                <td style="width:15%; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium;" 
                    valign="top" class="style3">

                    &nbsp;</td>
                <td class="celdasder">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">
                    &nbsp;</td>
                <td style="width:15%; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium;" 
                    valign="top" class="style3">
                    Auditorias realizadas: 
                    <asp:Label ID="LblCuenta" runat="server"></asp:Label>
                </td>
                <td class="celdasder">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="celdasder">
                    &nbsp;</td>
                <td style="width:15%; font-weight: 700; font-family: Arial, Helvetica, sans-serif; font-size: medium;" 
                    valign="top" class="style3">
    
                    <asp:GridView ID="dtggeneral" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" PageSize="500" Width="100%" style="font-size: x-small" 
                        EnableModelValidation="True">
                        <RowStyle BackColor="#EEF1D8" ForeColor="#333333" HorizontalAlign="Center"/>
                        <Columns>
                            <asp:BoundField DataField="Cod_Calidad_Registro" HeaderText="ID"/>
                            <asp:BoundField DataField="Grupo" HeaderText="Grupo"/>
                            <asp:BoundField DataField="codnom" HeaderText="Codigo"/>
                            <asp:BoundField DataField="Id_Caso" HeaderText="Caso"/>
                            <asp:BoundField DataField="Fc_Reg" HeaderText="Fecha Auditoria"/>
                            <asp:BoundField HeaderText="Resultado Kamilion" DataField="Resultado_Kamilion"/>
                        </Columns>
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#333333" />
                    </asp:GridView>
                </td>
                <td class="celdasder">
                    &nbsp;</td>
            </tr>
            </table>
    
    </form>
</body>
</html>