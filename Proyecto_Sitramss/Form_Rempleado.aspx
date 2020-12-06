<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form_Rempleado.aspx.cs" Inherits="Form_Rempleado" %>

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
            height: 26px;
        }
        .auto-style4 {
            width: 441px;
        }
        .auto-style5 {
            height: 23px;
            width: 441px;
        }
        .auto-style6 {
            height: 26px;
            width: 441px;
        }
        .auto-style7 {
            width: 232px;
        }
        .auto-style8 {
            height: 23px;
            width: 232px;
        }
        .auto-style9 {
            height: 26px;
            width: 232px;
        }
        .auto-style10 {
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SITRAMSSConnectionString3 %>" DeleteCommand="DELETE FROM [usuarios] WHERE [id_user] = @original_id_user AND (([usuario] = @original_usuario) OR ([usuario] IS NULL AND @original_usuario IS NULL)) AND (([contraseña] = @original_contraseña) OR ([contraseña] IS NULL AND @original_contraseña IS NULL)) AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([direccion] = @original_direccion) OR ([direccion] IS NULL AND @original_direccion IS NULL)) AND (([dui] = @original_dui) OR ([dui] IS NULL AND @original_dui IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([tipo] = @original_tipo) OR ([tipo] IS NULL AND @original_tipo IS NULL))" InsertCommand="INSERT INTO [usuarios] ([usuario], [contraseña], [nombres], [direccion], [dui], [telefono], [email], [tipo]) VALUES (@usuario, @contraseña, @nombres, @direccion, @dui, @telefono, @email, @tipo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [usuarios] WHERE ([tipo] = @tipo)" UpdateCommand="UPDATE [usuarios] SET [usuario] = @usuario, [contraseña] = @contraseña, [nombres] = @nombres, [direccion] = @direccion, [dui] = @dui, [telefono] = @telefono, [email] = @email, [tipo] = @tipo WHERE [id_user] = @original_id_user AND (([usuario] = @original_usuario) OR ([usuario] IS NULL AND @original_usuario IS NULL)) AND (([contraseña] = @original_contraseña) OR ([contraseña] IS NULL AND @original_contraseña IS NULL)) AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([direccion] = @original_direccion) OR ([direccion] IS NULL AND @original_direccion IS NULL)) AND (([dui] = @original_dui) OR ([dui] IS NULL AND @original_dui IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([tipo] = @original_tipo) OR ([tipo] IS NULL AND @original_tipo IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id_user" Type="Int32" />
                <asp:Parameter Name="original_usuario" Type="String" />
                <asp:Parameter Name="original_contraseña" Type="String" />
                <asp:Parameter Name="original_nombres" Type="String" />
                <asp:Parameter Name="original_direccion" Type="String" />
                <asp:Parameter Name="original_dui" Type="Int32" />
                <asp:Parameter Name="original_telefono" Type="Int32" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_tipo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="contraseña" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="dui" Type="Int32" />
                <asp:Parameter Name="telefono" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="tipo" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="Empleado" Name="tipo" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="usuario" Type="String" />
                <asp:Parameter Name="contraseña" Type="String" />
                <asp:Parameter Name="nombres" Type="String" />
                <asp:Parameter Name="direccion" Type="String" />
                <asp:Parameter Name="dui" Type="Int32" />
                <asp:Parameter Name="telefono" Type="Int32" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="tipo" Type="String" />
                <asp:Parameter Name="original_id_user" Type="Int32" />
                <asp:Parameter Name="original_usuario" Type="String" />
                <asp:Parameter Name="original_contraseña" Type="String" />
                <asp:Parameter Name="original_nombres" Type="String" />
                <asp:Parameter Name="original_direccion" Type="String" />
                <asp:Parameter Name="original_dui" Type="Int32" />
                <asp:Parameter Name="original_telefono" Type="Int32" />
                <asp:Parameter Name="original_email" Type="String" />
                <asp:Parameter Name="original_tipo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    
                    Ingrese ID de Empleado:</td>
                <td class="auto-style4">
                    
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                    
                </td>
                <td>
                    
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Ingrese Nombre de Empleado:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtnombre" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">Ingrese Contraseña:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcontraseña1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Ingrese Nombre Usuario:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtusuario" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">Repita la contraseña:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcontrasena2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Ingrese su Dirección:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtdireccion" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">Ingrese su Email:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Ingrese DUI:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtdui" runat="server"></asp:TextBox>
                </td>
                <td>Ingrese su Telefono:</td>
                <td>
                    <asp:TextBox ID="txttelefono" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnregistrar" runat="server" OnClick="btnregistrar_Click" Text="Registrar" Width="170px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Buscar" />
        <br />
        <br />
        <asp:GridView ID="Gv" runat="server" AutoGenerateColumns="False" CssClass="auto-style10" DataKeyNames="id_user" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id_user" HeaderText="id_user" InsertVisible="False" ReadOnly="True" SortExpression="id_user" />
                <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
                <asp:BoundField DataField="usuario" HeaderText="usuario" SortExpression="usuario" />
                <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                <asp:BoundField DataField="dui" HeaderText="dui" SortExpression="dui" />
                <asp:BoundField DataField="contraseña" HeaderText="contraseña" SortExpression="contraseña" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                <asp:BoundField DataField="tipo" HeaderText="tipo" SortExpression="tipo" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <br />
    </form>
</body>
</html>
