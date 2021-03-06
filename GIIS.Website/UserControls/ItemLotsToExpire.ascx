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
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ItemLotsToExpire.ascx.cs" Inherits="UserControls_ItemLotsToExpire" %>

<div class="panel">
    &nbsp;&nbsp;
    <asp:Label ID="lblCount" runat="server" Text ="Item Lots To Expire"></asp:Label>
    <br />
    <asp:Panel ID="pnlItemLots" runat="server"></asp:Panel>
</div>