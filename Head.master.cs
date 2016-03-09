using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Head : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string login = txtLogin.Text;
        string pass = txtPass.Text;
        Database db = new Database();
        string query = String.Format("SELECT Логин, Пароль FROM Клиент WHERE Логин = '{0}' AND пароль = '{1}'", login, pass);
        DataTable dt = db.getRow(query);
        if (dt.Rows[0] != null)
        {   
            Session.Add("login", login);
            Label1.Text = "Привет " + login;
        } 
    }



    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void btnMain_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }

    protected void btnNews_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pages/news.aspx");
    }

    protected void btnAbout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pages/about.aspx");
    }

    protected void btnDestination_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pages/destination.aspx");
    }
}
