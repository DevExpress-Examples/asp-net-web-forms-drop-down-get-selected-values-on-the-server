using DevExpress.Web;
using System;

public partial class _Default : System.Web.UI.Page {

    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void ASPxButton1_Click(object sender, EventArgs e) {
        ASPxLabel1.Text = ASPxDropDownEdit1.KeyValue.ToString();
    }
}