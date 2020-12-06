using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class RegistrarVentas : System.Web.UI.Page
{
    SqlConnection Conexion;
    protected void Page_Load(object sender, EventArgs e)
    {
        Conexion = new SqlConnection(@"Data Source=USER-PC\MSSQLSERVER12;database =SITRAMSS; integrated security= true");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        try
        {

            Conexion.Open();
            
            decimal total = Convert.ToDecimal(TextBox5.Text) * Convert.ToDecimal(TextBox6.Text);

            SqlCommand cmd = new SqlCommand("Insert into ventas (nombres, apellidos, servicio, destino, precio, cantidad, total, fecha_viaje) Values ( @Nombre, @Apellido, @Servicio, @Destino, @Precio, @Cantidad, @total, @fecha_viaje)", Conexion);
            cmd.Parameters.Add("nombre", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            cmd.Parameters.Add("apellido", SqlDbType.VarChar, 50).Value = TextBox2.Text;
            cmd.Parameters.Add("servicio", SqlDbType.VarChar, 50).Value = TextBox3.Text;
            cmd.Parameters.Add("destino", SqlDbType.VarChar, 50).Value = TextBox4.Text;
            cmd.Parameters.Add("precio", SqlDbType.Decimal).Value = TextBox5.Text;
            cmd.Parameters.Add("cantidad", SqlDbType.Int, 50).Value = TextBox6.Text;
            cmd.Parameters.Add("fecha_viaje", SqlDbType.Date, 50).Value = TextBox7.Text;
            cmd.Parameters.Add("total", SqlDbType.Decimal).Value = total;
           
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "Success()", true);
            Conexion.Close();
        }
        catch(Exception x) {

            ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "DatosErroneos()", true);
            //Label1.Text = "<script> Swal.fire({position: 'top-end', icon: 'success',title: 'Has logrado guardar tus avances.', showConfirmButton: false,timer: 1500}) </script>";
        }

    }
}