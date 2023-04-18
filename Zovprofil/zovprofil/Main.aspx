<%@ Page Title="Фабрика мебельных комплектующих ЗОВ-Профиль" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="Main.aspx.cs" Inherits="Zovprofil.zovprofil.Main" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="../Styles/main.css" rel="stylesheet" />
    <input type="hidden" runat="server" id="hSlidesCount" />
    <div class="im-sl-back noselect">
        <div>
            <div id="ImagesSliderCont" runat="server">
                <div>
                    <div class="nav" id="SliderNavCont" runat="server"></div>
                </div>
            </div>
            
        </div>
    </div>
    <div class="hd">
        <p>ПРОИЗВОДСТВО ПРОФИЛЯ ПОГОНАЖНОГО<br />И ФАСАДОВ В РЕСПУБЛИКЕ БЕЛАРУСЬ</p>
    </div>
    <div class="prod-cat-menu-cont noselect">
        <%--<div class="item">
            <a href="/Production?type=2">
                <div class="img">
                    <img src="/Images/Main/korp.png" ondragstart="return false;" />
                </div>
            </a>
            <span>Корпусная мебель</span>
        </div>--%>
        <div class="item" style="">
            <a href="/Production?type=0">
                <div class="img">
                    <img src="/Images/Main/front.png" ondragstart="return false;" />
                </div>
            </a>
            <span>Фасады</span>
        </div>
        <div class="item" style="">
            <a href="/Production?type=1">
                <div class="img">
                    <img src="/Images/Main/prof.png" ondragstart="return false;" />
                </div>
            </a>
            <span>Декор и погонаж</span>
        </div>
    </div>
    <div class="prod-menu-cont noselect" style="background-color:#eeeeee;">
        <div class="newprod-label">НОВИНКИ</div>
        <div class="pr-menu">
            <div id="NewProductsContainer" runat="server" class="pr-menu-cont" style="padding:0px 0px">

            </div>
        </div>
        
    </div>
        <div style="text-align:center; padding-bottom:15px;">
            <div class="newprod-label">НАШИ ПРЕИМУЩЕСТВА</div>
            <div style="display:inline-block; text-align:left; max-width:930px; margin-top:15px; margin-bottom:30px;">

                <div style="display:inline-block; text-align:center;  width:307px;">
                    <div style="padding-right:100px;">
                        <span style="display:block; font-size:18px;">СОТРУДНИЧЕСТВО</span>
                        <img src="/Images/handshake2.png" style="width:90px; display:inline-block; margin-top:15px;" />
                        <span style="display:block; font-size:15px; margin-top:6px;">С фабрикой или дилером</span>
                    </div>
                    
                </div>
                <div style="display:inline-block; text-align:center; width:307px;">
                    <span style="display:block; font-size:18px;">СРОК ПРОИЗВОДСТВА</span>
                    <img src="/Images/calendar-and-clock2.png" style="width:84px; display:inline-block; margin-top:20px;" />
                    <span style="display:block; font-size:15px; margin-top:7px;">от 2-х недель</span>
                </div>
                <div style="display:inline-block; text-align:center; width:307px;">
                    <div style="padding-left:100px;">
                        <span style="display:block; font-size:18px;">СКИДКИ</span>
                        <img src="/Images/discount2.png" style="width:84px; display:inline-block; margin-top:20px;" />
                        <span style="display:block; font-size:15px; margin-top:6px;">50% на образцы</span>
                    </div>
                </div>

            </div>
            <div>
                <div style="display:inline-block; text-align:left; max-width:930px; margin-top:15px; margin-bottom:30px;">

                    <div style="display:inline-block; text-align:center; width:307px;">
                        <div style="padding-right:100px;">
                            <span style="display:block; font-size:18px;">ЭКСКЛЮЗИВ</span>
                            <img src="/Images/creative-process2.png" style="width:90px; display:inline-block; margin-top:15px;" />
                            <span style="display:block; font-size:15px; margin-top:6px;">По чертежу заказчика</span>
                        </div>
                    </div>
                    <div style="display:inline-block; text-align:center; width:307px;">
                        <span style="display:block; font-size:18px;">РЕКЛАМА</span>
                        <img src="/Images/signboard2.png" style="width:90px; display:inline-block; margin-top:15px;" />
                        <span style="display:block;; font-size:15px; margin-top:6px;">Каталоги, образцы и др.</span>
                    </div>
                    <div style="display:inline-block; text-align:center; width:307px;">
                        <div style="padding-left:100px;">
                            <span style="display:block; font-size:18px;">ПО ДЛЯ B2B</span>
                            <img src="/Images/laptop2.png" style="width:90px; display:inline-block; margin-top:15px;" />
                            <span style="display:block; font-size:15px; margin-top:6px;">Контроль готовности заказа</span>
                        </div>
                    </div>

                </div>
            </div>
       </div>
    <%--<div style="text-align:center;">
        <div class="newprod-label">НОВОСТИ</div>

        <div id="NewsContainer" runat="server" style="display:inline-block"></div>
    </div>--%>
    <div style="text-align:center; background-color:#eeeeee; padding-bottom:30px">
        <div class="newprod-label">ВИДЕО С ПРОИЗВОДСТВА</div>
        <a target="_blank" href="https://youtu.be/PofQaXypH4E" style="">
            <img src="/Images/video.jpg" style="width:945px; margin-top:20px" />
        </a>
        <div style="margin-left:844px;">
            <a href="/About" class="about-dn-but"">
                о компании
            </a>
        </div>
    </div>
    <div style="overflow:hidden; text-align:center; padding-bottom:40px;">
        <div>
            <a href="/Contacts"><div class="newprod-label" style="margin-bottom:20px; display:inline-block">КОНТАКТЫ</div></a>
        </div>
        <div style="display:inline-block; overflow:hidden; width:295px; padding: 0 5px; height:380px; background-color:#eeeeee; margin-left:10px; margin-right:10px;">
            <img src="/Images/img_avatar.png" style="border-radius:50%; width:100px; margin-top:30px;" />
            <span style="display:block; margin-top:15px; font-size:21px; font-family:OpenSans-Semibold">Кондрашов Михаил</span>
            <span style="display:block; margin-top:10px; font-size:15px; font-family:OpenSans-Regular; color:#8e8e8e">начальник службы сбыта</span>
            <div style="margin-top:15px; ">
                <span style="display:block; font-size:16px; font-family:OpenSans-Semibold; color:#41a271">RU, BY</span>
            </div>
            <div style="margin-top:25px; ">
                <span style="display:inline-block; font-size:16px; font-family:OpenSans-Semibold; color:#5a5a5a">+375 (29) 111-94-94</span>
            </div>
            <div style="margin-top:7px; ">
                <a href="mailto:sales@zovprofil.by" style="color: #41a271; text-decoration:underline">sales@zovprofil.by</a>
            </div>
        </div>
        <div style="display:inline-block;overflow:hidden;  width:295px; padding: 0 5px; height:380px; background-color:#eeeeee; margin-left:10px; margin-right:10px;">
            <img src="/Images/img_avatar.png" style="border-radius:50%; width:100px; margin-top:30px;" />
            <span style="display:block; margin-top:15px; font-size:21px; font-family:OpenSans-Semibold">Филипчик Алексей</span>
            <span style="display:block; margin-top:10px; font-size:15px; font-family:OpenSans-Regular; color:#8e8e8e">ведущий специалист по маркетингу</span>
            <div style="margin-top:15px; ">
                <span style="display:block; font-size:16px; font-family:OpenSans-Semibold; color:#41a271">RU, BY, EN</span>
            </div>
            <div style="margin-top:25px; ">
                <span style="display:inline-block; font-size:16px; font-family:OpenSans-Semibold; color:#5a5a5a">+375 (29) 155-58-90</span>
            </div>
            <div style="margin-top:7px; ">
                <a href="mailto:marketing@omcprofil.by" style="color: #41a271; text-decoration:underline">marketing@omcprofil.by</a>
            </div>
        </div>
        <div style="display:inline-block;overflow:hidden;  width:295px; height:380px; background-color:#eeeeee; margin-left:10px; margin-right:10px;">
            <img src="/Images/img_avatar2.png" style="border-radius:50%; width:100px; margin-top:30px;" />
            <span style="display:block; margin-top:15px; font-size:21px; font-family:OpenSans-Semibold">Гайдель Марина</span>
            <span style="display:block; margin-top:10px; font-size:15px; font-family:OpenSans-Regular; color:#8e8e8e">начальник службы ВЭС</span>

            <div style="margin-top:15px; ">
                <span style="display:block; font-size:16px; font-family:OpenSans-Semibold; color:#41a271">RU, BY, PL, EN, DE</span>
            </div>
            <div style="margin-top:25px; ">
                <span style="display:inline-block; font-size:16px; font-family:OpenSans-Semibold; color:#5a5a5a">+375 (29) 111-83-83</span>
            </div>
            <div style="margin-top:7px; ">
                <a href="mailto:supply@zovprofil.by" style="color: #41a271; text-decoration:underline">supply@zovprofil.by</a>
            </div>

            <div style="margin-left:62px;">
                <a href="/Contacts" class="contacts-dn-but"">
                    все контакты
                </a>
            </div>
        </div>











        <div style="text-align:center">
            <div class="write-dn-but" onclick="ShowMessage()">
                ОСТАВИТЬ ЗАЯВКУ НА СОТРУДНИЧЕСТВО
            </div>
        </div>
    </div>




    <div class="modal fade" id="ImageDialogModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="">
        <div class="modal-dialog" runat="server" style="width:80%; height:80%; margin:80px auto;">
            <div class="modal-content" runat="server" style="width:100%; height:100%;">
                 <div style="background-color:rgb(250,250,250); position:absolute; float:left; left:0px; right:0px; top:0px; bottom:0px; border-style:solid; border-width:1px; border-color:rgb(160,160,160);
                        -webkit-box-shadow: 0px 0px 12px 3px rgba(0, 0, 0, .2);
                        box-shadow: 0px 0px 12px 3px rgba(0, 0, 0, .2); padding:10px; margin:0;">
                        <img id="ItemImage" src="/Images/Loader.GIF" style="max-width:100%; max-height:100%; position: absolute; margin: auto; top: 0; left: 0; right: 0; bottom: 0;" />             
                </div>              
            </div>
        </div>
    </div>


