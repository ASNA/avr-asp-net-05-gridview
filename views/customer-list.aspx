﻿<%@ Page Language="AVR" MasterPageFile="~/MasterPageNav.master" AutoEventWireup="false" CodeFile="customer-list.aspx.vr" Inherits="views_customer_list" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
<div class="right-content">
        <div class="gutter g"></div>
        <div class="center-gutter">
            <div class="subheading mt-3 b">
                <h2>Customer Form</h2>
            </div>
            <div class="subnav r">
                <div class="controls">
                    <asp:Button ID="buttonNext" runat="server" Text="Next" />
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="buttonPositionTo">
                        <asp:Button cssClass="ms-3" ID="buttonPositionTo" runat="server" Text="Position to"/>
                        <asp:TextBox ID="textboxPositionTo" runat="server" placeholder="Position to value"></asp:TextBox>
                    </asp:Panel> 
                </div>
                <!-- gridview start -->
                <asp:GridView ID="gridviewCust" runat="server" AutoGenerateColumns="False" CssClass="gridview zebra-stripe customerlist" DataKeyNames="customer_cmname,customer_cmcustno">
                    <Columns>
                        <asp:BoundField DataField="Customer_CMCustNo" HeaderText="Number" DataFormatString="{0:00000}" HtmlEncode="False">
                        <ItemStyle CssClass="col-number" />
                        </asp:BoundField>

                        <asp:BoundField DataField="customer_cmname" HeaderText="Name" >                
                        <ItemStyle CssClass="col-name" />
                        </asp:BoundField>

                        <%--<asp:ButtonField CommandName="ActionEdit" Text="Edit" >--%>
                        <asp:ButtonField CommandName="ActionEdit" Text='<i class="fas fa-edit"></i>' >
                        <ItemStyle CssClass="col-text-button" />
                        </asp:ButtonField>



                        <%--<asp:ButtonField CommandName="ActionDelete" Text="Delete" >--%>
                        <asp:ButtonField CommandName="ActionDelete" Text='<i class="fas fa-trash"></i>' >
                        <ItemStyle CssClass="col-text-button" />
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>
                <!-- gridview end -->
                <div class="table-footer">
                    <asp:Label ID="labelTableFooter" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div>
                <asp:Label ID="labelResponseTimes" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="gutter g"></div>
    </div>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
</asp:Content>

