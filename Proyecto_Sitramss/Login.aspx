<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script> 
<link href="Estilos/EstiloA.css" rel="stylesheet" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css"rel="stylesheet" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script >

        function alert() {

            swal("Felicitaciones!", "Has agregado con exito un nuevo registro!", "success");
        }

        function msj() {
            swal("Completado", "Usted a sido logeado correctamente como administrador :)", "info");
        }
        function msj2() {
            swal("Completado", "Usted a sido logeado correctamente como empleado :)", "info");
        }
        function msj3() {
            swal("ERROR", "Nombre usuario o contraseña incorrecto", "error");
        }
        function msj4() {
            swal("ERROR", "HAS DEJADO ALGUN CAMPO EN BLANCO PORFAVOR INGRESA UN VALOR Y VUELVE A INTENTARLO!", "error");
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
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            width: 447px;
            height: 382px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="loginbox">
        <asp:Image ID="imgImagen" runat="server" ImageUrl="https://educaperu.org/wp-content/uploads/2018/10/login-usuario.png" AlternateText="" class="user" />
        <h1>Bienvenido!!</h1>
         <asp:Label CssClass="lblusuario" runat="server" Text="Usuario"></asp:Label>
        <asp:TextBox CssClass="txtusuario" runat="server" placeholder="Digite su Usuario" ID="txtuser"></asp:TextBox>
         <asp:Label CssClass="lblcontra" runat="server" Text="Contraseña"></asp:Label>
        <asp:TextBox CssClass="txtcontra" runat="server" placeholder=".........." TextMode="Password" ID="txtpass"></asp:TextBox>
            <asp:Button CssClass="btnsumit" runat="server" Text="Acceder" OnClick="Unnamed5_Click" />
               <br>  </br>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SITRAMSSConnectionString2 %>" SelectCommand="SELECT * FROM [usuarios]"></asp:SqlDataSource>
    </form>
</body>
</html>
