﻿<%-- 
*******************************************************************************
  Copyright 2015 TIIS - Tanzania Immunization Information System

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
 ******************************************************************************
--%>
<%@ Page Title="Health Facility List For Population Data - IIS" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="HealthFacilityListForBalance.aspx.cs" Inherits="Pages_HealthFacilityListForBalance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12 clearfix">
            <ol class="breadcrumb">
                <li><a href="Default.aspx">Home</a></li>
                <li class="active">
                    <asp:Label ID="lblTitle" runat="server" Text="Health Facility List" /></li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-1 col-xs-1 col-sm-1 col-lg-1 clearfix"></div>
        <div class="col-md-1 col-xs-1 col-sm-1 col-lg-1 clearfix">
            <asp:Label ID="lblName" runat="server" Text="Name" />
        </div>
        <div class="col-md-3 col-xs-3 col-sm-3 col-lg-3 clearfix">
            <div class="form-group">
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
            </div>
        </div>
        <div class="col-md-1 col-xs-1 col-sm-1 col-lg-1 clearfix"></div>
        <div class="col-md-1 col-xs-1 col-sm-1 col-lg-1 clearfix">
            <asp:Label ID="lblCode" runat="server" Text="Code" />
        </div>
        <div class="col-md-3 col-xs-3 col-sm-3 col-lg-3 clearfix">
            <div class="form-group">
                <asp:TextBox ID="txtCode" runat="server" CssClass="form-control" />
            </div>
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-5 col-xs-5 col-sm-5 col-lg-5 clearfix">&nbsp;</div>
        <div class="col-md-2 col-xs-2 col-sm-2 col-lg-2 clearfix">
            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary btn-raised" OnClick="btnSearch_Click" />
        </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-4 col-xs-4 col-sm-4 col-lg-4 clearfix"></div>
        <div class="col-md-7 col-xs-7 col-sm-7 col-lg-7 clearfix">
            <asp:Label ID="lblWarning" runat="server" Text="There are no health facilities that match your search criteria!" CssClass="label label-warning" Font-Size="Small" Visible="false" />
        </div>
    </div>
  
    <br />
   <div class="row">
        <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12 clearfix" style="overflow:auto">
       <asp:GridView ID="gvHealthFacility" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover table-responsive" AllowPaging="True" OnDataBound="gvHealthFacility_DataBound" OnPageIndexChanging="gvHealthFacility_PageIndexChanging">
                <PagerSettings Position="Top" Mode="NumericFirstLast" />
                <PagerStyle CssClass="pagination" HorizontalAlign="Left" VerticalAlign="Top" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" Visible="False" />
                 <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"  />
                <asp:BoundField DataField="Code" HeaderText="Code" SortExpression="Code" Visible ="false" />
                <asp:TemplateField HeaderText="ParentId">
                    <ItemTemplate>
                        <%#Eval("Parent.Name")%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CheckBoxField DataField="TopLevel" HeaderText="TopLevel" SortExpression="TopLevel" />
                <asp:CheckBoxField DataField="Leaf" HeaderText="Leaf" SortExpression="Leaf" />
                <asp:CheckBoxField DataField="VaccinationPoint" HeaderText="VaccinationPoint" SortExpression="VaccinationPoint" />
                 <asp:TemplateField HeaderText="Population Data">
                    <ItemTemplate>
                        <a href='<%# Eval("Id", "HealthFacilityCohortData.aspx?hfId={0}") %>' target="_blank">
                            <img alt='View Balance' src="../img/DispatchLines.png" />
                        </a>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CheckBoxField DataField="IsActive" HeaderText="IsActive" SortExpression="IsActive" Visible ="false" />
                <asp:BoundField DataField="ModifiedOn" HeaderText="ModifiedOn" SortExpression="ModifiedOn" Visible="False" />
                <asp:BoundField DataField="ModifiedBy" HeaderText="ModifiedBy" SortExpression="ModifiedBy" Visible="False" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" Visible="false" />
                <asp:BoundField DataField="Population" HeaderText="Population" SortExpression="Population" Visible="false" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="odsHealthFacility" runat="server" EnablePaging="true" SelectMethod="GetPagedHealthFacilityList" TypeName="GIIS.DataLayer.HealthFacility" SelectCountMethod="GetCountHealthFacilityList">
            <SelectParameters>
                <asp:Parameter Name="name" Type="String" />
                 <asp:Parameter Name="code" Type="String" />
                 <asp:Parameter Name="hfid" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div></div>
    <br />
   
</asp:Content>


