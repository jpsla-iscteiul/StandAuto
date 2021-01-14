<%@ Page Title="" Language="C#" MasterPageFile="~/StandAuto.Master" AutoEventWireup="true" CodeBehind="contactos.aspx.cs" Inherits="ExStandAuto.Contactos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="contact-container" class="mt-5 mb-5">
        <div class="row h-auto justify-content-center">
            <div class="col-lg-4">
                <div class="card-header bg-white border-dark">
                    <h4>Formulário de Contacto</h4>
                </div>
                <div class="card-body">
                    <div class="row w-auto">
                        <div class="col-sm-4">
                            <asp:Label ID="Lbl_Name" runat="server">O seu nome:</asp:Label>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="Txt_Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="Txt_Name" ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row w-auto mt-2">
                        <div class="col-sm-4">
                            <asp:Label ID="Lbl_Local" runat="server">O seu local:</asp:Label>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="Txt_Local" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="Txt_Local" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row w-auto mt-2">
                        <div class="col-sm-4">
                            <asp:Label ID="Lbl_Telemovel" runat="server">Telmóvel:</asp:Label>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="Txt_Telemovel" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="Txt_Telemovel" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row w-auto mt-2">
                        <div class="col-sm-4">
                            <asp:Label ID="Lbl_Email" runat="server">Email:</asp:Label>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="Txt_Email" runat="server" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="Txt_Email" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ValidationGroup="save" Visible="true"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ControlToValidate="Txt_Email"
                                ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator"
                                SetFocusOnError="true" Text="Examplo: nome@dominio.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="Dynamic" ValidationGroup="save"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row w-auto mt-2">
                        <div class="col-sm-4">
                            <asp:Label ID="Lbl_Info" runat="server">Info:</asp:Label>
                        </div>
                        <div class="col-sm-8">
                            <asp:TextBox ID="Txt_Info" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ControlToValidate="Txt_Info" ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ValidationGroup="save"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row w-auto mt-2">
                        <div class="col-sm-3">
                            <asp:Button CssClass="btn-dark btn-sm" ID="Btn_Send" runat="server" Text="Enviar" OnClick="Btn_Send_Click" />
                        </div>
                        <div class="col-sm-8">
                            <asp:Label ID="Lbl_status" runat="server" Visible="True"></asp:Label>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-lg-4">
                <div class="card-header bg-white border-dark">
                    <h4>Localização</h4>
                </div>
                <div class="card-body">
                    <div>
                        <p>
                            Rua Latino Coelho 10, 2704-503<br />
                            +351 21 580 23 20<br />
                        </p>

                    </div>
                    <div>
                        <div id="map" style="width: 600px; height: 300px;"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
