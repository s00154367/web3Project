<%@ Page Title="Beach Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BeachDetails.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/JavaScript.js"></script>
    <link href="Style/StyleSheet1.css" rel="stylesheet" />
    <div>
        <h2 id="beachName"></h2>
    </div>
    <div class="row">

        <div id="details" class="col-md-3">
            <h1 id="Name" class="jumbotron">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="LocationId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                    <AlternatingRowStyle BackColor="White" />
                    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
                        <asp:CheckBoxField DataField="Favourite" HeaderText="Favourite" SortExpression="Favourite" />
                    </Fields>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                </asp:DetailsView>
            </h1>
            <h3 id="County"></h3> 
                       
        </div>

        <div id="details1" class="col-md-3"></div>
        <div id="map" class="col-md-3" style="width: 300px; height: 300px;"></div>
        
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Name], [County], [Favourite], [LocationId] FROM [Locations] WHERE ([LocationId] = @LocationId)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="LocationId" QueryStringField="BeachID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
