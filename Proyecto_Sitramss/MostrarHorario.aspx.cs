using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MostrarHorario : System.Web.UI.Page
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
            this.GridView1.Visible = false;
        }
        cn.Close();
    }
}
