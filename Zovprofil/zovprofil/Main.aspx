<%@ Page Title="Фабрика мебельных комплектующих ОМЦ-Профиль" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="Main.aspx.cs" Inherits="Zovprofil.zovprofil.Main" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link href="../Styles/main.css" rel="stylesheet" />


    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>


    <%--<input type="hidden" runat="server" id="hSlidesCount" />
        <div class="im-sl-back noselect">
            <div>
                <div id="ImagesSliderCont" runat="server">
                    <div>
                        <div class="nav" id="SliderNavCont" runat="server"></div>
                    </div>
                </div>
                <div class="image-nameee image-name">
                    <i class="fa-sharp fa-regular fa-circle-question fa-2x" data-html="true" data-toggle="tooltip" data-placement="top" title="<u><b>Нажмите один раз</b></u> на картинку, чтобы перейти к нужному товару. <u><b>Двойное нажатие</b></u> откроет картинку для просмотра"></i>
                </div>
            </div>
        </div>--%>







    <!-- Slider main container -->
	<div class="swiper swiper-main" rewind="true">
	  <!-- Additional required wrapper -->
	  <div class="swiper-wrapper">

	    <!-- Slides -->
	    <div class="swiper-slide">
	    	<div class="block">
		      	<div class="sub-block">
		          <div class="sub-content">
					<h1>Фасады</h1>
					<div class="text">
					Мебельные фасады для кухонь, гостиных, гардеробов и другой корпусной мебели
					</div>
                    <button class="slider-button"><a href="/Production?type=0" style="color: white">Подробнее</a></button>
		          </div>
		        </div>
		      <div class="image">
		        <img src="/Images/fronts.jpg" alt=""/>
		        <div class="sub-block">
		          <h1>Фасады</h1>
		          <div class="text">
		            Мебельные фасады для кухонь, гостиных,<br> гардеробов и другой корпусной мебели
		          </div>
		          <button class="slider-button"><a href="/Production?type=0" style="color: white">Подробнее</a></button>
		        </div>
		      </div>
		    </div>
	    </div>
	    <div class="swiper-slide">
	    	<div class="block">
		      	<div class="sub-block">
		          <div class="sub-content">
					<h1>Интерьерные декоры и погонаж</h1>
					<div class="text">
					Декоротивные элементы придают кухне особенный индивидуальный вид.
					</div>
                    <button class="slider-button"><a href="/Production?type=5" style="color: white">Подробнее</a></button>
		          </div>
		        </div>
		      <div class="image">
		        <img src="/Images/decors.jpg" alt=""/>
		        <div class="sub-block">
		          <h1>Интерьерные декоры и погонаж</h1>
		          <div class="text">
		            Декоротивные элементы придают кухне особенный индивидуальный вид.
		          </div>
		          <button  class="slider-button"><a href="/Production?type=5" style="color: white">Подробнее</a></button>
		        </div>
		      </div>
		    </div>
	    </div>
        <div class="swiper-slide">
	        <div class="block">
		        <div class="sub-block">
		            <div class="sub-content">
				    <h1>Рекламная продукция</h1>
				    <div class="text">
				    Широкий выбор рекламных материалов и образцов для оформления магазинов и выставочных салонов.
				    </div>
                    <button  class="slider-button"><a href="/Production?type=1" style="color: white">Подробнее</a></button>
		            </div>
		        </div>
		        <div class="image">
		        <img src="/Images/pogon.jpg" alt=""/>
		        <div class="sub-block">
		            <h1>Декор и погонаж</h1>
		            <div class="text">
		            Широкий выбор рекламных материалов и образцов для оформления магазинов и выставочных салонов.
		            </div>
		            <button  class="slider-button"><a href="/Production?type=1" style="color: white">Подробнее</a></button>
		        </div>
		        </div>
		    </div>
	    </div>
        <%--<div class="swiper-slide">
	        <div class="block">
		        <div class="sub-block">
		            <div class="sub-content">
				    <h1>Мебель</h1>
				    <div class="text">
				    В нашем каталоге мебели можно выбрать как классические модели гостиных и стенок, так и ультра современные комплекты.
				    </div>
                    <button><a href="/Production?type=2" style="color: white">Подробнее</a></button>
		            </div>
		        </div>
		        <div class="image">
		        <img src="/Images/furniture.png" alt=""/>
		        <div class="sub-block">
		            <h1>Мебель</h1>
		            <div class="text">
		            В нашем каталоге мебели можно выбрать как классические модели <br> гостиных и стенок, так и ультра современные комплекты.
		            </div>
		            <button><a href="/Production?type=2" style="color: white">Подробнее</a></button>
		        </div>
		        </div>
		    </div>
	    </div>--%>
	  </div>

	  <div class="swiper-scrollbar"></div>
	</div>






    <div class="container">
		<h1 class="h1-header">ФАСАДЫ РАМОЧНЫЕ И ДЕКОРАТИВНЫЕ ЭЛЕМЕНТЫ ДЛЯ МЕБЕЛИ И ИНТЕРЬЕРА</h1>
		<div class="categories">
			<div class="category">
				<a href="/Production?type=0">
					<div class="cat-image">
						<img src="/Images/fronts.jpg" alt=""/>
					</div>
					<h3>Фасады</h3>
				</a>
			</div>
			<div class="category">
				<a href="/Production?type=1">
					<div class="cat-image">
						<img src="/Images/decors.jpg" alt=""/>
					</div>
					<h3>Интерьерные декоры и погонаж</h3>
				</a>
			</div>
			<div class="category">
				<a href="/Production?type=4">
					<div class="cat-image">
						<img src="/Images/promotion-main.png" alt="" style="filter: drop-shadow(2px 4px 6px black)"/>
					</div>
					<h3>Рекламная продукция</h3>
				</a>
			</div>
			<%--<div class="category">
				<a href="/Production?type=2">
					<div class="cat-image">
						<img src="/Images/furniture.png" alt=""/>
					</div>
					<h3>Мебель</h3>
				</a>
			</div>
			<div class="not_available category" >
				<a href="/">
					<div class="cat-image">
						<img src="/Images/dec-elements.jpg" alt=""/>
					</div>
					<h3>Декор элементы</h3>
				</a>
			</div>
			<div class="not_available category">
				<a href="/">
					<div class="cat-image">
						<img src="/Images/plintus.jpeg" alt=""/>
					</div>
					<h3>Плинтуса и наличники</h3>
				</a>
			</div>--%>
		</div>



		<h1 class="h1-header">О НАС</h1>
		<div class="about">
			<div class="no-swiper">
				<div class="about-block">
					<div class="about-text">Вот уже <b>более 20</b> лет ООО «ОМЦ-Профиль» работает в мебельной индустрии и создаёт широкий ассортимент мебельных фасадов и декоративных элементов: багетов, балюстрад, пилястр, плинтусов. Наши изделия широко применяются для производства кухонной мебели, но с таким же успехом могут применятся для изготовления гардеробов, шкафов и тумб для любых жилых помещений. </div>
					<div class="about-image">
						<img src="/Images/about-1.jpg" alt=""/>
						<div class="about-text">Вот уже <b>более 20</b> лет ООО «ОМЦ-Профиль» работает в мебельной индустрии и создаёт широкий ассортимент мебельных фасадов и декоративных элементов: багетов, балюстрад, пилястр, плинтусов. Наши изделия широко применяются для производства кухонной мебели, но с таким же успехом могут применятся для изготовления гардеробов, шкафов и тумб для любых жилых помещений. </div>
					</div>
				</div>
				<div class="about-block">
					<div class="about-image">
						<img src="/Images/about-2.jpg" alt=""/>
						<div class="about-text">Мы так – же выпускаем изделия для оформления интерьера: декоративную рейку, реечные панели, плинтуса, консоли, багеты, наличники. Начиная с 2015 года, компания производит корпусную мебель для гостиной и спальни. Мы с уверенностью заявляем, что наша фабрика - <b>один из лидеров в РБ</b> по производству профиля из МДФ.</div>
					</div>
					<div class="about-text">Мы так – же выпускаем изделия для оформления интерьера: декоративную рейку, реечные панели, плинтуса, консоли, багеты, наличники. Начиная с 2015 года, компания производит корпусную мебель для гостиной и спальни. Мы с уверенностью заявляем, что наша фабрика - <b>один из лидеров в РБ</b> по производству профиля из МДФ.</div>
				</div>
				<div class="about-block">
					<div class="about-text">Наши производственные цеха оборудованы <b>современным высокотехнологичным оборудованием лучших</b> немецких и итальянских брендов. Для облицовывания мы используем только немецкие клея и облицовочные материалы немецкого и японского производства. Что позволяет добиться <b>высокого качества</b> выпускаемой продукции. И <b>гарантировать</b> покупателю отличные эксплуатационные характеристики нашей продукции.</div>
					<div class="about-image">
						<img src="/Images/about-3.png" alt=""/>
						<div class="about-text">Наши производственные цеха оборудованы <b>современным высокотехнологичным оборудованием лучших</b> немецких и итальянских брендов. Для облицовывания мы используем только немецкие клея и облицовочные материалы немецкого и японского производства. Что позволяет добиться <b>высокого качества</b> выпускаемой продукции. И <b>гарантировать</b> покупателю отличные эксплуатационные характеристики нашей продукции.</div>
					</div>
				</div>
			</div>


			<div class="swiper swiper-main" rewind="true">
			  <div class="swiper-wrapper">
			    <div class="swiper-slide">
			    	<div class="about-image">
						<img src="/Images/about-1.jpg" alt=""/>
						<div class="about-text">Вот уже <b>более 20</b> лет ООО «ОМЦ-Профиль» работает в мебельной индустрии и создаёт широкий ассортимент мебельных фасадов и декоративных элементов: багетов, балюстрад, пилястр, плинтусов. Наши изделия широко применяются для производства кухонной мебели, но с таким же успехом могут применятся для изготовления гардеробов, шкафов и тумб для любых жилых помещений. </div>
					</div>
			    </div>
			    <div class="swiper-slide">
			    	<div class="about-image">
						<img src="/Images/about-2.jpg" alt=""/>
						<div class="about-text">Мы так – же выпускаем изделия для оформления интерьера: декоративную рейку, реечные панели, плинтуса, консоли, багеты, наличники. Начиная с 2015 года, компания производит корпусную мебель для гостиной и спальни. Мы с уверенностью заявляем, что наша фабрика - <b>один из лидеров в РБ</b> по производству профиля из МДФ.</div>
					</div>
			    </div>
			    <div class="swiper-slide">
			    	<div class="about-image">
						<img src="/Images/about-3.png" alt=""/>
						<div class="about-text">Наши производственные цеха оборудованы <b>современным высокотехнологичным оборудованием лучших</b> немецких и итальянских брендов. Для облицовывания мы используем только немецкие клея и облицовочные материалы немецкого и японского производства. Что позволяет добиться <b>высокого качества</b> выпускаемой продукции. И <b>гарантировать</b> покупателю отличные эксплуатационные характеристики нашей продукции.</div>
					</div>
			    </div>
			  </div>

			  <div class="swiper-scrollbar"></div>
			</div>

			<div style="margin-top: 40px; margin-left: 15px; margin-right: 15px; text-align: center;">
				Наши фасады, профиль и декоративные элементы можно купить в Гродно, Минске, Бресте, Гомеле, Витебске, Могилеве и других городах Беларуси. Мы поставляем нашу продукцию в Россию, Казахстан, Грузию и другие страны СНГ.
			</div>
		</div>

		<h1 class="h1-header">НАШИ НАДЕЖНЫЕ ПОСТАВЩИКИ</h1>
		<div class="suppliers">
			<div style="text-align: center;">
				Наша компания эффективно сотрудничает с некоторыми всемирно известными производителями
			</div>
			<div class="sup-logos">
				<div class="sup-logo logo-1"><img src="/Images/sup-1.jpg" alt=""/></div>
				<div class="sup-logo logo-2"><img src="/Images/sup-2.png" alt=""/></div>
				<div class="sup-logo logo-3"><img src="/Images/sup-3.png" alt=""/></div>
				<div class="sup-logo logo-4"><img src="/Images/sup-4.png" alt=""/></div>
				<div class="sup-logo logo-5"><img src="/Images/sup-5.png" alt=""/></div>
				<div class="sup-logo logo-6"><img src="/Images/sup-6.png" alt=""/></div>
				<div class="sup-logo logo-7"><img src="/Images/sup-7.png" alt=""/></div>
				<div class="sup-logo logo-8"><img src="/Images/sup-8.jpg" alt=""/></div>
			</div>
		</div>


		<h1 class="h1-header">НОВИНКИ</h1>
		<div class="latest">
            <div id="NewProductsContainer1" runat="server" class="latest-fronts no-swiper" style="padding:0px 0px">
                <asp:Repeater ID="NewProductsRepeater1" runat="server" OnItemDataBound="NewProductsRepeater1_ItemDataBound">
                    <ItemTemplate>
                        <div class="latest-front not_show_all">
                            <a id="ProductLink1" runat="server" href='<%# Eval("URL") %>'>
                                <div class="front-image">
                                    <img id="ProductImageUrl1" runat="server" src='<%# Eval("ProductImageUrl") %>' alt=""/>
                                </div>
                                <div class="latest-text">
                                    <asp:Label ID="Name1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </div>
                            </a>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div id="ShowAllButtonContainer" style="text-align: center; margin: auto; margin-top: 70px;">
                <button  class="slider-button" id="ShowAllButton" onclick="showAllProducts()">Смотреть все</button>
            </div>
            <script>
                function showAllProducts() {
                    event.preventDefault();
                    var elements = document.querySelectorAll(".latest-front.not_show_all");
                    for (var i = 0; i < elements.length; i++) {
                        elements[i].classList.remove("not_show_all");
                    }

                    var buttonContainer = document.getElementById("ShowAllButtonContainer");
                    buttonContainer.style.display = "none";
                }
            </script>



            <div id="NewProductsContainer2" runat="server" class="swiper swiper-latest" rewind="true" style="padding:0px 0px">
                <div class="swiper-wrapper">
                    <asp:Repeater ID="NewProductsRepeater2" runat="server" OnItemDataBound="NewProductsRepeater2_ItemDataBound">
                        <ItemTemplate>
                            <div class="swiper-slide">
                                <a id="ProductLink2" runat="server" href='<%# Eval("URL") %>'>
                                    <div class="front-image">
                                        <img id="ProductImageUrl2" runat="server" src='<%# Eval("ProductImageUrl") %>' alt=""/>
                                    </div>
                                    <div class="latest-text">
                                        <asp:Label ID="Name2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    </div>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <div class="swiper-scrollbar"></div>
            </div>

        </div>

    <%--<div class="hd">
        <p>ПРОИЗВОДСТВО ПРОФИЛЯ ПОГОНАЖНОГО,<br />ФАСАДОВ И КОРПУСНОЙ МЕБЕЛИ В РЕСПУБЛИКЕ БЕЛАРУСЬ</p>
    </div>
    <div class="prod-cat-menu-cont noselect">
        <div class="item">
            <a href="/Production?type=2">
                <div class="img">
                    <img src="///Images/Main/korp.png" ondragstart="return false;" />
                </div>
            </a>
            <span>Корпусная мебель</span>
        </div>
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
    </div>--%>


    <%--<div class="prod-menu-cont noselect" style="background-color:#eeeeee;">
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
                        <img src="/Images/handshake.png" style="width:90px; display:inline-block; margin-top:15px;" />
                        <span style="display:block; font-size:15px; margin-top:6px;">С фабрикой или дилером</span>
                    </div>
                    
                </div>
                <div style="display:inline-block; text-align:center; width:307px;">
                    <span style="display:block; font-size:18px;">СРОК ПРОИЗВОДСТВА</span>
                    <img src="/Images/calendar-and-clock.png" style="width:84px; display:inline-block; margin-top:20px;" />
                    <span style="display:block; font-size:15px; margin-top:7px;">От 2-ух недель</span>
                </div>
                <div style="display:inline-block; text-align:center; width:307px;">
                    <div style="padding-left:100px;">
                        <span style="display:block; font-size:18px;">СКИДКИ</span>
                        <img src="/Images/discount.png" style="width:84px; display:inline-block; margin-top:20px;" />
                        <span style="display:block; font-size:15px; margin-top:6px;">50% на образцы</span>
                    </div>
                </div>

            </div>
            <div>
                <div style="display:inline-block; text-align:left; max-width:930px; margin-top:15px; margin-bottom:30px;">

                    <div style="display:inline-block; text-align:center; width:307px;">
                        <div style="padding-right:100px;">
                            <span style="display:block; font-size:18px;">ЭКСКЛЮЗИВ</span>
                            <img src="/Images/creative-process.png" style="width:90px; display:inline-block; margin-top:15px;" />
                            <span style="display:block; font-size:15px; margin-top:6px;">По чертежу заказчика</span>
                        </div>
                    </div>
                    <div style="display:inline-block; text-align:center; width:307px;">
                        <span style="display:block; font-size:18px;">РЕКЛАМА</span>
                        <img src="/Images/signboard.png" style="width:90px; display:inline-block; margin-top:15px;" />
                        <span style="display:block; font-size:15px; margin-top:6px;">Каталоги, образцы и др.</span>
                    </div>
                    <div style="display:inline-block; text-align:center; width:307px;">
                        <div style="padding-left:100px;">
                            <span style="display:block; font-size:18px;">ПО ДЛЯ B2B</span>
                            <img src="/Images/laptop.png" style="width:90px; display:inline-block; margin-top:15px;" />
                            <span style="display:block; font-size:15px; margin-top:6px;">Контроль готовности заказа</span>
                        </div>
                    </div>

                </div>
            </div>
       </div>--%>




    <%--было закоменчено--%>
    <%--<div style="text-align:center;">
        <div class="newprod-label">НОВОСТИ</div>

        <div id="NewsContainer" runat="server" style="display:inline-block"></div>
    </div>--%>





    <%--<div style="text-align:center; background-color:#eeeeee; padding-bottom:30px">
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
            <img src="/Images/img_avatar2.png" style="border-radius:50%; width:100px; margin-top:30px;" />
            <span style="display:block; margin-top:15px; font-size:21px; font-family:OpenSans-Semibold">Елена Лозовицкая</span>
            <span style="display:block; margin-top:10px; font-size:15px; font-family:OpenSans-Regular; color:#8e8e8e">специалист отдела маркетинга</span>
            <div style="margin-top:15px; ">
                <span style="display:block; font-size:16px; font-family:OpenSans-Semibold; color:#41a271">RU, BY, EN</span>
            </div>
            <div style="margin-top:25px; ">
                <span style="display:inline-block; font-size:16px; font-family:OpenSans-Semibold; color:#5a5a5a">+375 (29) 155-58-94</span>
            </div>
            <div style="margin-top:7px; ">
                <a href="mailto:marketing@zovprofil.by" style="color: #41a271; text-decoration:underline">marketing@zovprofil.by</a>
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
        </div>--%>











       <%-- <div style="text-align:center">
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
                        <img id="ItemImage" src="//Images/Loader.GIF" style="max-width:100%; max-height:100%; position: absolute; margin: auto; top: 0; left: 0; right: 0; bottom: 0;" />             
                </div>              
            </div>
        </div>
    </div>--%>














