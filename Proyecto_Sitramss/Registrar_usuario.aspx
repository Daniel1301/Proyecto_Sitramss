<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrar_usuario.aspx.cs" Inherits="Registrar_usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            left: 50px;
            top: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="registrabox">
              <asp:Image ID="imgImagen" runat="server" ImageUrl="https://asknoetictips.files.wordpress.com/2017/09/usuario-registrado.jpg" AlternateText="" class="registro"   />
                <br />
            <br />
            <h1> Registra un nuevo usuario aqui!!</h1>
            <br></br>
             <asp:Label CssClass="lblnombre" runat="server" Text="Nombre Completo: "></asp:Label>
        <asp:TextBox CssClass="txtnombre" runat="server" placeholder="Digite su nombre"></asp:TextBox>
             <asp:Label CssClass="lblnombreusuario" runat="server" Text="Nombre de usuario: "></asp:Label>
        <asp:TextBox CssClass="txtnombreusuario" runat="server" placeholder="usuario"></asp:TextBox>

         <asp:Label CssClass="lblnombreusuario" runat="server" Text="Direccion: "></asp:Label>
        <asp:TextBox CssClass="txtnombreusuario" runat="server" placeholder="Direccion"></asp:TextBox>

         <asp:Label CssClass="lblnombreusuario" runat="server" Text="DUI: "></asp:Label>
        <asp:TextBox CssClass="txtnombreusuario" runat="server" placeholder="DUI"></asp:TextBox>
        <asp:Label CssClass="lblnombreusuario" runat="server" Text="Telefono: "></asp:Label>
        <asp:TextBox CssClass="txtnombreusuario" runat="server" placeholder="Telefono"></asp:TextBox>


         <asp:Label CssClass="lblcontrasena" runat="server" Text="Contraseña: "></asp:Label>
        <asp:TextBox CssClass="txtcontrasena" runat="server" placeholder=".........." TextMode="Password" ID="txtcontraseña1"></asp:TextBox>
            <asp:Label CssClass="lblcontrasena2" runat="server" Text="Repita su Contraseña: "></asp:Label>
            <br />
        <asp:TextBox CssClass="txtcontrasena2" runat="server" placeholder=".........." TextMode="Password" ID="txtcontraseña2"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtcontraseña1" ControlToValidate="txtcontraseña2" ErrorMessage="Escriba las contraseñas iguales!!" ForeColor="Red"></asp:CompareValidator>
            <br />

             <asp:Label CssClass="lblsexo" runat="server" Text="Sexo: "></asp:Label>
            <asp:DropDownList CssClass="cbmsexo" runat="server" Height="24px" Width="321px" style="margin-left: 18px">
                <asp:ListItem></asp:ListItem>
              <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Femenino</asp:ListItem>
              </asp:DropDownList>
        <br /> <br> <br />
         <asp:Label CssClass="lblsexo" runat="server" Text="Tipo: "></asp:Label>
            <asp:DropDownList CssClass="cbmsexo" runat="server" Height="24px" Width="321px" style="margin-left: 18px">
                <asp:ListItem></asp:ListItem>
              <asp:ListItem>Empleado</asp:ListItem>
                <asp:ListItem>Administrador</asp:ListItem>
              </asp:DropDownList>
        
              <br />
              <br />
              <br />
              
            <asp:Button CssClass="btnsumit" runat="server" Text="Registrate"/>
        </div>
    </form>
</body>
</html>
