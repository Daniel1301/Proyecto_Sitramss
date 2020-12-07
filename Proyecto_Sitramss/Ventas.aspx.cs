using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Ventas : System.Web.UI.Page
{

    SqlConnection Conexion;

    protected void Page_Load(object sender, EventArgs e)
    {
        Conexion = new SqlConnection(@"Data Source=DESKTOP-HU8EM4D;database =SITRAMSS; integrated security= true");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistrarVentas.aspx");
    }

    protected void btnEliminarVenta_Click(object sender, EventArgs e)
    {

        LinkButton btnEliminar = (LinkButton)sender;

        int id = Convert.ToInt32(btnEliminar.CommandArgument);


        try
        {

            Conexion.Open();

            SqlCommand cmd = new SqlCommand("DELETE FROM ventas where n_venta = @n_venta", Conexion);
            cmd.Parameters.Add("n_venta", SqlDbType.Int, 50).Value = id;
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "Success()", true);
            Conexion.Close();
        }
        catch (Exception x)
        {

            ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "Error()", true);
            //Label1.Text = "<script> Swal.fire({position: 'top-end', icon: 'success',title: 'Has logrado guardar tus avances.', showConfirmButton: false,timer: 1500}) </script>";
        }


        GridView1.DataBind();


    }
}