<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
        <asp:TextBox CssClass="txtusuario" runat="server" placeholder="Digite su Usuario"></asp:TextBox>
         <asp:Label CssClass="lblcontra" runat="server" Text="Contraseña"></asp:Label>
        <asp:TextBox CssClass="txtcontra" runat="server" placeholder=".........." TextMode="Password"></asp:TextBox>
            <asp:Button CssClass="btnsumit" runat="server" Text="Acceder" />
               <br> <asp:LinkButton CssClass="btnregistrate" runat="server">Realizar un registro</asp:LinkButton> </br>
        <asp:LinkButton CssClass="btnfor" runat="server">¿Ha olvidado su contraseña?</asp:LinkButton>
    </div>
    </form>
</body>
</html>
