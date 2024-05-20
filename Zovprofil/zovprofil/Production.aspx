<%@ Page Title="Каталог продукции – фабрика ЗОВ-Профиль" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" ClientIDMode="Static" EnableViewState="false" CodeBehind="Production.aspx.cs" Inherits="Zovprofil.zovprofil.Production" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <link href="../Styles/production.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.1.0.min.js"></script>
    
    <input type="hidden" id="URL" runat="server" />
    <input type="hidden" runat="server" id="hSlidesCount" />
    <input type="hidden" runat="server" id="hDesc" />

    <div style="text-align:center" class="main-container">





        <nav>
		    <div id="Sidebar" class="sidebar">
			    <div class="sidebar-content">
			        <article class="category-container">
                        
			    	        <div class="category" onclick="toggleCategory('FrontsContainer', 0, event)">
                                <a id="FrontsLink" href="/Production?type=0" class="category-link">
			    		            <img class="category-img" src="/Images/fronts.png" alt="">
				                    <span class="category-name">ФАСАДЫ</span>
				                    <span class="arrow"></span>
                                </a>
				            </div>
                        
				        <div id="FrontsContainer"  runat="server" class="category-content">
				            <!-- Список категорий фасадов -->
				        </div>
			        </article>

			        <article class="category-container">
			            <div class="category" onclick="toggleCategory('DecorContainer', 1, event)">
                            <a id="DecorLink" href="/Production?type=1" class="category-link">
			    		        <img class="category-img" src="/Images/profile.png" alt="">
				                <span class="category-name">ДЕКОРЫ</span>
				                <span class="arrow"></span>
                            </a>
				        </div>
				        <div id="DecorContainer"  runat="server" class="category-content">
				            <!-- Список категорий декоров -->
				        </div>
			        </article>

                        <article class="category-container">
			            <div class="category" onclick="toggleCategory('PromotionContainer', 4, event)">
                            <a id="PromotionLink" href="/Production?type=4" class="category-link">
			    		        <img class="category-img" src="/Images/promotion.png" alt="">
				                <span class="category-name">РЕКЛАМНАЯ ПРОДУКЦИЯ</span>
				                <span class="arrow"></span>
                            </a>
				        </div>
				        <div id="PromotionContainer" runat="server" class="category-content">
				            <!-- Список категорий рекламной продукции -->
				        </div>
			        </article>

                    <div id="ReadyContainer" runat="server" class=""></div>
			    </div>
		    </div>



		    <script>
                function toggleCategory(containerId, link, event) {
                    event.preventDefault();
                    var container = document.getElementById(containerId);

                    var arrow = container.previousElementSibling.querySelector('.arrow');

                    var siblings = container.parentElement.parentElement.getElementsByClassName('category-content');

                    var currentPageType = parseInt(getParameterByName('type'));
                    var currentCategory = getParameterByName('cat');


                    if (event.target.classList.contains('category-name') || (event.target.classList.contains('arrow') && currentPageType !== link)) {
                        window.location.href = "/Production?type=" + link;
                    }

                    container.classList.toggle('show');
                    arrow.classList.toggle('up');


                    for (var i = 0; i < siblings.length; i++) {
                        var sibling = siblings[i];
                        var siblingArrow = sibling.previousElementSibling.querySelector('.arrow');
                        if (sibling !== container) {
                            sibling.classList.remove('show');
                            siblingArrow.classList.remove('up');
                        }
                    }
                    localStorage.setItem('containerId', containerId);
                }


                // Функция для получения значения параметра из URL
                function getParameterByName(name) {
                    name = name.replace(/[\[\]]/g, '\\$&');
                    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
                        results = regex.exec(window.location.href);
                    if (!results) return null;
                    if (!results[2]) return '';
                    return decodeURIComponent(results[2].replace(/\+/g, ' '));
                }

                document.addEventListener('DOMContentLoaded', function () {
                    // Код для выполнения после полной загрузки DOM
                    var containerId = localStorage.getItem("containerId");

                    var container = document.getElementById(containerId);
                    var arrow = container.previousElementSibling.querySelector('.arrow');



                    var urlParams = new URLSearchParams(window.location.search);
                    var hasCatParam = urlParams.has('cat');
                    if (!hasCatParam) {
                        container.classList.toggle('show');
                        arrow.classList.toggle('up');
                    }

                });
            </script>	
		</nav>



        <div class="production-main">
                <div id="Swiper1" runat="server" class="swiper swiper-main swiper-cat" rewind="true">
                    <div id="swiperWrapper1" runat="server" class="swiper-wrapper">
                    <%-- Слайды --%>
                        </div>
                    <div class="swiper-scrollbar"></div>
                    </div>
                <span id="DescriptionText1" class="cat-description" runat="server"></span>



                <div id="ProductItemCont" runat="server" class="product-container">
                    <div id="prod-im" class="product-images" rewind="true">
                        <div id="prod-im-w">
                            <div id="prod-im-s1">
                                <img id="product_image_main" runat="server" src="#" alt="" />
                            </div>
                            <div id="prod_im_s2" runat="server">
                                <img id="product_image_tech" runat="server" src="#" alt="" />
                            </div>
                        </div>
                        <div class="swiper-scrollbar"></div>
                    </div>

                    <script>
                        const productImageMain = document.getElementById('product_image_main');
                        const productImageTech = document.getElementById('product_image_tech');
                        const imageContainer = document.createElement('div');
                        imageContainer.id = 'image-container';
                        imageContainer.style.display = 'none';

                        document.body.appendChild(imageContainer);

                        function openImage(imageElement) {
                            const fullscreenImage = document.createElement('img');
                            fullscreenImage.src = imageElement.src.replace('Thumbs/', '');
                            console.log(imageElement.src);
                            fullscreenImage.id = 'fullscreen-image';

                            imageContainer.innerHTML = '';
                            imageContainer.appendChild(fullscreenImage);
                            imageContainer.style.display = 'block';
                        }

                        productImageMain.addEventListener('click', () => {
                            openImage(productImageMain);
                        });

                        if (productImageTech) {
                            productImageTech.addEventListener('click', () => {
                                openImage(productImageTech);
                            });
                        }

                        imageContainer.addEventListener('click', (event) => {
                            if (event.target === imageContainer) {
                                imageContainer.style.display = 'none';
                            }
                        });
                    </script>


                    <script>
                        function checkScreenSize() {
                            const block = document.getElementById('prod-im');
                            const block_w = document.getElementById('prod-im-w');
                            const block_s1 = document.getElementById('prod-im-s1');
                            const block_s2 = document.getElementById('prod_im_s2');

                            const img = document.getElementById('product_image_tech');
                            var src = img.getAttribute("src");

                            const screenSize = window.innerWidth;

                            if (screenSize <= 768 && src && !src.includes('#')) {

                                block.classList.add('swiper');
                                block.classList.add('swiper-main');
                                block_w.classList.add('swiper-wrapper');
                                block_s1.classList.add('swiper-slide');
                                block_s2.classList.add('swiper-slide');

                                block.classList.remove('product-images');


                                const swiper_main = new Swiper('.swiper-main', {
                                    direction: 'horizontal',
                                    /*loop: true,*/
                                    rewind: true,
                                    autoplay: {
                                        delay: 25000,
                                        disableOnInteraction: false,
                                    },
                                    scrollbar: {
                                        el: '.swiper-scrollbar',
                                        draggable: true,
                                    },
                                });
                            } else {
                                block.classList.remove('swiper');
                                block.classList.remove('swiper-main');
                                block_w.classList.remove('swiper-wrapper');
                                block_s1.classList.remove('swiper-slide');
                                block_s2.classList.remove('swiper-slide');

                                block_s1.removeAttribute("style");
                                block_s2.removeAttribute("style");

                                block.classList.add('product-images');
                            }
                        }

                        window.addEventListener('load', checkScreenSize);
                        window.addEventListener('resize', checkScreenSize);
                    </script>




                    <div class="product-info">
                        <div class="product-name">
                            <span id="ProductItemName" runat="server"></span>
                        </div>
                        

                        <div id="DescriptionDiv" runat="server">
                            <span class="head"><b>Описание:</b><br /></span>
                            <span id="Description" runat="server" class="text"></span>
                        </div>

			            <div id="SizesDiv" runat="server" style="padding-top:30px;">
                            <span class="head"><b>Размеры:</b><br /></span>
                            <span id="Sizes" runat="server" class="text"></span>
                        </div>

			            <div id="MaterialDiv" runat="server" style="padding-top:30px;">
                            <span class="head"><b>Материал:</b><br /></span>
                            <span class="text" id="Material" runat="server"></span>
                        </div>

                        <div id="ColorDiv" runat="server" style="padding-top:30px;">
                            <span class="head"><b>Цвета:</b><br /></span>
                            <div id="Colors" runat="server" class="product-colors"></div>
                        </div>





                        <script>
                            window.addEventListener('DOMContentLoaded', function () {
                                adjustColorBlockWidths();
                                window.addEventListener('resize', adjustColorBlockWidths);
                            });

                            function adjustColorBlockWidths() {
                                var colorBlocks = document.getElementsByClassName('product-color-block');

                                // Reset the width for accurate measurement
                                Array.from(colorBlocks).forEach(function (colorBlock) {
                                    colorBlock.style.width = '';
                                });

                                // Get the maximum width
                                var maxWidth = Array.from(colorBlocks).reduce(function (maxWidth, colorBlock) {
                                    var blockWidth = colorBlock.offsetWidth;
                                    if (blockWidth > maxWidth) {
                                        return blockWidth;
                                    }
                                    return maxWidth;
                                }, 0);

                                // Apply the maximum width to all color blocks
                                Array.from(colorBlocks).forEach(function (colorBlock) {
                                    colorBlock.style.width = maxWidth + 'px';
                                });
                            }
                        </script>




                    </div>                    
                </div>






                <div class="prod-item-inf">
                    <div id="NotBasicFrontsDiv" runat="server" class="related">
                        <span class="head" style="font-weight: bold">Фасады:</span>
                        <div id="NotBasicFronts" runat="server" class="pr-menu-cont"></div>
                    </div>

                    <div id="RelatedDecorsDiv" runat="server" class="related">
                        <span class="head" style="font-weight: bold">Декоры:</span>
                        <div id="RelatedDecors" runat="server" class="pr-menu-cont"></div>
                    </div>
                </div>




                <div class="production-top">
                    <img id="MainImageDiv" runat="server" style="display: none" class="main-image">
                    <span id="MainDescriptionDiv" runat="server" class="main-description">
                    </span>              

                    <div id="Swiper2" runat="server" class="swiper swiper-main swiper-cat" rewind="true">
                      <div id="swiperWrapper2" runat="server" class="swiper-wrapper">
                        <%-- Слайды --%>
                      </div>
                      <div class="swiper-scrollbar"></div>
                    </div>

                    <span id="DescriptionText2" class="cat-description" runat="server"></span>
                </div>
                <div id="ProductMenu" runat="server" class="pr-menu-cont" style="position: relative">
                    
                </div>

                <div class="promotion">
                    <h1 class="h1-header">РЕКЛАМНАЯ ПРОДУКЦИЯ</h1>
                    <div class="prom">
                        <p class="prom-text">
                            <img src="/Images/prod.png" class="prom-img"/>
                            Для удобного представления наших продуктов в вашем салоне предлагаем разнообразные рекламные образцы. 
                            В случае ограниченного пространства у нас есть компактные комплекты(стенды), специально созданные для эффективной демонстрации
                            в ограниченных условиях. Если вам нужно что-то особенное и индивидуальное, мы также предоставляем услуги по индивидуальному заказу стендов.
                            Наши образцы подходят для выездной работы дизайнера, обеспечивая вас всем необходимым для успешного продвижения наших продуктов в вашем салоне.
                        </p>
                        <button>
                            <a href="/Production?type=4">Подробнее</a>
                        </button>
                    </div>

                    <script>
                        var currentUrl = window.location.href;

                        if (currentUrl.includes('/Production?type=4')) {
                            document.querySelector('.promotion').style.display = 'none';
                        }
                    </script>
                </div>
            </div>
        <div>
    </div>


    <div class="modal fade" id="ImageDialogModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none">
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



    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <script src="../Scripts/swiper.js"></script>

