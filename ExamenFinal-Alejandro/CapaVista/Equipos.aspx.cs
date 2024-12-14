using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal_Alejandro.CapaVista
{
    public partial class Equipos : System.Web.UI.Page
    {
        string str = "Data Source=ALEJANDRO-PC\\SQLEXPRESS;Initial Catalog=GestionEquipos;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            string com = "Select * from usuarios where estado= 'activo'";
            SqlDataAdapter adpt = new SqlDataAdapter(com, con);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "nombre";
            DropDownList1.DataValueField = "usuarioid";
            DropDownList1.DataBind();
        }
    }
}