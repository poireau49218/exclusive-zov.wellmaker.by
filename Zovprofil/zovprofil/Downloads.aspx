<%@ Page Title="Информация для клиентов – фабрика ЗОВ-Профиль" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Downloads.aspx.cs" ClientIDMode="Static" Inherits="Zovprofil.zovprofil.Downloads" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">

    <link href="../Styles/downloads.css" rel="stylesheet" />

    <div style="text-align:center">
        <div style="width:1000px; display:inline-block; margin-top:30px; padding: 0 10px;">
            <div id="MainDescriptionDiv" style="display:block;font-size:15px; text-align:justify; line-height:25px; margin-right:46px; margin-bottom:30px;">СООО «ЗОВ-ПРОФИЛЬ» и СООО «ЗОВ-ТермоПрофильСистемы» рады предоставить
своим клиентам всю необходимую информацию по продукции: актуальные каталоги по
мебельным фасадам, мебели и профилям (подразделы «Каталоги» и «Презентации»),
памятки и информация о скидках (подраздел «Информация»), типовые договоры и схемы
сборки мебели («Документы»). Для дизайнеров и проектировщиков предлагаем скачать
прорисованные в программах 3ds Max и PRO100 элементы мебели и стеновых панелей в
подразделе «Библиотека для 3D-проектирования».<br /><br />
Мы также рады сотрудничеству с новыми оптовыми и розничными клиентами и
индивидуальными предпринимателями. Об условиях сотрудничества, географии продаж и
ценовой программе, Вы можете узнать из подразделов «Информация» и «Презентации».</div>

            <div style="background-color:white; display:inline-block; float:left;  width:268px; border: 1px solid #ededed;">
                <div style="text-align:left; padding-left:15px;">
                    <div id="Info" class="men-item-sel"  onclick="SelectItem(this)">
                        ИНФОРМАЦИЯ
                        <img src="/Images/right.png" style="float:right; padding-top:9px; padding-right:15px;" />
                    </div>
                    <div id="Catalogs" class="men-item"  onclick="SelectItem(this)">
                        КАТАЛОГИ
                        <img src="/Images/right.png" style="float:right; padding-top:9px; padding-right:15px;" />
                    </div>
                    <div id="Docs" class="men-item"  onclick="SelectItem(this)">
                        ДОКУМЕНТЫ
                        <img src="/Images/right.png" style="float:right; padding-top:9px; padding-right:15px;" />
                    </div>
                    <div id="3D"  class="men-item"  onclick="SelectItem(this)">
                        3D ПРОЕКТИРОВАНИЕ 
                        <img src="/Images/right.png" style="float:right; padding-top:9px; padding-right:15px;" />
                    </div>
                    <div id="Pres"  class="men-item"  onclick="SelectItem(this)">
                        ПРЕЗЕНТАЦИИ
                        <img src="/Images/right.png" style="float:right; padding-top:9px; padding-right:15px;" />
                    </div>
                    <div id="Pres1"  class="men-item"  onclick="SelectItem(this)">
                        !!!!!!!!!!!!!!!
                        <img src="/Images/right.png" style="float:right; padding-top:9px; padding-right:15px;" />
                    </div>
                </div>
            </div>

            <div style="display:inline-block; width:680px; text-align:left">
                <div id="CatalogsCont" style="display:none">
                     <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">ЗОВ-ПРОФИЛЬ. Фасады (2018-2019)</span>
                            <span class="desc">ЗОВ-ПРОФИЛЬ. Фасады (2018-2019)</span>
                        </div>
                        <a href="/Files/ЗОВ-ПРОФИЛЬ. Фасады (2018-2019).pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Технический каталог по фасадам - 2017</span>
                            <span class="desc">Подробная техническая информация по всем предлагаемым коллекциям фасадов и
декоративным элементам. Удобен при оформлении заказа.</span>
                        </div>
                        <a href="/Files/Технический каталог по фасадам - 2017.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Новинки 2018</span>
                            <span class="desc">Представлены как существующие коллекции фасадов, пользующиеся наибольшим
