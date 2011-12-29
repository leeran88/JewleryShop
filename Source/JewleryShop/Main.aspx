<%@ Page Title="תכשיטי הילה" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Main.aspx.cs" Inherits="JewleryShop.Main" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="Content/themes/custom/jquery-ui-1.8.16.custom.css" rel="stylesheet" type="text/css" />
    <link href="Content/themes/galleria/classic/galleria.classic.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.16.min.js" type="text/javascript"></script>
    <script src="Scripts/galleria-1.2.6.min.js" type="text/javascript"></script>
    <script src="Content/plugins/galleria/galleria.picasa.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#menu").buttonset();
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="menucontainer">
        <div id="menu">
            <input type="radio" id="menuoption0" name="menu" checked="checked" />
            <label for="menuoption0">
                שרשראות</label>
            <input type="radio" id="menuoption1" name="menu" />
            <label for="menuoption1">
                עגילים</label>
            <input type="radio" id="menuoption2" name="menu" />
            <label for="menuoption2">
                צמידים</label>
            <input type="radio" id="menuoption3" name="menu" />
            <label for="menuoption3">
                טבעות</label>
            <input type="radio" id="menuoption4" name="menu" />
            <label for="menuoption4">
                צור קשר</label>
            <input type="radio" id="menuoption5" name="menu" />
            <label for="menuoption5">
                אודות</label>
        </div>
    </div>
    <div class="bodycontainer">
        <div id="galleria" dir="ltr" class="galleria"></div>
    </div>

    <script type="text/javascript">
        Galleria.loadTheme('Content/themes/galleria/classic/galleria.classic.min.js');

        $('#galleria').galleria({
            picasa: "user:Hila.Skif",
            transition: 'fade',
            autoplay: 5000
        });
    </script>
</asp:Content>
