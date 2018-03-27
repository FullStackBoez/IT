using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
   static Dictionary<string, double> listA;
   static double suma;
   protected void Page_Load(object sender, EventArgs e)
    {   
        if (!IsPostBack)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            listA = new Dictionary<string, double>();
            listA.Add("Forrest Gump", 150);
            listA.Add("Good Will Hunting", 130);
            listA.Add("A beautiful mind", 100);
            listA.Add("Keeping up with the Joneses", 120);
            listA.Add("Masterminds", 170);
            listA.Add("Ted2", 180);
            listA.Add("Batman vs Superman 3D", 350);
            listA.Add("Deadpool 3D", 300);
            listA.Add("The Accountant", 200);
            divv.Visible = false;
            moviepage.Visible = false;
            suma = 0;
        }
    }

    protected void login(object sender, EventArgs e)
    {
        moviepage.Visible = true;
        logi.Visible = false;
    }
    protected void buy(object sender, EventArgs e)
    {
        if (IsValid)
        {
            double kol = 0;
            if (C1.Checked)
            {
                listA.TryGetValue(C1.Text,out kol);
                suma += (kol * Convert.ToDouble(T1.Text));
            }
            if (C2.Checked)
            {
                listA.TryGetValue(C2.Text, out kol);
                suma += (kol * Convert.ToDouble(T2.Text));
            }
            if (C3.Checked)
            {
                listA.TryGetValue(C3.Text, out kol);
                suma += (kol * Convert.ToDouble(T3.Text));
            }
            sum.Text = "Вкупната цена изнесува " + suma + " МКД";
        }
        
    }

    protected void Change(object sender, EventArgs e)
    {
        List<string> movies=new List<string>();
        movies = listA.Keys.ToList<string>();
        if (list.SelectedItem.Text.Equals("Акција"))
        {
            C1.Text = movies[6];
            C2.Text = movies[7];
            C3.Text = movies[8];
        }
       else if (list.SelectedItem.Text.Equals("Драма"))
        {
            C1.Text = movies[0];
            C2.Text = movies[1];
            C3.Text = movies[2];
        }
       else if (list.SelectedItem.Text.Equals("Комедија"))
        {
            C1.Text = movies[3];
            C2.Text = movies[4];
            C3.Text = movies[5];
        }
        divv.Visible = true;
    }

    protected void C1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox ch = sender as CheckBox;
        if (ch.Checked)
        {
            string id = ch.ID;
            if (id.EndsWith("1")) R1.Enabled = true;
            else if (id.EndsWith("2")) R2.Enabled = true;
            else if (id.EndsWith("3")) R3.Enabled = true;
        }
        else
        {
            string id = ch.ID;
            if (id.EndsWith("1")) R1.Enabled = false;
            else if (id.EndsWith("2")) R2.Enabled = false;
            else if (id.EndsWith("3")) R3.Enabled = false;
        }
    }
}