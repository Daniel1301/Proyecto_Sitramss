<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FromRpasajeros.aspx.cs" Inherits="FromRpasajeros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 361px;
        }
        .auto-style4 {
            height: 23px;
            width: 361px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Id Pasajero: </td>
                <td>
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Nombre Completo: </td>
                <td>
                    <asp:TextBox ID="txtnombrePasajero" runat="server"></asp:TextBox>
                </td>
                <td>Telefono: </td>
                <td>
                    <asp:TextBox ID="txttelefonoPasajero" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nombre de usuario:&nbsp; </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">E-mail: </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtemailPasajero" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Direccion: </td>
                <td>
                    <asp:TextBox ID="txtdireccionPasajero" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Dui: </td>
                <td>
                    <asp:TextBox ID="txtduiPasajero" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="btnInsertar" runat="server" Text="Insertar" OnClick="btnInsertar_Click"  />
                </td>
                <td>
                    <asp:Button ID="btnModificar" runat="server" Text="Modificar"  />
                </td>
                <td>
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar"  />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:TextBox ID="txtBuscarPas" runat="server" Width="329px" Height="17px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnBuscarPasajero" runat="server" Text="Buscar" OnClick="btnBuscarPasajero_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

        </table>
        <asp:GridView ID="GvPasajero" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GvPasajero_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id_user" HeaderText="ID PASAJERO" />
                <asp:BoundField DataField="nombres" HeaderText="NOMBRE COMPLETO" />
                <asp:BoundField DataField="usuario" HeaderText="USUARIO" />
                <asp:BoundField DataField="direccion" HeaderText="DIRECCION" />
                <asp:BoundField DataField="dui" HeaderText="DUI" />
                <asp:BoundField DataField="telefono" HeaderText="TELEFONO" />
                <asp:BoundField DataField="email" HeaderText="E-MAIL" />
                <asp:CommandField ButtonType="Button" HeaderText="Selección" ShowHeader="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