<script>
    var ci = 1;
    var ih;
    var SliderNames;
    var SliderUrls;

    $(document).ready(function () {
        ShowContent();

        if (document.getElementById('hSlidesCount').value != "") {

            if (parseInt(document.getElementById('hSlidesCount').value) > 1)
                ih = setInterval(Loop, 4000);

            document.getElementById("ImageName").innerHTML = SliderNames[0]
            if (document.getElementById('hDesc').value != "")
                document.getElementById("DescriptionText").innerHTML = document.getElementById('hDesc').value
            else {
                document.getElementById("DescriptionText").style.display = "none";
            }
        }
        else
            document.getElementById("DescriptionText").style.display = "none";
    })

    function OpenImage(e)
    {
        $('#ImageDialogModal').modal('show');

        document.getElementById('ItemImage').src = document.getElementById('URL').value + e.id;
    }

    function OpenSliderImage() {
        $('#ImageDialogModal').modal('show');

        document.getElementById('ItemImage').src = SliderUrls[ci - 1];
    }

    function OpenFrontSliderImage() {
        $('#ImageDialogModal').modal('show');

        document.getElementById('ItemImage').src = SliderUrls[ci - 1];
    }

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

        document.getElementById("ImageName").innerHTML = SliderNames[i - 1]
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

    function SetSliderNames(list) {
        SliderNames = Array();

        var s = "";

        for (var i = 0; i < list.length; i++) {
            if (list[i] == ';') {
                SliderNames.push(s);
                s = "";
                continue;
            }

            s += list[i];
        }
    }

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
