<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="DersDemo_ASP_AjaxWebService.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                contentType: "application/x-www-form-urlencoded",
                dataType: 'xml',

                success: function(data, status) {
                    var t = $("<table>");
                    $("#b").after(t);
                    t.append("<thead><tr><th>Product ID</th><th>Product Name</th><th>Unit Price</th></tr></thead>");
                    var tb = $("<tbody>").appendTo(t);

                    for (var i = 0, e = $("EProduct", data).eq(0);
                            i < $("EProduct", data).length;
                            i++, e = $("EProduct", data).eq(i)) {
                            
                        tb.append("<tr><td>" + $("ProductID", e).text() +
                            "</td><td>" + $("ProductName", e).text() +
                            "</td><td>" + $("UnitPrice", e).text() +
                            "</td></tr>");
                    }
                }
            });
        });
    </script>

</body>
</html>