<script>
    var ci = 1;
    var ih;
    var SliderUrls;

    $(document).ready(function () {
        ShowContent();
        if (document.getElementById('hSlidesCount').value != "") {

            if (parseInt(document.getElementById('hSlidesCount').value) > 1)
                ih = setInterval(Loop, 4000);

            //document.getElementById("ImageName").innerHTML = SliderNames[0]
        }


        //var p = $('#Text_0');

        //var divh = $('#Main_0').height();
        //while ($(p).outerHeight() > divh) {
        //    $(p).text(function (index, text) {
        //        return text.replace(/\W*\s(\S)*$/, '...');
        //    });
        //}

        //var p2 = $('#Text_1');

        //var divh2 = $('#Main_1').height();
        //while ($(p2).outerHeight() > divh2) {
        //    $(p2).text(function (index, text) {
        //        return text.replace(/\W*\s(\S)*$/, '...');
        //    });
        //}
    })


    function Loop()
    {
        var i = -1;

        if (ci == parseInt(document.getElementById("hSlidesCount").value))
            i = 1;
        else
            i = ci + 1;

        ShowImage(i);
    }

    function ShowImage(i) {
        if (i == 1)
        {
            document.getElementById('im' + i.toString()).style.opacity = 1;

            $(document.getElementById('im' + ci.toString())).fadeTo("slow", 0, function () {
                document.getElementById('sl' + i.toString()).children[0].className = "sl-p";
                document.getElementById('sl' + ci.toString()).children[0].className = "";
                ci = i;
            });
        }
        else
            $(document.getElementById('im' + i.toString())).fadeTo("slow", 1, function () {
                document.getElementById('im' + ci.toString()).style.opacity = 0;
                document.getElementById('sl' + i.toString()).children[0].className = "sl-p";
                document.getElementById('sl' + ci.toString()).children[0].className = "";
                ci = i;
            });

        //document.getElementById("ImageName").innerHTML = SliderNames[i - 1]
    }

    function OpenSliderImage() {
        $('#ImageDialogModal').modal('show');

        document.getElementById('ItemImage').src = SliderUrls[ci - 1];
        //document.getElementById('ItemImage').src = '/Images/ClientsCatalogImages/' + SliderUrls[ci - 1];
    }

    function SelectImage(i)
    {
        clearInterval(ih);

        if (i != ci) {
            if (i < ci) {
                document.getElementById('im' + i.toString()).style.opacity = 1;

                $(document.getElementById('im' + ci.toString())).fadeTo("slow", 0, function () {
                    document.getElementById('sl' + i.toString()).children[0].className = "sl-p";
                    document.getElementById('sl' + ci.toString()).children[0].className = "";
                    ci = i;
                });
            }
            else
                $(document.getElementById('im' + i.toString())).fadeTo("slow", 1, function () {
                    document.getElementById('im' + ci.toString()).style.opacity = 0;
                    document.getElementById('sl' + i.toString()).children[0].className = "sl-p";
                    document.getElementById('sl' + ci.toString()).children[0].className = "";
                    ci = i;
                });
        }
        ih = setInterval(Loop, 4000);
    }

    //function SetSliderNames(list) {
    //    SliderNames = Array();

    //    var s = "";

    //    for (var i = 0; i < list.length; i++) {
    //        if (list[i] == ';') {
    //            SliderNames.push(s);
    //            s = "";
    //            continue;
    //        }

    //        s += list[i];
    //    }
    //}

    function SetSliderUrls(list) {
        SliderUrls = Array();

        var s = "";

        for (var i = 0; i < list.length; i++) {
            if (list[i] == ';') {
                SliderUrls.push(s);
                s = "";
                continue;
            }

            s += list[i];
        }
    }

</script>
</asp:Content>