спросом у клиентов, так и новые (7 коллекций).</span>
                        </div>
                        <a href="/Files/Новинки 2018.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Стеновые панели</span>
                            <span class="desc">Техническая информация (схемы сборки, доступные цвета) для менеджеров и продавцов в
салонах.</span>
                        </div>
                        <a href="/Files/Стеновые панели.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Корпусная мебель</span>
                            <span class="desc">Каталог с описанием 3 коллекций корпусной мебели: «Патриция», «Норманн» и «КУБ».
Информация полезна для менеджеров и продавцов в салонах.</span>
                        </div>
                        <a href="/Files/Корпусная мебель.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Мебель для гостиной КУБ</span>
                            <span class="desc">Трехстраничная брошюра с перечнем элементов мебели коллекции «КУБ», доступными
цветами и фото интерьеров. Рекламный материал для конечных покупателей.</span>
                        </div>
                        <a href="/Files/Мебель для гостиной КУБ.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                        
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Мебель для гостиной НОРМАНН</span>
                            <span class="desc">Двухстраничная брошюра с необходимой информацией о коллекции мебели «Норманн».
Рекламный материал для конечных покупателей.</span>
                        </div>
                        <a href="/Files/Мебель для гостиной НОРМАНН.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                </div>    
                <div id="3DCont" style="display:none">
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">PRO100 Стеновые панели</span>
                            <span class="desc">Прорисованные в программе PRO100 элементы стеновых панелей: материалы, лепнина,
профиля и готовые решения. Материал будет полезен дизайнерам и проектировщикам.</span>
                        </div>
                        <a href="/Files/PRO100 Стеновые панели.zip">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">PRO100 Материалы и элементы</span>
                            <span class="desc">Прорисованные в программе PRO100 материалы, декоры и декоративные элементы к кухонным фасадам. Рекомендуется для скачивания дизайнерами и проектировщиками.</span>
                        </div>
                        <a href="/Files/Дополнение к программе Pro100-5.20 от ЗОВ-Профиль.rar">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">3ds Max Модели мебели</span>
                            <span class="desc">Прорисованные в программе 3D Max элементы мебели коллекций «Патриция»,
«Норманн» и «КУБ», текстуры используемых пленок. Материал будет полезен
дизайнерам и проектировщикам.</span>
                        </div>
                        <a href="/Files/3ds Max Модели мебели.zip">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">PRO100 Элементы КУБ</span>
                            <span class="desc">Прорисованные в программе PRO100 элементы мебели коллекции «КУБ», цвета используемых декоров. Материал будет полезен дизайнерам и продавцам мебели.</span>
                        </div>
                        <a href="/Files/КУБ.rar">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                </div>  
                <div id="DocsCont" style="display:none">
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Бланк претензии ЗОВ-ПРОФИЛЬ</span>
                            <span class="desc">Стандартная форма заявки при выявлении брака продукции СООО «ЗОВ-ПРОФИЛЬ».
Языки: RU, ENG.</span>
                        </div>
                        <a href="/Files/Бланк претензии ПРОФИЛЬ.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Бланк претензии ЗОВ-ТПС</span>
                            <span class="desc">Стандартная форма заявки при выявлении брака продукции СООО «ЗОВ-
ТермоПрофильСистемы». Языки: RU, ENG.</span>
                        </div>
                        <a href="/Files/Бланк претензии ТПС.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/WordFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Карточка клиента</span>
                            <span class="desc">Карточку необходимо заполнять при начале сотрудничества и заключении договора с
