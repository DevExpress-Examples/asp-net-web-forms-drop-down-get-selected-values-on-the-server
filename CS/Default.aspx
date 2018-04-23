<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function OnSelectedIndexChanged(s, e) {
            var items = listbox.GetSelectedItems();
            var text = "";
            var values = "";
            for (var i = 0; i < items.length; i++) {
                text += items[i].text + ";";
                values += items[i].value + ";";
            }
            dd.SetText(text)
            dd.SetKeyValue(values);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <dx:ASPxDropDownEdit ID="ASPxDropDownEdit1" runat="server" ClientInstanceName="dd" Width="300px">
            <DropDownWindowTemplate>
                <dx:ASPxListBox ID="ASPxListBox1" runat="server" Width="100%" ClientInstanceName="listbox"
                    DataSourceID="AccessDataSource1" SelectionMode="CheckColumn"
                    ValueField="CategoryID" TextField="CategoryName"
                    ValueType="System.Int32">
                    <ClientSideEvents SelectedIndexChanged="OnSelectedIndexChanged" />
                </dx:ASPxListBox>
            </DropDownWindowTemplate>
        </dx:ASPxDropDownEdit>

        <table>
            <tr>
                <td>Send selected values to the server:
                </td>
                <td>
                    <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Ok" OnClick="ASPxButton1_Click">
                    </dx:ASPxButton>
                </td>
            </tr>
        </table>

        <asp:AccessDataSource ID="AccessDataSource1" runat="server"
            DataFile="~/App_Data/Northwind.mdb" SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>

        <dx:ASPxLabel ID="ASPxLabel1" runat="server">
        </dx:ASPxLabel>

    </form>
</body>
</html>
