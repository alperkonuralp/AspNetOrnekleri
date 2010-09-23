<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DersDemo_ASP_AjaxWebService._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager runat="server">
        <Services>
            <asp:ServiceReference Path="~/Ajax.asmx" />
        </Services>
    </asp:ScriptManager>
    <input type="button" id="b" name="b" value="Al" />
    <div>
    </div>
    </form>

    <script type="text/javascript">
        $("#b").click(function() {
            DersDemo_ASP_AjaxWebService.Ajax.GetAllProducts(onSuccess, onError);
        });

        function onSuccess(data) {
            //alert(data);
            var t = $("<table>");
            $("#b").after(t);
            t.append("<thead><tr><th>Product ID</th><th>Product Name</th><th>Unit Price</th></tr></thead>");
            var tb = $("<tbody>").appendTo(t);

            for (var i = 0; i < data.length; i++) {
                tb.append("<tr><td>"+data[i].ProductID+"</td><td>"+data[i].ProductName+"</td><td>"+data[i].UnitPrice+"</td></tr>");                
            }
        }
        function onError(err) {
            alert(err);
        }
    </script>

</body>
</html>
