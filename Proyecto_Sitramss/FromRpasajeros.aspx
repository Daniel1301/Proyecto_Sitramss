<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FromRpasajeros.aspx.cs" Inherits="FromRpasajeros" %>

<!DOCTYPE html>
 <link href="Estilos/EstiloA.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="w5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css"rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="SweetAlert.js"></script>
    <script src="alert.js"></script>

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
        }
        .auto-style5 {
            height: 23px;
            width: 210px;
        }
        .auto-style6 {
            height: 26px;
            width: 210px;
        }
         .auto-style7 {
             width: 184px;
         }
         .auto-style8 {
             height: 26px;
             width: 184px;
         }
        </style>
  
</head>
<body>


    <form id="form1" runat="server">
        <div class="container">
          
                <table class="table table-striped">
                    <tr>
                        <td class="auto-style3">&nbsp;</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtId" runat="server" Visible="False"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Nombre Completo:</td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtnombrePasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>Telefono: </td>
                        <td>
                            <asp:TextBox ID="txttelefonoPasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Nombre de usuario:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtuser" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style2">E-mail: </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtemailPasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Direccion: </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtdireccionPasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Dui: </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtduiPasajero" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style14"></td>
                        <td class="auto-style14"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" OnClick="btnInsertar_Click" CssClass="btn btn-primary mb-2" />

                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="btnModificar" runat="server" Text="Modificar" OnClick="btnModificar_Click"  CssClass="btn btn-primary mb-2" />
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" CssClass="btn btn-primary mb-2" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">
                            <asp:TextBox ID="txtBuscarPas" runat="server" class="form-control"></asp:TextBox>
                        </td>
                        <td class="auto-style7">

                            <asp:Button ID="btnBuscarPasajero" runat="server" Text="Buscar" OnClick="btnBuscarPasajero_Click" CssClass="btn btn-primary mb-2" />

                        </td>
                        <td class="auto-style12"></td>
                        <td class="auto-style12"></td>
                    </tr>

                </table>
                <asp:GridView ID="GvPasajero" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GvPasajero_SelectedIndexChanged" Height="213px" CssClass="auto-style15" Width="1114px">
                    <Columns>
                        <asp:BoundField DataField="id_user" HeaderText="ID PASAJERO" />
                        <asp:BoundField DataField="nombres" HeaderText="NOMBRE COMPLETO" />
                        <asp:BoundField DataField="usuario" HeaderText="USUARIO" />
                        <asp:BoundField DataField="direccion" HeaderText="DIRECCION" />
                        <asp:BoundField DataField="dui" HeaderText="DUI" />
                        <asp:BoundField DataField="telefono" HeaderText="TELEFONO" />
                        <asp:BoundField DataField="email" HeaderText="E-MAIL" />
                        <asp:BoundField DataField="tipo" HeaderText="TIPO" />
                        <asp:CommandField ButtonType="Button" HeaderText="Selección" ShowHeader="True" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
            </div>

        
    </form>
</body>
</html>
