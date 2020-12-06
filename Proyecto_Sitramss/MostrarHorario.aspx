<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MostrarHorario.aspx.cs" Inherits="MostrarHorario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Estilo.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">
        <div class="container">
            <div class="row">
                <h2>Horarios</h2>
                <p>&nbsp;</p>
            </div>
            <div>

                <center><asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView></center>
                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
