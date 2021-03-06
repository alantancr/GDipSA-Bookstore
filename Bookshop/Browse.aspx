﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Bookstore.Master" AutoEventWireup="true" CodeBehind="Browse.aspx.cs" Inherits="Bookshop.Browse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Reference/css/Browse.css" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <h1>Browse</h1>
    </div>

    <div class="container container-search">
        <h3>Search For a book:</h3>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Value="0">All Category</asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" CssClass="btn btn-search" />
    </div>

    <div class="container container-search-results">
    <h3>Search Results</h3>
    <div style="margin-left: 40px">

            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#FF3300" Text="No Results Found"></asp:Label>

            <asp:GridView ID="GridView1" GridLines="None" runat="server" AutoGenerateColumns="False" Width="676px" CssClass="table table-dark" OnRowDataBound="GridView1_RowDataBound" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="10">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <image src="Reference/Images/<%# Eval("ISBN") %>.jpg" width="90" height="120"></image>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />        
                    <asp:BoundField DataField="Category.Name" HeaderText="Category" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" />
                    <asp:BoundField DataField="Price" HeaderText="Price" Dataformatstring="{0:c2}"/>
                    <asp:BoundField DataField="Stock" HeaderText="Qty" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CommandName="" OnClick="Button1_Click1" Text="Add to Cart" CssClass="btn btn-add-to-cart" />
                            <asp:HiddenField ID="HiddenFieldID" runat="server" Value='<%# Eval("BookID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="" Text="View Details" OnClick="Button2_Click" CssClass="btn btn-view-details" />
                        <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("ISBN") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    


                </Columns>
            </asp:GridView>
        
        </div>
    </div>
    </asp:Content>