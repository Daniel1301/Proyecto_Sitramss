using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class EditarVenta : System.Web.UI.Page
{

    SqlConnection Conexion;
    public string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        Conexion = new SqlConnection(@"Data Source=DESKTOP-HU8EM4D;database =SITRAMSS; integrated security= true");

        id = Request.QueryString["ID"];

        if (!IsPostBack)
        {

            if (id != null)
            {


                Conexion.Open();
                SqlCommand cmd = new SqlCommand("select nombres, apellidos, servicio, destino, precio, cantidad, fecha_viaje, total from ventas where n_venta = @n_venta", Conexion);
                cmd.Parameters.Add("n_venta", SqlDbType.Int).Value = Convert.ToInt32(id);
                SqlDataReader registros = cmd.ExecuteReader();

                registros.Read();

                TextBox1.Text = registros["nombres"].ToString();
                TextBox2.Text = registros["apellidos"].ToString();
                TextBox3.Text = registros["servicio"].ToString();
                TextBox4.Text = registros["destino"].ToString();
                TextBox5.Text = registros["precio"].ToString();
                TextBox6.Text = registros["cantidad"].ToString();
                TextBox7.Text = registros["fecha_viaje"].ToString();
                //cmd.ExecuteNonQuery();
                Conexion.Close();
            }
            else
            {
                Response.Redirect("Ventas.aspx");
            }

        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Conexion.Open();

            decimal total = Convert.ToDecimal(TextBox5.Text) * Convert.ToDecimal(TextBox6.Text);

            SqlCommand cmd = new SqlCommand("update ventas  set nombres = @nombres, apellidos = @apellidos, servicio = @servicio, destino = @destino,precio = @precio, cantidad = @cantidad, total = @total, fecha_viaje =@fecha_viaje where n_venta = @n_venta", Conexion);
            cmd.Parameters.Add("nombres", SqlDbType.VarChar, 50).Value = TextBox1.Text;
            cmd.Parameters.Add("apellidos", SqlDbType.VarChar, 50).Value = TextBox2.Text;
            cmd.Parameters.Add("servicio", SqlDbType.VarChar, 50).Value = TextBox3.Text;
            cmd.Parameters.Add("destino", SqlDbType.VarChar, 50).Value = TextBox4.Text;
            cmd.Parameters.Add("precio", SqlDbType.Decimal).Value = TextBox5.Text;
            cmd.Parameters.Add("cantidad", SqlDbType.Int, 50).Value = TextBox6.Text;
            cmd.Parameters.Add("fecha_viaje", SqlDbType.Date, 50).Value = TextBox7.Text;
            cmd.Parameters.Add("total", SqlDbType.Decimal).Value = total;
            cmd.Parameters.Add("n_venta", SqlDbType.Int).Value = Convert.ToInt32(id);

            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "Success()", true);
            Conexion.Close();
        }
        catch (Exception x)
        {

            ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "DatosErroneos()", true);
            //Label1.Text = "<script> Swal.fire({position: 'top-end', icon: 'success',title: 'Has logrado guardar tus avances.', showConfirmButton: false,timer: 1500}) </script>";
        }




    }
}