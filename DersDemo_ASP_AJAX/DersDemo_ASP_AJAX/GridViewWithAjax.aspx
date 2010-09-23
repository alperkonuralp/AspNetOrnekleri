<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewWithAjax.aspx.cs"
    Inherits="DersDemo_ASP_AJAX.GridViewWithAjax" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" EnablePartialRendering="true">
        </asp:ToolkitScriptManager>
        <div style="text-align: right;">
            <asp:UpdatePanel ID="up2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <%= DateTime.Now.ToLongTimeString() %>
                    <asp:Timer ID="t2" runat="server" Interval="1000" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel runat="server" ID="up1" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CustomerID" DataSourceID="LinqDataSource1"
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                        <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                        <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
                        <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                        <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="DersDemo_ASP_AJAX.DataLayer.NorthwindDataContext"
                    TableName="Customers">
                </asp:LinqDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
        <%-- <asp:UpdatePanelAnimationExtender ID="up1_UpdatePanelAnimationExtender" runat="server"
            Enabled="True" TargetControlID="up1" >
            <Animations>
                <OnUpdating><Sequence><FadeOut Duration="0.500" Fps="30" MinimumOpacity="0.5"/></Sequence></OnUpdating>
                <OnUpdated><Sequence><FadeIn Duration="0.500"  Fps="30" MinimumOpacity="0.5" MaximumOpacity="1"/></Sequence></OnUpdated>
            </Animations>
        </asp:UpdatePanelAnimationExtender> --%>
        <asp:UpdateProgress runat="server" DisplayAfter="10" AssociatedUpdatePanelID="up1">
            <ProgressTemplate>
                <div style="text-align: center; left: 0; top: 0; right: 0; position: fixed; height: 55px;">
                    <div style="width: 200px; margin: 0 auto; text-align: center; background: yellow;
                        color: Black; font-size: 14pt;">
                        <img src="images/5-0.gif" />
                        <br />
                        Lütfen Bekleyiniz.</span>
                    </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
    </form>
</body>
</html>
