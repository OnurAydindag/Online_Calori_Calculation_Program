using CalC.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalC
{

    public partial class Login : System.Web.UI.Page
    {
        UserTable loginicin = new UserTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var kullanici = mail.Text;
            var sifre = password.Text;
            var loginMi = false;
            var sifreGetir = false;
            loginMi = loginicin.LoginKontrol(kullanici);
            sifreGetir = loginicin.PasswordKontrol(sifre);
            if (loginMi && sifreGetir)
            {
                Response.Redirect("/Default.aspx");
            }
            else
            {
                uyarimesaj.Text = "Lütfen Verileri Doğru Giriniz";
            }
        }
    }
}