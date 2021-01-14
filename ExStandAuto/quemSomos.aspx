<%@ Page Title="" Language="C#" MasterPageFile="~/StandAuto.Master" AutoEventWireup="true" CodeBehind="quemSomos.aspx.cs" Inherits="ExStandAuto.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <h3 class="text-center">Um stand especializado em viaturas de alto segmento</h3>
    <div id="quemSomos-carousel" class="carousel slide" data-ride="false">

        <div class="carousel-inner">

            <div class="carousel-item active container-fluid">
                <div class="text-center">
                    <asp:Image CssClass="w-50 h-50"  ID="Image1" ImageUrl="~/imagens/avalon1.jpg" runat="server" alt="car-picture" />
                </div>
            </div>

            <div class="carousel-item container-fluid">
                <div class="text-center">
                    <asp:Image class="w-50 h-50" ID="Image2" ImageUrl="~/imagens/toyota1.jpg" runat="server" alt="car-picture" />
                </div>
            </div>
            <div class="carousel-item container-fluid">
                <div class="text-center">
                    <asp:Image class="w-50 h-50" ID="Image3" ImageUrl="~/imagens/ford2.jpg" runat="server" alt="car-picture" />
                </div>
            </div>
            <div class="carousel-item container-fluid">
                <div class="text-center">
                    <asp:Image class="w-50 h-50" ID="Image4" ImageUrl="~/imagens/bmw1.jpg" runat="server" alt="car-picture" />
                </div>
            </div>
            <div class="carousel-item container-fluid">
                <div class="text-center">
                    <asp:Image class="w-50 h-50" ID="Image5" ImageUrl="~/imagens/chev1.jpg" runat="server" alt="car-picture" />
                </div>
            </div>
            <div class="carousel-item container-fluid">
                <div class="text-center">
                    <asp:Image class="w-50 h-50" ID="Image6" ImageUrl="~/imagens/honda1.jpg" runat="server" alt="car-picture" />
                </div>
            </div>
            <div class="carousel-item container-fluid">
                <div class="text-center">
                    <asp:Image class="w-50 h-50" ID="Image7" ImageUrl="~/imagens/mbenz1.jpg" runat="server" alt="car-picture" />
                </div>
            </div>
        </div>

        <a class="carousel-control-prev bg-light" href="#quemSomos-carousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next bg-light" href="#quemSomos-carousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
