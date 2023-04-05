<%@ Control Language="C#" AutoEventWireup="true" ClientIDMode="Static" CodeBehind="DealerItem.ascx.cs" Inherits="Zovprofil.zovprofil.Controls.DealerItem" %>
<div id="DealerItemDiv" runat="server" class="dealer" onclick="ShowDealer(this)">
    <span id="DealerNameSpan" runat="server" class="dealer-name">ООО "Мебель"</span>
    <div class="dealer-info_cont">
        <img src="/Images/Dealers/d-pin.png" class="dpin" />
        <span id="DealerAddressSpan" runat="server" class="address"></span>
        <span id="DealerWebsiteSpan" runat="server" style="display:none;"></span>
        <span id="DealerEmailSpan" runat="server" style="display:none;"></span>
        <span id="DealerPhonesSpan" runat="server" style="display:none;"></span>
        <span id="DealerWorkTimeSpan" runat="server" style="display:none;"></span>
        <span id="DealerFurnitureSpan" runat="server" style="display:none;"></span>
        <span id="DealerFrontsSpan" runat="server" style="display:none;"></span>
        <span id="DealerProfileSpan" runat="server" style="display:none;"></span>
        <span id="DealerLatSpan" runat="server" style="display:none;"></span>
        <span id="DealerLongSpan" runat="server" style="display:none;"></span>
    </div>
</div>