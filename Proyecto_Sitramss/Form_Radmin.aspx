<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form_Radmin.aspx.cs" Inherits="Form_Radmin" %>

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
            swal("Completado", "Su registro se ha eliminado :)", "info");
        }
        function msj2() {
            swal("Completado", "Su registro se ha modificado :)", "info");
        }
        function msj3() {
            swal("ERROR", "FATAL ERROR USTED DEBE SELECCIONAR ALGO", "error");
        }
        function nel() {
            swal("ERROR", "FATAL ERROR INGRESAR USUARIO VERIFIQUE SUS CAMPOS", "error");
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
     <style type="text/css">
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
        .auto-style10 {
            height: 26px;
            width: 374px;
        }
        .auto-style11 {
            width: 374px;
        }
        .auto-style12 {
            width: 202px;
        }
        .auto-style13 {
            height: 26px;
            width: 202px;
        }
        .auto-style14 {
            height: 23px;
            width: 202px;
        }
        .auto-style16 {
            width: 225px;
        }
        .auto-style17 {
            width: 35%
        }
        .auto-style18 {
            width: 374px;
            height: 23px;
        }
         .auto-style19 {
             display: block;
             padding: 6px 12px;
             font-size: 14px;
             line-height: 1.42857143;
             color: #555;
             background-color: #fff;
             background-image: none;
             border: 1px solid #ccc;
             border-radius: 4px;
             -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
             box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
             -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
             -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
             transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
         }
         .auto-style21 {
             width: 621px;
         }
         .auto-style22 {
             width: 88px;
         }
         .auto-style23 {
             width: 43%;
             margin-right: 0px;
         }
        </style>
</head>
<body>
    <form id="form1"  runat="server">
    <div class="col-md-8 col-md-offset-2">
    
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
    
        <br />
    
    </div>
        <div class="col-md-8 col-md-offset-2">
           
        <table class="table">
            <tr >
                <td class="auto-style10"><h4 style="color: #FFFFFF">&nbsp;</h4></td>
                <td >
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"  class="form-control" Width="21px" Visible="False"></asp:TextBox>
                    
                </td>
                <td class="auto-style12">
                    
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtsesion" runat="server" OnTextChanged="txtsesion_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"><h4 style="color: #FFFFFF; width: 246px;">Ingrese Nombre de Admin:</h4></td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style13"><h4 style="color: #FFFFFF">Ingrese Contraseña:</h4></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtcontraseña1" runat="server" CssClass="form-control" Height="25px" Width="200px" TextMode="Password"></asp:TextBox>
                    
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Las contraseñas no son iguales" Font-Bold="True" ForeColor="#FF3300" ControlToCompare="txtcontraseña1" ControlToValidate="txtcontrasena2"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                
                <td class="auto-style18"><h4 style="color: #FFFFFF">Ingrese Nombre Usuario:</h4></td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtusuario" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style14"><h4 style="color: #FFFFFF">Repita la contraseña:</h4></td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtcontrasena2" runat="server" CssClass="form-control" Height="25px" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style10"><h4 style="color: #FFFFFF">Ingrese su Dirección:</h4></td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtdireccion" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                    </td>
                <td class="auto-style13"><h4 style="color: #FFFFFF">Ingrese su Email:</h4></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><h4 style="color: #FFFFFF">Ingrese DUI:</h4></td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtdui" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                    </td>
                <td class="auto-style12"><h4 style="color: #FFFFFF">Ingrese su Telefono:</h4></td>
                <td>
                    <asp:TextBox ID="txttelefono" runat="server" CssClass="form-control" Height="25px" Width="200px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="btnregistrar" runat="server" OnClick="btnregistrar_Click" Text="Registrar" CssClass="btn btn-primary mb-2"  Width="170px" Font-Names="Segoe UI" Font-Size="Large" Height="40px" Font-Bold="True" />
              
                    </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" CssClass="btn btn-primary mb-2" OnClientClick="return Update(this);" Width="170px" Font-Names="Segoe UI" Font-Size="Large" Height="40px" Font-Bold="True" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button3" runat="server" Text="Eliminar" CssClass="btn btn-primary mb-2" OnClick="Button3_Click" OnClientClick="return ConfirmDelete(this);" Width="170px" Font-Names="Segoe UI" Font-Size="Large" Height="40px" Font-Bold="True" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary mb-2" Font-Bold="True" Font-Names="Segoe UI" Font-Size="Large" Height="40px" OnClick="Button4_Click" Text="Limpiar" Width="170px" />
                </td>
            </tr>
            </table>
                
            <table class="auto-style17">
                <tr>
                    <td class="auto-style16">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
                
        <br />
            <table class="auto-style23">
                <tr>
                    <td class="auto-style22">
        <asp:TextBox ID="txtbuscar" runat="server" Height="28px" Width="526px" CssClass="auto-style19"></asp:TextBox>
                    </td>
                    <td class="auto-style21">
                    <asp:ImageButton ID="ImageButton1" runat="server" DescriptionUrl="~/Images/busquedaicon.png" ImageUrl="~/Images/buscar.png" Height="28px" Width="28px" OnClick="ImageButton1_Click" BackColor="Black" ImageAlign="Right" />
                    </td>
                </tr>
            </table>
        <br />
        <asp:GridView ID="Gv" runat="server" OnSelectedIndexChanged="Gv_SelectedIndexChanged" AutoGenerateColumns="False" Cssclass="table table-striped" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id_user" HeaderText="ID" />
                <asp:BoundField DataField="usuario" HeaderText="USUARIO" />
                <asp:BoundField DataField="nombres" HeaderText="NOMBRE" />
                <asp:BoundField DataField="direccion" HeaderText="DIRECCION" />
                <asp:BoundField DataField="dui" HeaderText="DUI" />
                <asp:BoundField DataField="email" HeaderText="E-MAIL" />
                <asp:BoundField DataField="telefono" HeaderText="TELEFONO" />
                <asp:BoundField DataField="tipo" HeaderText="TIPO" />
                <asp:CommandField ButtonType="Button" HeaderText="Seleccion" ShowHeader="True" ShowSelectButton="True" >
                <ControlStyle CssClass="btn btn-primary mb-2" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
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
            <br />
                    <asp:Button ID="btnRegresar" runat="server" CssClass="btn btn-primary mb-2" Height="34px" Text="Regresar" Width="129px" ForeColor="Black" OnClick="btnRegresar_Click"  />
        <br />
        <br />
            </div>
    </form>
</body>
</html>
