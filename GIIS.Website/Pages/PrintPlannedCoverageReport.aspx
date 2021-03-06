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
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintPlannedCoverageReport.aspx.cs" Inherits="Pages_PrintPlannedCoverageReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Planned Coverage Report</title>
    <link type="text/css" rel="stylesheet" href="../css/controls_style.css" media="print" />

    <script type="text/javascript">
        window.print();
    </script>
</head>
<body onload="window.print()">
    <form id="form2" runat="server">
        <div style="overflow: auto; font-size: large;">
            <img id="banner" alt="banner" src="../img/logoiis.jpg" />
            <br />
            <br />
            <div id="Div1" style="text-align: center; font-size: larger; background-color: white">
                <h2>
                    <b><asp:Label ID="lblTitle" runat="server" Text="Planned Coverage Report"></asp:Label></b>
                </h2>
            </div>
            <br />
            <br />
            <table style="width: 100%">
                <tr>
                    <td>
                        <b><asp:Label ID="lbFromDate" runat="server" Text="From Date:"></asp:Label></b>
                        <u><asp:Label ID="lblFromDate" runat="server" Text=" "></asp:Label></u>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <b><asp:Label ID="lbToDate" runat="server" Text="To Date:"></asp:Label></b>
                        <u><asp:Label ID="lblToDate" runat="server" Text=" "></asp:Label></u>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><asp:Label ID="lbEndDate" runat="server" Text="End Date:"></asp:Label></b>
                        <u><asp:Label ID="lblEndDate" runat="server" Text=" "></asp:Label></u>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <b><asp:Label ID="lbVaccine" runat="server" Text="Vaccine:"></asp:Label></b>
                        <u><asp:Label ID="lblVaccine" runat="server" ></asp:Label></u>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <div class="table" style="overflow: auto; font-size: large;" >
                <asp:GridView ID="gvPlannedCoverage" runat="server"  CssClass="table table-striped table-bordered table-hover table-responsive" RowStyle-BackColor="White" 
                    OnDataBound="gvPlannedCoverage_DataBound">
                    <RowStyle CssClass="gridviewRow" />
                    <AlternatingRowStyle CssClass="gridviewRowAlt" />
                    <HeaderStyle CssClass="gridviewHeader" />
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>