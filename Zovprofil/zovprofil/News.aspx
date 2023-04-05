<%@ Page Title="Новости и акции – фабрика ЗОВ-Профиль" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Zovprofil.zovprofil.News" %>
<asp:Content ID="NewsContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <link href="../Styles/news.css" rel="stylesheet" />

    <%--<div class="news-h">
        <div class="textcont">
            <span class="t1">Новости компании</span>
            <span class="t2">Новинки, акции, выставки</span>
        </div>
        <div class="im1"></div>
        <div class="im2"></div>
    </div>--%>

    <div class="news-cont">
        <div id="NewsContainer" runat="server"></div>
    </div>

    <script>
        $(document).ready(function () {
            ShowContent();
        })
    </script>
</asp:Content>
