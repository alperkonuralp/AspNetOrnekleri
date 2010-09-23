<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DersDemo_ASP_AjaxWebService.WebForm1"
    EnableViewState="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <input type="button" id="b" name="b" value="Al" />
    </form>

    <script type="text/javascript">
        $("#b").click(function() {
            $.ajax({
                type: 'POST',
                url: '/Ajax.asmx/GetAllProducts',
                contentType: "application/json; charset=utf-8",
                dataType: 'json',

                success: function(data, status) {
                    var t = $("<table>");
                    $("#b").after(t);
                    t.append("<thead><tr><th>Product ID</th><th>Product Name</th><th>Unit Price</th></tr></thead>");
                    var tb = $("<tbody>").appendTo(t);

                    for (var i = 0; i < data.d.length; i++) {
                        tb.append("<tr><td>" + data.d[i].ProductID +
                            "</td><td>" + data.d[i].ProductName +
                            "</td><td>" + data.d[i].UnitPrice +
                            "</td></tr>");
                    }
                }
            });
        });
    </script>

</body>
</html>
