using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeknikServis_Web.Entity;

namespace TeknikServis_Web
{
    public partial class Default : System.Web.UI.Page
    {
        DboTeknikServisEntities db = new DboTeknikServisEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            rprtHakkimizda.DataSource = db.Tbl_Hakkimizda.ToList();
            rprtHakkimizda.DataBind();

            rprtUrunler.DataSource = db.Tbl_Urun.ToList();
            rprtUrunler.DataBind();
        }

        protected void btnIletisimGonder_Click(object sender, EventArgs e)
        {
            Tbl_Iletisim i = new Tbl_Iletisim();
            i.AdSoyad = txtIletisimAd.Text;
            i.Mail = txtIletisimMail.Text;
            i.Konu = txtIletisimKonu.Text;
            i.Mesaj = txtIletisimMesaj.Text;
            db.Tbl_Iletisim.Add(i);
            db.SaveChanges();
        }
    }
}