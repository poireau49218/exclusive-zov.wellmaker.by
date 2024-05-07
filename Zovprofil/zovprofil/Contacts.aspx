<%@ Page Title="Контакты сотрудников и отделов - фабрика ЗОВ-Профиль" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="Zovprofil.Contacts" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <link href="../Styles/contacts.css" rel="stylesheet" />

    <%--<div class="contacts-h">
        <div class="textcont">
            <span class="t1">Контакты</span>
            <span class="t2">Свяжитесь с нами для получения подробной информации</span>
        </div>
        <div class="im1"></div>
    </div>--%>


    <%--<div class="contacts-cont">
            <div>
                <div class="contacts-dep">
                    <div style="height:60px; padding:0 15px; background-color:#424242;">
                        <div style="font-size:22px; color:white; float:left; padding-top:13px;">Приемная</div>
                        <div style="float:right; padding-top:8px; text-align:left">
                            <span class="ind-h">e-mail:</span>
                            <a href="mailto:office@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">office@zovprofil.by</a>
                            <div>
                                <span class="ind-h">тел./факс:</span>
                                <span class="phone-h">+375 (152) 60-81-04</span>
                            </div>
                        </div>
                    </div>
                        
                    <div class="contacts-item" style="height:40px; min-height:40px; width:97%;">
                    </div>

                    <div style="">

                    </div>


                    <div style="height:60px; padding:0 15px; background-color:#424242; margin-top:20px;">
                        <div style="font-size:22px; color:white; float:left; padding-top:13px;">Маркетинг</div>
                        <div style="float:right; padding-top:8px; text-align:left">
                            <span class="ind-h">e-mail:</span>
                            <a href="mailto:marketing@omcprofil.by" style="font-size:15px; color:white; text-decoration:underline">marketing@omcprofil.by</a>
                            <div>
                                <span class="ind-h">тел./факс:</span>
                                <span class="phone-h">+375 (152) 60-81-63</span>
                            </div>
                        </div>
                    </div>

                    <div style="">

                        <div class="contacts-item">
                            <img src="/Images/img_avatar2.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span class="name">Баранова Ирина</span>
                            <span class="n-de">руководитель отдела маркетинга</span>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span class="phone">+375 (44) 750-28-51</span>
                            </div>
                        </div>

                        <div class="contacts-item">
                            <img src="/Images/img_avatar.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span class="name">Филипчик Алексей</span>
                            <span class="n-de">ведущий специалист по маркетингу</span>
                            <div style="margin-top:15px; ">
                                <span style="display:block; font-size:16px; font-family:OpenSans-Semibold; color:#41a271">EN</span>
                            </div>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span class="phone">+375 (29) 155-58-90</span>
                            </div>
                        </div>

                    </div>


                     <div style="height:60px; padding:0 15px; background-color:#424242; margin-top:20px;">
                        <div style="font-size:22px; color:white; float:left; padding-top:13px;">Отдел продаж</div>
                        <div style="float:right; padding-top:8px; text-align:left">
                            <span class="ind-h">e-mail:</span>
                            <a href="mailto:marketing@omcprofil.by" style="font-size:15px; color:white; text-decoration:underline">marketing@omcprofil.by</a>
                            <div>
                                <span class="ind-h">тел./факс:</span>
                                <span class="phone-h">+375 (152) 60-81-63</span>
                            </div>
                        </div>
                    </div>


                    <div style="">

                        <div class="contacts-item" style="height:360px;">
                            <img src="/Images/img_avatar.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span class="name">Кондрашов Михаил</span>
                            <span class="n-de">начальник службы сбыта</span>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span class="phone">+375 (29) 111-94-94</span>
                            </div>
                        </div>

                        <div class="contacts-item" style="height:360px;">
                            <img src="/Images/img_avatar.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span class="name">Миклашевич Павел</span>
                            <span class="n-de">специалист по продаже</span>
                            <div style="margin-top:15px; ">
                                <span style="display:block; font-size:16px; font-family:OpenSans-Semibold; color:#41a271">PL, EN</span>
                            </div>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span class="phone">+375 (29) 103-33-23</span>
                            </div>
                            <span class="n-de-2" style="margin-top:20px;">Работа с клиентами РБ, РФ и Польши.<br />
