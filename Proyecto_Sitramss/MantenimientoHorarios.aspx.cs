using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class MantenimientoHorarios : System.Web.UI.Page
{
    DataSet horario = new DataSet();
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

            SqlCommand cmd = new SqlCommand("insert into horarios (horario_salida, horario_llegada, lugar_salida, lugar_destino) values(@hs, @hl, @ls, @ld) ", cn);
            cmd.Parameters.Add("@hs", SqlDbType.VarChar).Value = this.TxtHsalida.Text;
            cmd.Parameters.Add("@hl", SqlDbType.VarChar).Value = this.TxtHllegada.Text;
            cmd.Parameters.Add("@ls", SqlDbType.VarChar).Value = this.TxtLsalida.Text;
            cmd.Parameters.Add("@ld", SqlDbType.VarChar).Value = this.TxtLdestino.Text;
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
            SqlCommand cmd = new SqlCommand("SELECT id_horario, horario_salida, horario_llegada, lugar_salida, lugar_destino FROM horarios", cn);
            if (cn.State == ConnectionState.Closed == true) cn.Open();
            SqlDataAdapter oda = new SqlDataAdapter(cmd);
            oda.Fill(horario);
            this.GridView1.DataSource = horario;
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
        this.TxtHsalida.Text = "";
        this.TxtHllegada.Text = "";
        this.TxtLsalida.Text = "";
        this.TxtLdestino.Text = "";
        BtnInsertar.Visible = true;
        BtnModificar.Visible = false;
        BtnCancelar.Visible = false;
    }

    private void EliminarUsuario(string Id)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("delete from horarios where id_horario = @ID", cn);
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
            SqlCommand cmd = new SqlCommand("SELECT id_horario ,horario_salida, horario_llegada, lugar_salida, lugar_destino FROM horarios where id_horario = @ID", cn);
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(Id);
            if (cn.State == ConnectionState.Closed == true) cn.Open();
            SqlDataAdapter oda = new SqlDataAdapter(cmd);
            oda.Fill(horario);
            if (horario.Tables[0].Rows.Count > 0)
            {
                this.TxtHsalida.Text = horario.Tables[0].Rows[0].ItemArray[1].ToString();
                this.TxtHllegada.Text = horario.Tables[0].Rows[0].ItemArray[2].ToString();
                this.TxtLsalida.Text = horario.Tables[0].Rows[0].ItemArray[3].ToString();
                this.TxtLdestino.Text = horario.Tables[0].Rows[0].ItemArray[4].ToString();
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
            SqlCommand cmd = new SqlCommand("Update horarios set horario_salida = @hs, horario_llegada = @hl, lugar_salida = @ls, lugar_destino where id_horario = @ID", cn);
            cmd.Parameters.Add("@ID", SqlDbType.Int).Value = Convert.ToInt32(this.Lblid.Text);
            cmd.Parameters.Add("@hs", SqlDbType.VarChar).Value = this.TxtHsalida.Text;
            cmd.Parameters.Add("@hl", SqlDbType.VarChar).Value = this.TxtHllegada.Text;
            cmd.Parameters.Add("@ls", SqlDbType.VarChar).Value = this.TxtLsalida.Text;
            cmd.Parameters.Add("@ld", SqlDbType.VarChar).Value = this.TxtLdestino.Text;
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

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }
}