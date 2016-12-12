<%@ Page Title="Beach Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BeachDetails.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/JavaScript.js"></script>
    <link href="Style/StyleSheet1.css" rel="stylesheet" />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        </asp:DataList>
    <div>
        <h2 id="beachName"></h2>
    </div>

    <div id="map" style="width: 300px; height: 300px; background-color: aquamarine;">
        
    </div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
