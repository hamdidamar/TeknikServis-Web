using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TeknikServis_Web.Entity;

namespace TeknikServis_Web
{
    public partial class AnaSayfa : System.Web.UI.Page
    {

        DboTeknikServisEntities db = new DboTeknikServisEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnAra_Click(object sender, EventArgs e)
        {
            Listele();
        }
        public void Listele()
        {
            var degerler = db.Tbl_UrunTakip.Where(x => x.SeriNo == txtUrunSeriNo.Text).ToList();
            rptrUrunTakip.DataSource = degerler;
            rptrUrunTakip.DataBind();
        }
    }
}