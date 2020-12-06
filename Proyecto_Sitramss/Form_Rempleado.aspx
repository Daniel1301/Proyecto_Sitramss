<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form_Rempleado.aspx.cs" Inherits="Form_Rempleado" %>

<!DOCTYPE html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script> 
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
            width: 210px;
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
        <div class="col-md-8 col-md-offset-2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    
                    Ingrese ID de Empleado:</td>
                <td class="auto-style4">
                    
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    
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
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" OnClientClick="return Update(this);" Width="125px" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Eliminar" OnClick="Button3_Click" Width="124px" />
                </td>
            </tr>
        </table>
        <br />
        <asp:TextBox ID="txtbuscar" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" />
        <br />
        <asp:GridView ID="Gv" runat="server" OnSelectedIndexChanged="Gv_SelectedIndexChanged" AutoGenerateColumns="False" CssClass="auto-style10">
            <Columns>
                <asp:BoundField DataField="id_user" HeaderText="ID" />
                <asp:BoundField DataField="usuario" HeaderText="USUARIO" />
                <asp:BoundField DataField="nombres" HeaderText="NOMBRE" />
                <asp:BoundField DataField="contraseña" HeaderText="CONTRASENA" />
                <asp:BoundField DataField="direccion" HeaderText="DIRECCION" />
                <asp:BoundField DataField="dui" HeaderText="DUI" />
                <asp:BoundField DataField="email" HeaderText="E-MAIL" />
                <asp:BoundField DataField="telefono" HeaderText="TELEFONO" />
                <asp:CommandField ButtonType="Button" HeaderText="Seleccion" ShowHeader="True" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
            </div>
    </form>
</body>
</html>
