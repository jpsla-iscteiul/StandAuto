<%@ Page Title="" Language="C#" MasterPageFile="~/StandAuto.Master" AutoEventWireup="true" CodeBehind="financiamento.aspx.cs" Inherits="ExStandAuto.financiamento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card ml-auto mr-auto mt-5 mb-5 w-50">
        <div class="card-header bg-white border-dark ml-auto mr-auto">
            <h4 class="text-center">Cálculo de Financiamento</h4>
        </div>
        <h5 class="text-center mt-2 ml-auto mr-auto ">Todos os Empréstimos têm até 5 anos</h5>
        <div class="card-body ml-auto mr-auto">
            <div class="row mt-2">
                <div class="col-sm-3">
                    Valor:
                </div>
                <div class="col-sm-6">
                    <asp:TextBox ID="Txt_Valor" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-sm-3">
                    Juros:
                </div>
                <div class="col-sm-8">
                    <asp:TextBox ID="Txt_Juros" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-6">
                    <asp:Button ID="Btn_Calcular" CssClass="btn btn-block btn-sm btn-dark" runat="server" Text="Calcular" OnClick="Btn_Calcular_Click" />
                </div>
            </div>
        </div>
    </div>
    <div class="card ml-auto mr-auto mt-5 mb-5 w-50">
        <div class="card-header bg-white border-white ml-auto mr-auto">
            <h4 class="text-center">
                <asp:Label ID="Lbl_Dados" runat="server" Text="Dados do Empréstimo" Visible="false"></asp:Label>

            </h4>
        </div>
        <div class="card-body ml-auto mr-auto mb-5">
            <div class="row">
                <div class="col">
                    <asp:Label ID="Lbl_Valor" runat="server" Text="***" Visible="false"></asp:Label>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col">
                    <asp:Label ID="Lbl_Juros" runat="server" Text="***" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
