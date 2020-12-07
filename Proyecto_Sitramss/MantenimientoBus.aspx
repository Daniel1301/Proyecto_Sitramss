<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MantenimientoBus.aspx.cs" Inherits="MantenimientoBus" %>

<!DOCTYPE html>

  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="w5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.js" type="text/javascript"></script> 
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.css"rel="stylesheet" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<link href="Estilo.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <script src="SweetAlert.js" type="text/javascript"></script>
    <script>
        function alert()
        {
            Swal.fire(
                'Bien Hecho!',
                'Datos Insertados correctamente!',
                'success'
            )
        }

        function alert2() {
            Swal.fire(
                'Bien Hecho!',
                'Se modifico correctamente!',
                'success'
            )
        }

          
        function alert3() {
            Swal.fire(
                'Bien Hecho!',
                'Se elimino correctamente!',
                'success'
            )
        }
       
    </script>

    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
        .auto-style2 {
            width: 306px;
        }
        .auto-style3 {
            width: 487px;
        }
        .auto-style4 {
            width: 100%;
            margin-right: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2 class="text-center text-uppercase display-4">Registro de Buses</h2>

            <asp:Label ID="LblResultado" runat="server" ForeColor="Red"></asp:Label>
            <asp:Label ID="LblMensaje" runat="server"></asp:Label>

            <br />

            <div class="form-horizontal">
                <div class="form-group row">
                    <div class="col mt-5">
                        <h4 class="col mt-5">&nbsp;</h4>
                        <p class="col mt-5" style="left: 1px; top: 1px"><h2>Edite los campos correspondientes . Los registros completos se muestran en la tabla ahí puede observarlos.</h2> </p>
                    </div>
                    <div class="col-lg-5">
                       <asp:Image ID="sitramss" runat="server" Height="200px" Width="200px" BorderColor="Blue" BorderStyle="Double" ImageUrl="~/Images/gyAhcedC_400x400.jpg" class="sitramss"/>
                            </div>
                            <br />
                  
                    </div>
                </div>

                <asp:Label ID="Lblid" runat="server" Visible="false"></asp:Label>
                <br />
                <div class="form-group row">

                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Font-Size="X-Large" Font-Names="Arial Black" ForeColor="White"> Numero de asientos : </asp:Label>
                    <div class="col-md-10">

                        <asp:TextBox ID="TxtAsientos" runat="server" CssClass="auto-style1" Height="30px" Width="652px"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group row">

                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Font-Italic="False" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White">Placa: </asp:Label>
                    <div class="col">

                        <asp:TextBox ID="TxtPlaca" runat="server" CssClass="auto-style1" Height="28px" Width="646px"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">

                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="White">Color :</asp:Label>
                    <div class="col-md-10">

                        <asp:TextBox ID="TxtColor" runat="server" CssClass="auto-style1" Height="29px" Width="645px"></asp:TextBox>
                    </div>
                </div>
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style3">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">

                        <asp:Button ID="BtnInsertar" runat="server" Text="Insertar" CssClass="btn btn-primary mb-10" Font-Bold="True" OnClick="BtnInsertar_Click" Height="38px" Width="248px"/>
                        </td>
                        <td class="auto-style3">

                        <asp:Button ID="BtnModificar" runat="server" Text="Modificar" CssClass="btn btn-primary mb-10 float-right"  OnClick="BtnModificar_Click" Visible="false" Width="327px" Height="35px" style="margin-left: 0"  />
                        </td>
                        <td>

                        <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" CssClass=" btn btn-block btn btn-danger float-right" OnClick="BtnCancelar_Click" Visible="false" style="margin-left: 0" Width="307px" Height="37px" />
                        </td>
                    </tr>
            </table>
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                            OnRowDeleting="GridView1_RowDeleting"                 
                            OnSelectedIndexChanging="GridView1_SelectedIndexChanging"
                             CssClass="table" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                               <asp:CommandField DeleteText="Borrar" ShowDeleteButton="True" />                              
                            </Columns>
                            <AlternatingRowStyle BackColor="White" />
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
                <div class="form-group row">
                </div>
                <div class="form-group row">
                </div>
                <div class="form-group row">
                    <div class="col-lg-7 mt-3">

                    </div>
                </div>
                <br />
                <div class="form-group row">

                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </div>
            </div>
     
    </form>
</body>
</html>