новым корпоративным клиентом.</span>
                        </div>
                        <a href="/Files/Карточка клиента.docx">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/WordFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Типовой договор 2018 ЗОВ-ПРОФИЛЬ</span>
                            <span class="desc">Типовой договор сотрудничества с компаниями-резидентами образца 2018 года, BYN.</span>
                        </div>
                        <a href="/Files/Типовой договор 2018 ЗОВ-ПРОФИЛЬ.docx">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/WordFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Типовой договор 2018 ЗОВ-ТПС</span>
                            <span class="desc">Типовой договор сотрудничества с компаниями-НЕрезидентами образца 2018 года, RUB.</span>
                        </div>
                        <a href="/Files/Типовой договор 2018 ЗОВ-ТПС.docx">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ImageFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Сертификат ЗОВ-ПРОФИЛЬ</span>
                            <span class="desc">Сертификат соответствия требованиям СТБ 1871-2008, ГОСТ 16371-93.</span>
                        </div>
                        <a href="/Files/Сертификат ЗОВ-ПРОФИЛЬ.jpg">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ImageFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Сертификат ЗОВ-ТПС</span>
                            <span class="desc">Сертификат соответствия требованиям СТБ 1871-2008, ГОСТ 16371-93.</span>
                        </div>
                        <a href="/Files/Сертификат ЗОВ-ТПС.jpg">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Схема сборки. Норманн</span>
                            <span class="desc">Схемы для каждого элемента мебели коллекции «Норманн» с перечнем деталей и этапов
сборки.</span>
                        </div>
                        <a href="/Files/Схема сборки. Норманн.zip">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Схема сборки. КУБ</span>
                            <span class="desc">Схемы для каждого элемента мебели коллекции «КУБ» с перечнем деталей и этапов
сборки.</span>
                        </div>
                        <a href="/Files/Схема сборки. КУБ.zip">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Схема сборки. Патриция</span>
                            <span class="desc">Схемы для каждого элемента мебели коллекции «Патриция» с перечнем деталей и этапов
сборки.</span>
                        </div>
                        <a href="/Files/Схема сборки. Патриция.zip">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Столик  СТ-1  ФА-002.30</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Столик  СТ-1  ФА-002.30.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Кровать  КВ-180  ФА-002.39</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Кровать  КВ-180  ФА-002.39.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Кровать  КН-180  ФА-002.36</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Кровать  КН-180  ФА-002.36.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Кровать  КВ-160  ФА-002.38</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Кровать  КВ-160  ФА-002.38.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Кровать  КН-160  ФА-002.35</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Кровать  КН-160  ФА-002.35.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Кровать  КВ-90  ФА-002.40</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Кровать  КВ-90  ФА-002.40.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Кровать  КН-90  ФА-002.37</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Кровать  КН-90  ФА-002.37.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Зеркало ЗН-150  ФА-001.32</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Зеркало ЗН-150  ФА-001.32.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Зеркало ЗН-100  ФА-001.31</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Зеркало ЗН-100  ФА-001.31.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Комод  К2-150 ФА-001.28</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Комод  К2-150 ФА-001.28.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Комод  К1-100  ФА-001.27</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Комод  К1-100  ФА-001.27.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Комод К1-80  ФА-001.26</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Комод К1-80  ФА-001.26.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Комод К1-60  ФА-001.25</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Комод К1-60  ФА-001.25.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Тумба  Т2-150  ФА-001.22</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Тумба  Т2-150  ФА-001.22.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Тумба  Т1-100  ФА-001.21</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Тумба  Т1-100  ФА-001.21.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Тумба  Т1-60  ФА-002.20</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Тумба  Т1-60  ФА-002.20.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф для одежды  ШО-190  ФА-001.52</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф для одежды  ШО-190  ФА-001.52.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф для одежды  ШО-150  ФА-002.51</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф для одежды  ШО-150  ФА-002.51.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф для одежды  ШО-100  ФА-002.50</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф для одежды  ШО-100  ФА-002.50.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф  ШП2-100  ФА-001.12</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф  ШП2-100  ФА-001.12.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф  ШП2-80  ФА-001.11</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф  ШП2-80  ФА-001.11.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф ШП2-60  ФА-001.10</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф ШП2-60  ФА-001.10.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф-витрина  ШВ2-100  ФА-001.09</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф-витрина  ШВ2-100  ФА-001.09.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф-витрина  ШВ2-80  ФА-001.08</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф-витрина  ШВ2-80  ФА-001.08.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф-витрина  ШВ2-60  ФА-001.07</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф-витрина  ШВ2-60  ФА-001.07.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф ШП1-100  ФА-001.06</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф ШП1-100  ФА-001.06.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф  ШП1-80  ФА-001.05</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф  ШП1-80  ФА-001.05.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф  ШП1-60  ФА-001.04</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф  ШП1-60  ФА-001.04.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф-витрина  ШВ1-100  ФА-001.03</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф-витрина  ШВ1-100  ФА-001.03.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф-витрина  ШВ1-80  ФА-001.02</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф-витрина  ШВ1-80  ФА-001.02.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/ArchiveFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Шкаф-витрина  ШВ1-60  ФА-001.01</span>
                            <span class="desc">-</span>
                        </div>
                        <a href="/Files/Шкаф-витрина  ШВ1-60  ФА-001.01.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                </div> 
                <div id="PresCont" style="display:none">
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Новинки фасадов 2017-2018</span>
                            <span class="desc">Презентационный материал по новинкам фасадов с технической информацией для