<script>
    $(function () {
        $('[data-toggle="tooltip"]').tooltip({
            template: '<div class="tooltip" role="tooltip"><div class="tooltip-arrow"></div><div class="tooltip-inner toooltip" style="width:500px; background: rgba(0, 0, 0, 0.7); border-radius: 6px; padding: 10px;"></div></div>'
        });
    });

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


    function Loop() {
        var i = -1;

        if (ci == parseInt(document.getElementById("hSlidesCount").value))
            i = 1;
        else
            i = ci + 1;

        ShowImage(i);
    }

    function ShowImage(i) {
        if (i == 1) {
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

        document.getElementById('ItemImage').src = Catalog.URL + SliderUrls[ci - 1];
    }

    function redirectToCategory(elementId) {
        window.location.href = SliderLinks[ci - 1];
        //window.open(SliderLinks[ci - 1], '_blank');
    }

    var clickCount = 0;
    var clickDelay = 300; // Задержка для определения двойного нажатия (300 миллисекунд)

    function handleClick(event) {
        clickCount++;
        setTimeout(function () {
            if (clickCount === 1) {
                redirectToCategory();
            }
            clickCount = 0;
        }, clickDelay);
    }

    function handleDoubleClick(event) {
        event.preventDefault(); // Предотвращаем переход по ссылке по двойному клику
        // Открывает картинку на весь экран или выполняет требуемые действия
        OpenSliderImage();
    }

    function SelectImage(i) {
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

    function SetSliderLinks(list) {
        SliderLinks = Array();

        var s = "";

        for (var i = 0; i < list.length; i++) {
            if (list[i] == ';') {
                SliderLinks.push(s);
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
<script src="https://kit.fontawesome.com/76d835b4d7.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script src="../Scripts/swiper.js"></script>
</asp:Content>
