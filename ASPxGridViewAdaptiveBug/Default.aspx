<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPxGridViewAdaptiveBug._Default" %>

<%@ Register Assembly="DevExpress.Web.v21.1, Version=21.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <dx:ASPxGridView ID="gv1" runat="server" AutoGenerateColumns="False" KeyFieldName="ActMtrlDtID" Width="100%" Font-Size="Small" SettingsBehavior-AllowFocusedRow="True" Settings-ShowStatusBar="Hidden">
            <Toolbars>
                <dx:GridViewToolbar SettingsAdaptivity-Enabled="True">
                    <Items>
                        <dx:GridViewToolbarItem Name="New" Text="Add Item" ItemStyle-CssClass="btn btn-primary" />
                        <dx:GridViewToolbarItem Name="Delete" Text="Delete Item" ItemStyle-CssClass="btn btn-primary" />
                    </Items>
                </dx:GridViewToolbar>
            </Toolbars>
            <SettingsAdaptivity AdaptivityMode="HideDataCells"></SettingsAdaptivity>
            <SettingsPager Mode="ShowAllRecords"></SettingsPager>
            <SettingsEditing Mode="Batch">
                <BatchEditSettings StartEditAction="Click"></BatchEditSettings>
            </SettingsEditing>
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" ShowDeleteButton="true"></dx:GridViewCommandColumn>
                <dx:GridViewDataColumn FieldName="col1"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="col2"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="col3"></dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="col4"></dx:GridViewDataColumn>
            </Columns>

            <Settings ShowFooter="True"></Settings>

            <SettingsDataSecurity AllowInsert="False" AllowDelete="True"></SettingsDataSecurity>
            <Styles>
                <Cell Border-BorderColor="LightGray" Border-BorderStyle="Solid" Border-BorderWidth="1"></Cell>
            </Styles>
            <TotalSummary>
                <dx:ASPxSummaryItem SummaryType="Sum" FieldName="CubicYards"></dx:ASPxSummaryItem>
            </TotalSummary>
        </dx:ASPxGridView>
    </div>
</asp:Content>