Основные направления: мебельный и строительный погонаж</span>
                        </div>

                         <div class="contacts-item" style="height:360px;">
                            <img src="/Images/img_avatar2.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span class="name">Трубина Дарья</span>
                            <span class="n-de">специалист по продаже</span>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span class="phone">+375 (44) 742-08-33</span>
                            </div>
                        </div>

                    </div>
                    
                    <div style="height:60px; padding:0 15px; background-color:#424242; margin-top:20px;">
                        <div style="font-size:22px; color:white; float:left; padding-top:13px;">Логистика</div>
                        <div style="float:right; padding-top:17px; text-align:left">
                            <span class="ind-h">e-mail:</span>
                            <a href="mailto:e.skamaroshka@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">e.skamaroshka@zovprofil.by</a>
                        </div>
                    </div>

                    <div style="">

                        <div class="contacts-item">
                            <img src="/Images/img_avatar2.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span class="name">Скоморошко Елена</span>
                            <span class="n-de">специалист по продаже</span>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span class="phone">+375 (29) 111-68-68</span>
                            </div>
                            <span class="n-de-2" style="margin-top:20px;">Планирование отгрузок.
Выставление счетов и выписка
документов.</span>
                        </div>

                    </div>
                   

                    <div style="height:60px; padding:0 15px; background-color:#424242; margin-top:20px;">
                        <div style="font-size:22px; color:white; float:left; padding-top:13px;">Снабжение</div>
                        <div style="float:right; padding-top:17px; text-align:left">
                            <span class="ind-h">e-mail:</span>
                            <a href="mailto:supply@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">supply@zovprofil.by</a>
                        </div>
                    </div>

                    <div style="">

                        <div class="contacts-item">
                            <img src="/Images/img_avatar2.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span class="name">Гайдель Марина</span>
                            <span class="n-de">начальник отдела ВЭС</span>
                            <div style="margin-top:15px; ">
                                <span style="display:block; font-size:16px; font-family:OpenSans-Semibold; color:#41a271">PL, EN, DE</span>
                            </div>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span class="phone">+375 (29) 111-83-83</span>
                            </div>
                        </div>    

                    </div>


                    <div style="height:60px; padding:0 15px; background-color:#424242; margin-top:20px;">
                        <div style="font-size:22px; color:white; float:left; padding-top:13px;">Техотдел</div>
                        <div style="float:right; padding-top:17px; text-align:left">
                            <span class="ind-h">e-mail:</span>
                            <a href="mailto:tech@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">tech@zovprofil.by</a>
                        </div>
                    </div>

                    <div style="">

                        <div class="contacts-item">
                            <img src="/Images/img_avatar.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span style="display:block; margin-top:15px; font-size:17px; font-family:OpenSans-Semibold">Янкойть Юрий</span>
                            <span class="n-de">главный технолог</span>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span style="display:inline-block; font-size:14px; font-family:OpenSans-Semibold; color:#5a5a5a">+375 (29) 180-18-45</span>
                            </div>
                        </div>

                    </div>

                    <div style="height:60px; padding:0 15px; background-color:#424242; margin-top:20px;">
                        <div style="font-size:22px; color:white; float:left; padding-top:13px;">Отдел контроля качества</div>
                        <div style="float:right; padding-top:17px; text-align:left">
                        </div>
                    </div>

                    <div style="">

                        <div class="contacts-item">
                            <img src="/Images/img_avatar2.png" style="border-radius:50%; width:100px; margin-top:30px;" />
                            <span style="display:block; margin-top:15px; font-size:17px; font-family:OpenSans-Semibold">Шемет Татьяна</span>
                            <span class="n-de">Специалист</span>
                            <div style="margin-top:5px; ">
                                <span class="ind">моб:</span>
                                <span style="display:inline-block; font-size:14px; font-family:OpenSans-Semibold; color:#5a5a5a">+375 (29) 180-18-69</span>
                            </div>
                        </div>

                    </div>
            </div>
        </div>
    </div>--%>
    <div class="container">
    <div class="block">
        <div class="header-cont">
            <div class="header-left">
                <span>Приемная</span>
            </div>
            <div class="header-right">
                <span>e-mail: <a href="mailto:office@zovprofil.by" style="color:white; text-decoration:underline">office@zovprofil.by</a></span>
                <span>тел/факс: +375 (152) 60-81-04</span>
            </div>
        </div>
        <div class="contacts">
            <%--<div class="contact-item">
                <img src="#" alt="Alternate Text" />
                <span class="contact-name"></span>
                <span class="contact-post"></span>
                <span class="contact-phone"></span>
            </div>--%>
        </div>
    </div>
    <div class="block">
        <div class="header-cont">
            <div class="header-left">
                <span>Маркетинг</span>
            </div>
            <div class="header-right">
                <span>e-mail: <a href="mailto:marketing@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">marketing@zovprofil.by</a></span>
                <span>тел/факс: +375 (152) 60-81-63</span>
                <span>тел.: +375 (29) 155-58-94</span>
            </div>
        </div>
        <div class="contacts">
            <%--<div class="contact-item">
                <img src="/Images/img_avatar2.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Елена Лозовицкая</span>
                <span class="contact-post">специалист отдела маркетинга</span>
                <span class="contact-phone">моб. +375 (29) 155-58-94</span>
            </div>--%>
        </div>
    </div>
    <div class="block">
        <div class="header-cont">
            <div class="header-left">
                <span>Отдел продаж</span>
            </div>
            <div class="header-right">
                <span>e-mail: <a href="mailto:marketing@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">marketing@zovprofil.by</a></span>
                <span>тел/факс: +375 (152) 60-81-63</span>
            </div>
        </div>
        <div class="contacts">
            <div class="contact-item">
                <img src="/Images/img_avatar.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Михаил Кондрашов</span>
                <span class="contact-post">начальник службы сбыта</span>
                <span class="contact-phone">моб. +375 (29) 111-94-94</span>
            </div>

            <div class="contact-item">
                <img src="/Images/img_avatar.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Павел Миклашевич</span>
                <span class="contact-post">специалист по продаже</span>
                <span class="contact-lang">PL, EN</span>
                <span class="contact-phone">моб. +375 (29) 103-33-23</span>
                <span class="contact-info">Работа с клиентами РБ, РФ и Польши.<br />Основные направления: мебельный и строительный погонаж</span>
            </div>

            <%--<div class="contact-item">
                <img src="/Images/img_avatar2.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Дарья Трубина</span>
                <span class="contact-post">специалист по продаже</span>
                <span class="contact-phone">моб. +375 (44) 742-08-33</span>
            </div>--%>
        </div>
    </div>
    <div class="block">
        <div class="header-cont">
            <div class="header-left">
                <span>Логистика</span>
            </div>
            <div class="header-right">
                <span>e-mail: <a href="mailto:e.skamaroshka@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">e.skamaroshka@zovprofil.by</a></span>
            </div>
        </div>
        <div class="contacts">
            <%--<div class="contact-item">
                <img src="/Images/img_avatar.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Юрий Карась</span>
                <span class="contact-post">Логист</span>
                <span class="contact-phone">моб. +375 (33) 624-03-40</span>
                <span class="contact-info">Планирование отгрузок</span>
            </div>--%>
            <div class="contact-item">
                <img src="/Images/img_avatar2.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Елена Эйсмонт</span>
                <span class="contact-post">комплектовщик</span>
                <span class="contact-phone">моб. +375 (29) 180-18-52</span>
                <span class="contact-info">Прием товара</span>
            </div>
            <div class="contact-item">
                <img src="/Images/img_avatar2.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Екатерина Марцулевич</span>
                <span class="contact-post">ведущий экономист</span>
                <span class="contact-phone">моб. +375 (29) 338-64-00</span>
                <span class="contact-info">Выставление счетов и выписка документов.</span>
            </div>
        </div>
    </div>
    <div class="block">
        <div class="header-cont">
            <div class="header-left">
                <span>Снабжение</span>
            </div>
            <div class="header-right">
                <span>e-mail: <a href="mailto:supply@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">supply@zovprofil.by</a></span>
            </div>
        </div>
        <div class="contacts">
            <div class="contact-item">
                <img src="/Images/img_avatar2.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Марина Гайдель</span>
                <span class="contact-post">начальник отдела ВЭС</span>
                <span class="contact-lang">PL, EN, DE</span>
                <span class="contact-phone">моб. +375 (29) 111-83-83</span>
            </div>
        </div>
    </div>
    <div class="block">
        <div class="header-cont">
            <div class="header-left">
                <span>Техотдел</span>
            </div>
            <div class="header-right">
                <span>e-mail: <a href="mailto:tech@zovprofil.by" style="font-size:15px; color:white; text-decoration:underline">tech@zovprofil.by</a></span>
            </div>
        </div>
        <div class="contacts">
            <%--<div class="contact-item">
                <img src="/Images/img_avatar.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Юрий Янкойть</span>
                <span class="contact-post">главный технолог</span>
                <span class="contact-phone">моб. +375 (29) 180-18-45</span>
            </div>--%>
        </div>
    </div>
    <div class="block">
        <div class="header-cont">
            <div class="header-left">
                <span>Отдел контроля качества</span>
            </div>
            <div class="header-right">
            </div>
        </div>
        <div class="contacts">
            <div class="contact-item">
                <img src="/Images/img_avatar2.png" alt="Alternate Text" class="contact-avatar"/>
                <span class="contact-name">Татьяна Шемет</span>
                <span class="contact-post">специалист</span>
                <span class="contact-phone">моб. +375 (29) 180-18-69</span>
            </div>
        </div>
    </div>
</div>


    <%--<div class="map-c">
        <div>
            <span>Схема проезда</span>
            <img src="/Images/Contacts/map.png"/>
        </div>
    </div>--%>

    <script>
        $(document).ready(function () {
            ShowContent();
        })
    </script>
</asp:Content>
