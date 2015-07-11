<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeBehind="Default.aspx.cs" Inherits="WebSiteCandidatosInfo._Default" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="SidePanelContent" ContentPlaceHolderID="SidePanelPlaceHolder" Runat="Server">
<%-- DXCOMMENT: Configure ASPxNavBar --%>
<dx:ASPxNavBar ID="SidePanelNavBar" runat="server" ClientInstanceName="SidePanelNavBar" AllowSelectItem="True" OnItemClick="SidePanelNavBar_ItemClick" Theme="SoftOrange" Width="232px">
    <Groups>
        <dx:NavBarGroup Text="Group1">
            <Items>
                <dx:NavBarItem Text="Item1"></dx:NavBarItem>
                <dx:NavBarItem Text="Item2"></dx:NavBarItem>
                <dx:NavBarItem Text="Item3"></dx:NavBarItem>
                <dx:NavBarItem Text="Item4"></dx:NavBarItem>
                <dx:NavBarItem Text="Item5"></dx:NavBarItem>
                <dx:NavBarItem Text="Item6"></dx:NavBarItem>
            </Items>
        </dx:NavBarGroup>
        <dx:NavBarGroup Text="Group2">
            <Items>
                <dx:NavBarItem Text="Item1"></dx:NavBarItem>
                <dx:NavBarItem Text="Item2"></dx:NavBarItem>
                <dx:NavBarItem Text="Item3"></dx:NavBarItem>
                <dx:NavBarItem Text="Item4"></dx:NavBarItem>
                <dx:NavBarItem Text="Item5"></dx:NavBarItem>
                <dx:NavBarItem Text="Item6"></dx:NavBarItem>
            </Items>
        </dx:NavBarGroup>
    </Groups>
</dx:ASPxNavBar>    
</asp:Content>

<asp:Content ID="ClientArea" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
<%-- DXCOMMENT: Configure ASPxGridView --%>
<dx:ASPxGridView ID="ClientAreaGridView" runat="server" AutoGenerateColumns="False" DataSourceID="Data" KeyFieldName="ID" ClientInstanceName="ClientAreaGridView" CssClass="grid">
  <%-- DXCOMMENT: Configure the grid's columns in accordance with data source fields --%>
  <Columns>
    <dx:GridViewDataTextColumn FieldName="Address"></dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn FieldName="Beds" Width="100"></dx:GridViewDataTextColumn>
    <dx:GridViewDataTextColumn FieldName="Baths" Width="100"></dx:GridViewDataTextColumn>
  </Columns>
  <Templates>
    <PreviewRow>
      <div class="TableViewPreviewRow">
        <span style="font-weight:bold">Features: </span>
        <%# Eval("Features") %><br />
      </div>
    </PreviewRow>
  </Templates>
  <Settings ShowVerticalScrollBar="false" ShowPreview="true"/>
  <SettingsPager PageSize="5"></SettingsPager>
</dx:ASPxGridView>

<%-- DXCOMMENT: Configure a data source for ASPxGridView --%>
<asp:XmlDataSource ID="Data" runat="server" DataFile="~/App_Data/Data.xml" XPath="//dsHomes/Homes"></asp:XmlDataSource>    
</asp:Content>