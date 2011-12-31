<%@ Page Title="תכשיטי הילה" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="JewleryShop.Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />
    <link href="Content/themes/custom/jquery-ui-1.8.16.custom.css" rel="stylesheet" type="text/css" />
    <link href="Content/themes/galleria/classic/galleria.classic.css" rel="stylesheet"
        type="text/css" />
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui-1.8.16.min.js" type="text/javascript"></script>
    <script src="Scripts/galleria-1.2.6.min.js" type="text/javascript"></script>
    <script src="Scripts/galleria-data.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#menu").buttonset();
        });
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class="menucontainer">
        <div id="menu">
            <input type="radio" id="menuoption-necklaces" name="menu" checked="checked" />
            <label for="menuoption-necklaces">
                שרשראות</label>
            <input type="radio" id="menuoption-earrings" name="menu" />
            <label for="menuoption-earrings">
                עגילים</label>
            <input type="radio" id="menuoption-bracletes" name="menu" />
            <label for="menuoption-bracletes">
                צמידים</label>
            <input type="radio" id="menuoption-rings" name="menu" />
            <label for="menuoption-rings">
                טבעות</label>
            <input type="radio" id="menuoption-contact" name="menu" />
            <label for="menuoption-contact">
                צור קשר</label>
            <input type="radio" id="menuoption-about" name="menu" />
            <label for="menuoption-about">
                אודות</label>
        </div>
    </div>
    <div class="bodycontainer">
        <div class="gallerycontainer" dir="ltr">
        </div>
        <div class="contactcontainer">
            <h1>
                צור קשר......</h1>
        </div>
        <div class="aboutcontainer">
            <h1>
                אודות......</h1>
        </div>
    </div>
    <script type="text/javascript">
        Galleria.loadTheme('Content/themes/galleria/classic/galleria.classic.min.js');

        $('.gallerycontainer').galleria({
            data_source: necklaces,
            transition: 'fade',
            autoplay: 5000
        });

        $('#menuoption-necklaces').click(function () {
            showSelectedContainer('.gallerycontainer');
            setGalleriaDataSource(necklaces);
        });

        $('#menuoption-earrings').click(function () {
            showSelectedContainer('.gallerycontainer');
            setGalleriaDataSource(earrings);
        });

        $('#menuoption-bracletes').click(function () {
            showSelectedContainer('.gallerycontainer');
            setGalleriaDataSource(bracletes);
        });

        $('#menuoption-rings').click(function () {
            showSelectedContainer('.gallerycontainer');
            setGalleriaDataSource(rings);
        });

        $('#menuoption-contact').click(function () {
            showSelectedContainer('.contactcontainer');
        });

        $('#menuoption-about').click(function () {
            showSelectedContainer('.aboutcontainer');
        });

        function showSelectedContainer(selectorToShow) {
            $('.bodycontainer').children().hide();
            $('.bodycontainer').find(selectorToShow).show();
        }

        function setGalleriaDataSource(source) {
            $('.gallerycontainer').galleria({
                data_source: source
            });
        }
    </script>
</asp:Content>
