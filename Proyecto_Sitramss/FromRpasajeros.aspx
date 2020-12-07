<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FromRpasajeros.aspx.cs" Inherits="FromRpasajeros" %>

<!DOCTYPE html>
 <link href="Estilos/EstiloA.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="w5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css"rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script >

        function alert() {

            swal("Felicitaciones!", "Has agregado con exito un nuevo registro!", "success");
        }

        function msj() {
            swal("Completado", "Su registro se ha eliminado :)", "info");
        }
        function msj2() {
            swal("Completado", "Su registro se ha modificado :)", "info");
        }
        function msj3() {
            swal("ERROR", "FATAL ERROR USTED DEBE SELECCIONAR ALGO", "error");
        }
        function msj4() {
            swal("ERROR", "EL USUARIO BUSCADO NO ENCONTRADO", "error");
        }
        var object = { status: false, ele: null };
        function ConfirmDelete(ev) {
            if (object.status) { return true; };
            swal({
                title: "Estas seguro de eliminar el registro?",
                text: "Una ves des en aceptar no podras recuperarlo!",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-danger",
                confirmButtonText: "Aceptar eliminar archivo",
                closeOnConfirm: true
            },
function () {
    object.status = true;
    object.ele = ev;
    object.ele.click();
});
            return false;
        }


        var obj = { sta: false, ele: null };
        function Update(ev) {
            if (obj.sta) { return true; };
            swal({
                title: "Estas seguro de actualizar el registro?",
                text: "Si le aparece este mensaje es porque usted esta intentando modificar campos de un usuario",
                type: "warning",
                showCancelButton: true,
                confirmButtonClass: "btn-success",
                confirmButtonText: "Actualizar",
                closeOnConfirm: true
            },
function () {
    obj.sta = true;
    obj.ele = ev;
    obj.ele.click();
});
            return false;
        }
        
    </script>
    <title></title>
     <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
             width: 138px;
         }
        .auto-style5 {
            height: 23px;
            width: 210px;
        }
         .auto-style6 {
             height: 26px;
             width: 147px;
         }
         .auto-style7 {
             width: 147px;
         }
         .auto-style8 {
             width: 138px;
         }
         .auto-style9 {
             width: 260px;
         }
         .auto-style10 {
             height: 23px;
             width: 260px;
         }
         .auto-style12 {
             height: 26px;
             width: 133px;
         }
         .auto-style14 {
             height: 26px;
             width: 127px;
         }
         .auto-style15 {
             height: 26px;
             width: 122px;
         }
         .auto-style20 {
             height: 26px;
             width: 14px;
         }
         .auto-style21 {
             width: 14px;
         }
         .auto-style22 {
             height: 23px;
             width: 14px;
         }
        </style>
  
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">
          
                <table class="table table-striped">
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtId" runat="server" Visible="False" Width="141px"></asp:TextBox>
                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7" ><h4 style="color: #FFFFFF">Nombre Completo: </h4></td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtnombrePasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style21">
                            <asp:RequiredFieldValidator ID="rqnombre" runat="server" ControlToValidate="txtnombrePasajero" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9"><h4 style="color: #FFFFFF">Telefono: </h4> </td>
                        <td class="auto-style21">
                            <asp:RequiredFieldValidator ID="rqtelefono" runat="server" ControlToValidate="txttelefonoPasajero" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox ID="txttelefonoPasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7" ><h4 style="color: #FFFFFF">Nombre de usuario: </h4></td>
                        <td class="auto-style3">
                            <asp:TextBox ID="txtuser" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style20">
                            <asp:RequiredFieldValidator ID="rquser" runat="server" ControlToValidate="txtuser" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9" ><h4 style="color: #FFFFFF">E-mail:  </h4></td>
                        <td class="auto-style21" >
                            <asp:RequiredFieldValidator ID="rqemail" runat="server" ControlToValidate="txtduiPasajero" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtemailPasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7" ><h4 style="color: #FFFFFF">Direccion:  </h4></td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtdireccionPasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style21">
                            <asp:RequiredFieldValidator ID="rqdireccion" runat="server" ControlToValidate="txtdireccionPasajero" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7" > <h4 style="color: #FFFFFF">Dui: </h4> </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtduiPasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style21">
                            <asp:RequiredFieldValidator ID="rqdui" runat="server" ControlToValidate="txtduiPasajero" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td class="auto-style9"></td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style14"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" OnClick="btnInsertar_Click" CssClass="btn btn-primary mb-2" Width="170px" Font-Names="Segoe UI" Font-Size="Large" Height="40px" />

                        </td>
                        <td class="auto-style22">
                            &nbsp;</td>
                        <td class="auto-style10">
                            <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" CssClass="btn btn-primary mb-2" OnClientClick="return Update(this);" Width="170px" Font-Names="Segoe UI" Font-Size="Large" Height="40px" />
                            
                        </td>
                        <td class="auto-style22">
                            &nbsp;</td>
                        <td class="auto-style5">

                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="btn btn-primary mb-2" OnClientClick="return ConfirmDelete(this);" Width="170px" Font-Names="Segoe UI" Font-Size="Large" Height="40px"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="6">
                            <asp:Label ID="Label1" runat="server" Text="Buscador por Usuario..." ForeColor="#3333FF"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtBuscarPas" runat="server" class="form-control" Width="266px" OnTextChanged="txtBuscarPas_TextChanged"></asp:TextBox>
                        </td>
                        <td class="auto-style8">
                            <asp:ImageButton ID="imgbuscado" runat="server" DescriptionUrl="~/Images/busquedaicon.png" ImageUrl="~/Images/buscar.png" Height="36px" Width="48px" OnClick="imgbuscado_Click" />

                        </td>
                        <td class="auto-style21">
                            &nbsp;</td>
                        <td class="auto-style9"></td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style12"></td>
                    </tr>

                </table>
                <asp:GridView ID="GvPasajero" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GvPasajero_SelectedIndexChanged" Height="213px" CssClass="auto-style15" Width="1114px" CellPadding="4" ForeColor="#333333" GridLines="None" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id_user" HeaderText="ID PASAJERO" />
                        <asp:BoundField DataField="nombres" HeaderText="NOMBRE COMPLETO" />
                        <asp:BoundField DataField="usuario" HeaderText="USUARIO" />
                        <asp:BoundField DataField="direccion" HeaderText="DIRECCION" />
                        <asp:BoundField DataField="dui" HeaderText="DUI" />
                        <asp:BoundField DataField="telefono" HeaderText="TELEFONO" />
                        <asp:BoundField DataField="email" HeaderText="E-MAIL" />
                        <asp:BoundField DataField="tipo" HeaderText="TIPO" />
                        <asp:CommandField ButtonType="Button" HeaderText="Selección" ShowHeader="True" ShowSelectButton="True" >
                        <ControlStyle CssClass="btn btn-primary mb-2" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#1ec6ff" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>

        
    </form>
</body>
</html>
