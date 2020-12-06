using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class MantenimientoBus : System.Web.UI.Page
{
    DataSet bus = new DataSet();
    SqlConnection cn; 

    protected void Page_Load(object sender, EventArgs e)
    {
        cn = new SqlConnection(@"Data Source=DESKTOP-HU8EM4D;Initial Catalog=SITRAMSS;Integrated Security=True");
        if (!IsPostBack)
        {
            llenarGrid();
        }
    }

    private void insertar()
    {
        try
        {

            SqlCommand cmd = new SqlCommand("insert into bus (n_asientos,placa,color) values(@n,@P,@c) ", cn);
            cmd.Parameters.Add("@n", SqlDbType.Int).Value = Convert.ToInt32(this.TxtAsientos.Text);
            cmd.Parameters.Add("@P", SqlDbType.VarChar).Value = this.TxtPlaca.Text;
            cmd.Parameters.Add("@c", SqlDbType.VarChar).Value = this.TxtColor.Text;
            if (cn.State == ConnectionState.Closed == true)
            cn.Open();
            cmd.ExecuteNonQuery();
            this.LblMensaje.Text = "Insertado con Exito";

        }
        catch (Exception)
        {
            this.LblMensaje.Text = "error al insertar";
            this.GridView1.Visible = false;
        }
        cn.Close();
    }
    private void llenarGrid()
    {
        try
        {
            SqlCommand cmd = new SqlCommand("SELECT id_bus,n_asientos,placa,color FROM bus", cn);
            if (cn.State == ConnectionState.Closed == true) cn.Open();
            SqlDataAdapter oda = new SqlDataAdapter(cmd);
            oda.Fill(bus);
            this.GridView1.DataSource = bus;
            this.GridView1.DataBind();
        }
        catch (Exception)
        {
            this.LblMensaje.Text = "Error ";
            this.GridView1.Visible = false;
        }
        cn.Close();
    }

    private void LimpiarCampos()
    {
        this.TxtAsientos.Text = "";
        this.TxtColor.Text = "";
        this.TxtPlaca.Text = "";
        BtnInsertar.Visible = true;
        BtnModificar.Visible = false;
        BtnCancelar.Visible = false;
    }
    private void EliminarUsuario(string Id)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("  delete from bus where id_bus=@ID", cn);
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(Id);
            if (cn.State == ConnectionState.Closed == true) cn.Open();
            cmd.ExecuteNonQuery();
            this.LblMensaje.Text = "Borrado con Exito";
        }
        catch (Exception)
        {
            this.LblMensaje.Text = "Error ";
        }
        cn.Close();
    }

    private void BuscarUnUsuario(string Id)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("SELECT id_bus,n_asientos,placa,color FROM bus where id_bus=@ID", cn);
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(Id);
            if (cn.State == ConnectionState.Closed == true) cn.Open();
            SqlDataAdapter oda = new SqlDataAdapter(cmd);
            oda.Fill(bus);
            if (bus.Tables[0].Rows.Count > 0)
            {
                this.TxtAsientos.Text = bus.Tables[0].Rows[0].ItemArray[1].ToString();
                this.TxtPlaca.Text = bus.Tables[0].Rows[0].ItemArray[2].ToString();
                this.TxtColor.Text = bus.Tables[0].Rows[0].ItemArray[3].ToString();
                this.Lblid.Text = Id.ToString();
            }
        }
        catch (Exception)
        {
            this.LblMensaje.Text = "Error ";
        }
        cn.Close();
    }

    private void ModificarUsuario()
    {
        try
        {
            SqlCommand cmd = new SqlCommand("Update bus set n_asientos=@n,placa=@P,color=@C where id_bus=@ID", cn);
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(this.Lblid.Text);
            cmd.Parameters.Add("@n", SqlDbType.Int).Value = Convert.ToInt32(this.TxtAsientos.Text);
            cmd.Parameters.Add("@P", SqlDbType.VarChar).Value = this.TxtPlaca.Text;
            cmd.Parameters.Add("@c", SqlDbType.VarChar).Value = this.TxtColor.Text;
            if (cn.State == ConnectionState.Closed == true) cn.Open();
            cmd.ExecuteNonQuery();
            this.LblMensaje.Text = "Modificado con Exito";
        }
        catch (Exception)
        {
            this.LblMensaje.Text = "Error ";
        }
        cn.Close();
    }



    protected void BtnInsertar_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "alert()", true);
        insertar();
        llenarGrid();
        LimpiarCampos();
    }

    protected void BtnModificar_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "alert2()", true);
        ModificarUsuario();
        LimpiarCampos();
        llenarGrid();
        GridView1.SelectedIndex = -1;
    }

    protected void BtnCancelar_Click(object sender, EventArgs e)
    {
        LimpiarCampos();
        GridView1.SelectedIndex = -1;
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        TableCell Fila = GridView1.Rows[e.NewSelectedIndex].Cells[2];
        BuscarUnUsuario(Fila.Text.ToString());
        BtnInsertar.Visible = false;
        BtnModificar.Visible = true;
        BtnCancelar.Visible = true;
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "ramdomtext", "alert3()", true);
        TableCell Fila = GridView1.Rows[e.RowIndex].Cells[2];
        EliminarUsuario(Fila.Text.ToString());
        llenarGrid();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}