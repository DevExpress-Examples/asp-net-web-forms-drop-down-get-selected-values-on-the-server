Imports DevExpress.Web
Imports System

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
        ASPxLabel1.Text = ASPxDropDownEdit1.KeyValue.ToString()
    End Sub
End Class