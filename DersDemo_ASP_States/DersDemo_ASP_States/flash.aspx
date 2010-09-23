<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flash.aspx.cs" Inherits="DersDemo_ASP_States.flash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="http://cdn.jquerytools.org/1.2.4/full/jquery.tools.min.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="flash" style="position: fixed; left: 0; top: 0; right: 0; bottom: 0;">
    </div>
    </form>

    <script type="text/javascript">
        $("#flash").flashembed("game.swf", { scalemode: 'exactfit' });
    </script>

</body>
</html>
