var PopOpened = "";
var Zoom = 11;


$(function () {

    $('#CountryButton').popover({
        html: true,
        placement: 'bottom',
        trigger: 'manual',
        content: function () { return $('#CountryDiv').clone(); }
    })

    $('#CountryButton').on('shown.bs.popover', function () {
        PopOpened = "CountryButton";
    })

    $('#CountryButton').on('hidden.bs.popover', function () {
        PopOpened = "";
    })


    $('#CityButton').popover({
        html: true,
        placement: 'bottom',
        trigger: 'manual',
        content: function () { return $('#CityDiv').clone(); }
    })

    $('#CityButton').on('shown.bs.popover', function () {
        PopOpened = "CityButton";
    })

    $('#CityButton').on('hidden.bs.popover', function () {
        PopOpened = "";
    })

    if (document.getElementById('hCityID').value === '-')
        Zoom = 5;
    else
        Zoom = 11;
})

function ShowPopover(e) {
    if (PopOpened.length === 0) {
        $('#' + e.id).popover('show');
        return;
    }

    if (PopOpened === e.id)
        $('#' + e.id).popover('hide');

    if (PopOpened.length > 0 && PopOpened !== e.id) {
        $('#' + PopOpened).popover('hide');
        $('#' + e.id).popover('show');
    }
}

$('html').click(function () {
    {
        if (PopOpened.length > 0)
            $('#' + PopOpened).popover('hide');
    }
})

function CountryClick(e) {
    document.getElementById('CountryLabel').innerHTML = document.getElementById(e.id).innerHTML;
    document.getElementById('hCountryID').value = GetID(e.id);

    window.location.replace('/Wheretobuy?country=' + document.getElementById('hCountryID').value + "&furniture=" + document.getElementById('hFurniture').value +
        "&fronts=" + document.getElementById('hFronts').value + "&profile=" + document.getElementById('hProfile').value);
}

function CityClick(e) {
    document.getElementById('CityLabel').innerHTML = document.getElementById(e.id).innerHTML;
    document.getElementById('hCityID').value = GetID(e.id);

    window.location.replace('/Wheretobuy?country=' + document.getElementById('hCountryID').value + "&city=" + document.getElementById('hCityID').value + "&furniture=" + document.getElementById('hFurniture').value +
        "&fronts=" + document.getElementById('hFronts').value + "&profile=" + document.getElementById('hProfile').value);
}

function Check(e) {
    if (document.getElementById('InfiniumCheckBoxChecked_' + GetID(e.id)).value === "false") {
        document.getElementById('InfiniumCheckBoxChecked_' + GetID(e.id)).value = "true";
        document.getElementById(e.id).src = baseUrl() + "/Images/Check16.png";

        if (GetID(e.id) === "FurnitureCheckBox")
            document.getElementById('hFurniture').value = "1"; 

        if (GetID(e.id) === "FrontsCheckBox")
            document.getElementById('hFronts').value = "1";

        if (GetID(e.id) === "ProfileCheckBox")
            document.getElementById('hProfile').value = "1";
    }
    else {
        document.getElementById('InfiniumCheckBoxChecked_' + GetID(e.id)).value = "false";
        document.getElementById(e.id).src = baseUrl() + "/Images/UnCheck16.png";

        if (GetID(e.id) === "FurnitureCheckBox")
            document.getElementById('hFurniture').value = "0";

        if (GetID(e.id) === "FrontsCheckBox")
            document.getElementById('hFronts').value = "0";

        if (GetID(e.id) === "ProfileCheckBox")
            document.getElementById('hProfile').value = "0";
    }

    window.location.replace('/Wheretobuy?country=' + document.getElementById('hCountryID').value + "&city=" + document.getElementById('hCityID').value + "&furniture=" + document.getElementById('hFurniture').value +
         "&fronts=" + document.getElementById('hFronts').value + "&profile=" + document.getElementById('hProfile').value);
}

function ShowDealer(e) {
    ShowDealerPopup(GetID(e.id));
}

function ShowDealerPopup(id) {
    document.getElementById("ShopNameSpan").innerHTML = document.getElementById("DealerNameSpan_" + id).innerHTML;
    document.getElementById("AddressSpan").innerHTML = document.getElementById("DealerAddressSpan_" + id).innerHTML;
    document.getElementById("WebsiteSpan").innerHTML = document.getElementById("DealerWebsiteSpan_" + id).innerHTML;
    document.getElementById("WebsiteSpan").href = document.getElementById("DealerWebsiteSpan_" + id).innerHTML;
    document.getElementById("ContactsSpan").innerHTML = document.getElementById("DealerPhonesSpan_" + id).innerHTML;
    document.getElementById("EmailSpan").innerHTML = document.getElementById("DealerEmailSpan_" + id).innerHTML;
    document.getElementById("EmailSpan").href = "mailto:" + document.getElementById("DealerEmailSpan_" + id).innerHTML;
    document.getElementById("WorkTimeSpan").innerHTML = document.getElementById("DealerWorkTimeSpan_" + id).innerHTML;

    if (document.getElementById("DealerFurnitureSpan_" + id).innerHTML.length > 0)
        document.getElementById("FurnitureSpan").style.display = "block";
    else
        document.getElementById("FurnitureSpan").style.display = "none";

    if (document.getElementById("DealerFrontsSpan_" + id).innerHTML.length > 0)
        document.getElementById("FrontsSpan").style.display = "block";
    else
        document.getElementById("FrontsSpan").style.display = "none";

    if (document.getElementById("DealerProfileSpan_" + id).innerHTML.length > 0)
        document.getElementById("ProfileSpan").style.display = "block";
    else
        document.getElementById("ProfileSpan").style.display = "none";

    $('#DealerPopup').modal('show');
}

function HidePopup() {
    $('#DealerPopup').modal('hide');
}

function initMap() {
    var mainLat = "";
    var mainLong = "";

    var LatArray = [];
    var LongArray = [];
    var TitlesArray = [];
    var IDArray = [];

    //get all points
    var points = document.getElementsByClassName('dealer');
    for (var i = 0; i < points.length; ++i) {
        id = GetID(points[i].id)

        var long = document.getElementById('DealerLongSpan_' + id).innerHTML;

        if (long.length === 0)
            continue;

        var lat = document.getElementById('DealerLatSpan_' + id).innerHTML;

        LongArray.push(long);
        LatArray.push(lat);

        var t = document.getElementById('DealerNameSpan_' + id).innerHTML;

        TitlesArray.push(t);

        IDArray.push(id);
    }

    //set main point (for center)
    if (LongArray.length > 0)
    {
        if (mainLat.length === 0)
        {
            mainLat = LatArray[0];
            mainLong = LongArray[0];
        }
    }

    //init map
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: Zoom,
        center: { lat: Number(mainLat), lng: Number(mainLong) }
    });

    //add markers
    for (var m = 0; m < LongArray.length; m++)
    {
        var marker = new google.maps.Marker({
            position: { lat: Number(LatArray[m]), lng: Number(LongArray[m]) },
            title: TitlesArray[m]
        }); 

        marker.id = Number(IDArray[m])

        //var id = 

        marker.addListener('click', function () {
            ShowDealerPopup(this.id);
        });

        marker.setMap(map);
    }

    google.maps.event.addListenerOnce(map, 'bounds_changed', function () {
        map.setZoom(Zoom);
    });

}