существующих клиентов компаний.</span>
                        </div>
                        <a href="/Files/Новинки фасадов 2017-2018.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Информация по сотрудничеству</span>
                            <span class="desc">Презентационный материал для дилеров о фабрике, существующем ассортименте,
условиям отгрузки и упаковки готовой продукции.</span>
                        </div>
                        <a href="/Files/Информация по сотрудничеству.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                </div>

                <div id="Pres1Cont" style="display:none">
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">!!!!!!!!!!!!!Новинки фасадов 2017-2018!!!!!!!!!!!!!!!</span>
                            <span class="desc">Презентационный материал по новинкам фасадов с технической информацией для
существующих клиентов компаний.</span>
                        </div>
                        <a href="/Files/Новинки фасадов 2017-2018.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Информация по сотрудничеству</span>
                            <span class="desc">Презентационный материал для дилеров о фабрике, существующем ассортименте,
условиям отгрузки и упаковки готовой продукции.</span>
                        </div>
                        <a href="/Files/Информация по сотрудничеству.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                </div>

                <div id="InfoCont" style="">
                    <div class="downitem">
                        <img src="/Images/WordFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Памятка корпоративному клиенту</span>
                            <span class="desc">Рекомендации по эксплуатации мебельных фасадов и погонажных изделий, условия
исполнения гарантийных обязательств.</span>
                        </div>
                        <a href="/Files/Памятка корпоративному клиенту.doc">
                           <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <div class="downitem">
                        <img src="/Images/PDFFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Информация о скидках - 2019</span>
                            <span class="desc">Ценовая программа компаний, шкала коэффициентов для стандартных и нестандартных
погонажных изделий.</span>
                        </div>
                        <a href="/Files/О скидках 2019 год.pdf">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>
                    <%--<div class="downitem">
                        <img src="/Images/WordFile.png" class="file-ic" />
                        <div class="data">
                            <span class="name">Прейскурант на фасады</span>
                            <span class="desc">Отпускные цены на фасады для новых клиентов (организаций и юр. лиц) без скидок и
НДС.</span>
                        </div>
                        <a href="/Files/Прейскурант на фасады.docx">
                            <div class="down-but">
                                <img src="/Images/download.png" class="download" />
                            </div>
                        </a>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>

    <div style="text-align:center">
        <div style="width:70%; display:inline-block">

            <div class="men-cont">
                
            </div>
            <div class="down-cont">
                
            </div>

        </div>
    </div>
    


    <script>
        $(document).ready(function () {
            ShowContent();
        })

        function SelectItem(e) {
            $('.men-item-sel').each(function () {
                document.getElementById(this.id).className = "men-item"
                document.getElementById(this.id + "Cont").style.display = "none";
            });

            //var slides = document.getElementsByClassName("men-item-sel");
            //for (var i = 0; i < slides.length; i++) {
            //    slides.item(i).className = "men-item"
            //    //document.getElementById(slides.item(i).id + "Cont").className = "down-cont-hid";
            //    alert(slides.item(i). + "Cont")
            //}

            document.getElementById(e.id).className = "men-item-sel";
            document.getElementById(e.id + "Cont").style.display = "inline-block";
        }
    </script>

</asp:Content>
