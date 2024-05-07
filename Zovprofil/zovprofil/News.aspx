<%@ Page Title="Новости и акции – фабрика ЗОВ-Профиль" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Zovprofil.zovprofil.News" %>
<asp:Content ID="NewsContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <link href="../Styles/news.css" rel="stylesheet" />

    <%--<div class="news-cont">
        <div id="NewsContainer" runat="server"></div>
    </div>--%>
    <div id="NewsContainer" runat="server" class="container"></div>

    <script>
        $(document).ready(function () {
            ShowContent();
        })
    </script>
</asp:Content>
