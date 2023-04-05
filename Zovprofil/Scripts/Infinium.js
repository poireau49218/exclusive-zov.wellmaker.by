function baseUrl() {
    var href = window.location.href.split('/');
    return href[0] + '//' + href[2] + '/';
}

function ShowPopover(e) {
    if (PopOpened.length == 0) {
        $('#' + e.id).popover('show');
        return;
    }

    if (PopOpened == e.id)
        $('#' + e.id).popover('hide');

    if (PopOpened.length > 0 && PopOpened != e.id) {
        $('#' + PopOpened).popover('hide');
        $('#' + e.id).popover('show');
    }
}

function GetID(controlid) {
    var s = "";
    var b = false;

    for (var i = 0; i < controlid.toString().length; i++) {
        if (b == true)
            s += controlid.toString()[i];

        if (controlid.toString()[i] == '_')
            b = true;
    }

    return s;
}

function GetIDInd(ind, controlid) {
    var s = "";
    var b = false;
    var c = 0;

    for (var i = 0; i < controlid.toString().length; i++) {
        if (controlid.toString()[i] == '_')
        {
            if (c == ind)
                break;
            else
            {
                c++;
                continue;
            }
        }

        if (c == ind)
            s += controlid.toString()[i];
    }

    return s;
}

function GetArrayFromDT(dtstr) {
    var DT = Array();

    if (dtstr.length == 0)
        return DT;

    var s = "";
    var b = 0;
    var ColName = "";
    var ColData = "";
    var Columns = Array();

    for (var i = 0; i < dtstr.length; i++) {
        if (dtstr[i] == '[') {
            b = 1;
            continue;
        }

        if (dtstr[i] == "=") {
            ColName = s.substr(0, s.length - 1);
            s = "";
            b = 2;
            continue;
        }

        if (dtstr[i] == ';') {
            ColData = s;

            var col = new Object();
            col[ColName] = ColData;

            Columns.push(col);

            ColData = "";
            ColName = "";
            s = "";
            b = 0;
        }

        if (dtstr[i] == '}') {
            var row = new Object();

            for (var c = 0; c < Columns.length; c++) {
                for (var j in Columns[c])
                    row[j] = Columns[c][j];
            }

            DT.push(row);

            Columns = [];
        }

        if (b == 1)//read column name
        {
            s += dtstr[i];
        }

        if (b == 2)//read data
        {
            s += dtstr[i];
        }
    }

    return DT;
}

function GetArrayFromDTType2(dtstr) {
    var DT = Array();

    if (dtstr.length == 0)
        return DT;

    var s = "";
    var b = 0;
    var ColName = "";
    var ColData = "";
    var Columns = Array();

    for (var i = 0; i < dtstr.length; i++) {
        if (dtstr[i] == '[') {
            b = 1;
            continue;
        }

        if (dtstr[i] == "=" && b < 2) {
            ColName = s.substr(0, s.length - 1);
            s = "";
            b = 2;
            continue;
        }

        if (dtstr[i] == '^') {
            ColData = s;

            var col = new Object();
            col[ColName] = ColData;

            Columns.push(col);

            ColData = "";
            ColName = "";
            s = "";
            b = 0;
        }

        if (dtstr[i] == '}') {
            var row = new Object();

            for (var c = 0; c < Columns.length; c++) {
                for (var j in Columns[c])
                    row[j] = Columns[c][j];
            }

            DT.push(row);

            Columns = [];
        }

        if (b == 1)//read column name
        {
            s += dtstr[i];
        }

        if (b == 2)//read data
        {
            s += dtstr[i];
        }
    }

    return DT;
}

function GetDTFromArray(DTArray) {
    if (DTArray == null)
        return "";

    var res = "";

    for (var i = 0; i < DTArray.length; i++) {
        res += "{";

        for (var colname in DTArray[i]) {
            res += "[" + colname + "]";

            res += "=" + DTArray[i][colname] + ";";
        }

        res += "}";
    }

    return res;
}

function GetDTFromArrayType2(DTArray) {
    if (DTArray == null)
        return "";

    var res = "";

    for (var i = 0; i < DTArray.length; i++) {
        res += "{";

        for (var colname in DTArray[i]) {
            res += "[" + colname + "]";

            res += "=" + DTArray[i][colname] + "^";
        }

        res += "}";
    }

    return res;
}


function ShowDeny(text, time) {

    if (text.length > 0)
        DenySpan.innerHTML = text;

    $('#DenyDialogModal').modal('hide');

    clearTimeout(timeout);

    $('#DenyDialogModal').modal('show');

    timeout = setTimeout(function () { $('#DenyDialogModal').modal('hide'); }, time);
}

function TruncateDecimalZerosT(D)
{
    var Dec = D.toString();

    if (Dec.length == 0)
        return Dec;

    var res = "";

    if (Dec.indexOf(".") == -1 && Dec.indexOf(",") == -1)
        return parseInt(Dec, 0).toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ");

    for (var i = Dec.length - 1; i >= 0; i--)
    {
        if (Dec[i] == '.' || Dec[i] == ',')
        {
                res = Dec.substr(0, i);
                break;
        } 

        if (Dec[i] != '0')
        {
            res = Dec.substr(0, i + 1);
                break;
        }
    }

    var p = -1;

    p = res.indexOf(".");

    if (p == -1)
        p = res.indexOf(",");

    if (p == -1)
        return parseInt(res, 0).toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ");

    var s = parseInt(res.substr(0, p)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ") + res.substr(p, res.length - p);

    return parseInt(res.substr(0, p)).toString().replace(/\B(?=(\d{3})+(?!\d))/g, " ") + res.substr(p, res.length - p);
}