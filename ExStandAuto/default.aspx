<%@ Page Title="" Language="C#" MasterPageFile="~/StandAuto.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ExStandAuto._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="navbar-container">
        <nav class="navbar-expand-xl navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportContent">
                <ul class="navbar-nav">
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link" ID="TodasMarcas_LinkButton" runat="server" OnClick="TodasMarcas_Click">Todas as Marcas</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Avalon_LinkButton" runat="server" OnClick="Avalon_Click">Avalon</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="BMW_LinkButton" runat="server" OnClick="BMW_Click">BMW</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Chevy_LinkButton" runat="server" OnClick="Chevy_Click">Chevy</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Ford_LinkButton" runat="server" OnClick="Ford_Click">Ford</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Honda_LinkButton" runat="server" OnClick="Honda_Click">Honda</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Lexus_LinkButton" runat="server" OnClick="Lexus_Click">Lexus</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Mercedes_LinkButton" runat="server" OnClick="Mercedes_Click">Mercedes-Benz</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Nissan_LinkButton" runat="server" OnClick="Nissan_Click">Nissan</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Tesla_LinkButton" runat="server" OnClick="Tesla_Click">Tesla</asp:LinkButton>
                    </li>
                    <li class="nav-link">
                        <asp:LinkButton class="nav-link ml-2" ID="Toyota_LinkButton" runat="server" OnClick="Toyota_Click">Toyota</asp:LinkButton>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div id="main-container" class="mt-5 mb-5">
        <asp:DataList ID="DataList1" CssClass="ml-auto mr-auto" runat="server" DataKeyField="Id"
            DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="80%" Font-Bold="False" Font-Italic="False" Font-Names="Montserrat" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black">
            <ItemTemplate>
                <div class="col-lg-12">
                    <div class="row mt-2">
                        <asp:Label ID="MarcaLabel" runat="server" Text='<%# Eval("Marca") %>' />
                    </div>
                    <div class="row mt-2" style="width: 400px; height: 200px;">
                        <asp:Image ID="Image1" runat="server" CssClass="img-fluid" ImageUrl='<%# Eval("Imagem") %>' />
                    </div>
                    <div class="row mt-5">
                        <asp:Label ID="MatriculaLabel" runat="server" Text='<%# Eval("Matricula") %>' />
                    </div>
                    <div class="row mt-2 w-auto">
                        <asp:Label ID="CorLabel" runat="server" Text='<%# Eval("Cor") %>' />
                    </div>
                    <div class="row mt-2">
                        <asp:Label ID="PrecoLabel" runat="server" Text='<%# Eval("Preco") %>' /><asp:Label ID="Label1" CssClass="w-25" runat="server" Text="€" />
                    </div>
                    <div class="row mt-2">
                        <asp:Label ID="DescricaoLabel" runat="server" Text='<%# Eval("Descricao") %>' />
                    </div>
                </div>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StandAutoConnection %>" SelectCommand="SELECT * FROM [carros]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:StandAutoConnection %>" SelectCommand="SELECT * FROM [carros] WHERE ([Marca] = @Marca)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Marca" QueryStringField="marca" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
