<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.master" AutoEventWireup="true" CodeFile="Ventas.aspx.cs" Inherits="Ventas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 896px;
        }
        .auto-style2 {
            width: 128px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
    <asp:Button ID="Button1" runat="server" Text="Nueva Venta" CssClass="btn btn-primary mt-t mb-5 mx-auto" OnClick="Button1_Click" style="margin-left: 48px" />

            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="n_venta" DataSourceID="SqlDataSource1"  CssClass="table table-bordered table-hover w-50 mx-auto" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="n_venta" HeaderText="n_venta" InsertVisible="False" ReadOnly="True" SortExpression="n_venta"  />
            <asp:BoundField DataField="fecha_viaje" HeaderText="fecha_viaje" SortExpression="fecha_viaje" />
            <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="apellidos" SortExpression="apellidos" />
            <asp:BoundField DataField="servicio" HeaderText="servicio" SortExpression="servicio" />
            <asp:BoundField DataField="destino" HeaderText="destino" SortExpression="destino" />
            <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
            <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
            <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
            
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

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SITRAMSSConnectionString5 %>" SelectCommand="SELECT [n_venta], [fecha_viaje], [nombres], [apellidos], [servicio], [destino], [cantidad], [fecha], [total], [precio] FROM [ventas]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [ventas] WHERE [n_venta] = @original_n_venta AND (([fecha_viaje] = @original_fecha_viaje) OR ([fecha_viaje] IS NULL AND @original_fecha_viaje IS NULL)) AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([servicio] = @original_servicio) OR ([servicio] IS NULL AND @original_servicio IS NULL)) AND (([destino] = @original_destino) OR ([destino] IS NULL AND @original_destino IS NULL)) AND (([cantidad] = @original_cantidad) OR ([cantidad] IS NULL AND @original_cantidad IS NULL)) AND (([fecha] = @original_fecha) OR ([fecha] IS NULL AND @original_fecha IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL)) AND (([precio] = @original_precio) OR ([precio] IS NULL AND @original_precio IS NULL))" InsertCommand="INSERT INTO [ventas] ([fecha_viaje], [nombres], [apellidos], [servicio], [destino], [cantidad], [fecha], [total], [precio]) VALUES (@fecha_viaje, @nombres, @apellidos, @servicio, @destino, @cantidad, @fecha, @total, @precio)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [ventas] SET [fecha_viaje] = @fecha_viaje, [nombres] = @nombres, [apellidos] = @apellidos, [servicio] = @servicio, [destino] = @destino, [cantidad] = @cantidad, [fecha] = @fecha, [total] = @total, [precio] = @precio WHERE [n_venta] = @original_n_venta AND (([fecha_viaje] = @original_fecha_viaje) OR ([fecha_viaje] IS NULL AND @original_fecha_viaje IS NULL)) AND (([nombres] = @original_nombres) OR ([nombres] IS NULL AND @original_nombres IS NULL)) AND (([apellidos] = @original_apellidos) OR ([apellidos] IS NULL AND @original_apellidos IS NULL)) AND (([servicio] = @original_servicio) OR ([servicio] IS NULL AND @original_servicio IS NULL)) AND (([destino] = @original_destino) OR ([destino] IS NULL AND @original_destino IS NULL)) AND (([cantidad] = @original_cantidad) OR ([cantidad] IS NULL AND @original_cantidad IS NULL)) AND (([fecha] = @original_fecha) OR ([fecha] IS NULL AND @original_fecha IS NULL)) AND (([total] = @original_total) OR ([total] IS NULL AND @original_total IS NULL)) AND (([precio] = @original_precio) OR ([precio] IS NULL AND @original_precio IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_n_venta" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_fecha_viaje" />
        <asp:Parameter Name="original_nombres" Type="String" />
        <asp:Parameter Name="original_apellidos" Type="String" />
        <asp:Parameter Name="original_servicio" Type="String" />
        <asp:Parameter Name="original_destino" Type="String" />
        <asp:Parameter Name="original_cantidad" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_fecha" />
        <asp:Parameter Name="original_total" Type="Decimal" />
        <asp:Parameter Name="original_precio" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter DbType="Date" Name="fecha_viaje" />
        <asp:Parameter Name="nombres" Type="String" />
        <asp:Parameter Name="apellidos" Type="String" />
        <asp:Parameter Name="servicio" Type="String" />
        <asp:Parameter Name="destino" Type="String" />
        <asp:Parameter Name="cantidad" Type="Int32" />
        <asp:Parameter DbType="Date" Name="fecha" />
        <asp:Parameter Name="total" Type="Decimal" />
        <asp:Parameter Name="precio" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter DbType="Date" Name="fecha_viaje" />
        <asp:Parameter Name="nombres" Type="String" />
        <asp:Parameter Name="apellidos" Type="String" />
        <asp:Parameter Name="servicio" Type="String" />
        <asp:Parameter Name="destino" Type="String" />
        <asp:Parameter Name="cantidad" Type="Int32" />
        <asp:Parameter DbType="Date" Name="fecha" />
        <asp:Parameter Name="total" Type="Decimal" />
        <asp:Parameter Name="precio" Type="Decimal" />
        <asp:Parameter Name="original_n_venta" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_fecha_viaje" />
        <asp:Parameter Name="original_nombres" Type="String" />
        <asp:Parameter Name="original_apellidos" Type="String" />
        <asp:Parameter Name="original_servicio" Type="String" />
        <asp:Parameter Name="original_destino" Type="String" />
        <asp:Parameter Name="original_cantidad" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_fecha" />
        <asp:Parameter Name="original_total" Type="Decimal" />
        <asp:Parameter Name="original_precio" Type="Decimal" />
    </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

