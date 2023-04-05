<%@ Control Language="C#" AutoEventWireup="true" EnableViewState="false" CodeBehind="CheckBox.ascx.cs" Inherits="Infinium.MasterControls.CheckBox" %>

<input type="hidden" runat="server" id="InfiniumCheckBoxChecked" />

<div id="CheckDiv" style="">
    <img id="CheckImage" runat="server" src="/Images/UnCheck16.png" ondragstart="return false" onclick="Check(this)" style="float:left; padding-top:4px; cursor:pointer;" />
    <span id="NameLabel" runat="server" style="font-size:15px; font-family:OpenSans-Semibold; color:rgb(50,50,50); padding-left:10px; padding-top:2px; display:block;
        text-overflow:ellipsis; overflow:hidden; word-wrap:break-word; white-space:nowrap;"></span>
</div>
