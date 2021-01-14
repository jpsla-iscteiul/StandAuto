<%@ Page Title="" Language="C#" MasterPageFile="~/StandAuto.Master" AutoEventWireup="true" CodeBehind="inserir.aspx.cs" Inherits="ExStandAuto.inserir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" CssClass="ml-auto mr-auto mt-5 mb-5" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" class="insert-form" AllowPaging="True">
        <EditItemTemplate>
            <div class="card border-white">
                <div class="card-header bg-white border-white">
                    <h4 class="text-center">Atualizar Carros</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-4">
                            Matrícula:
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="MatriculaTextBox" runat="server" Text='<%# Bind("Matricula") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Marca:
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="MarcaTextBox" runat="server" Text='<%# Bind("Marca") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Cor:
                        </div>
                        <div class="col-sm-6">

                            <asp:TextBox ID="CorTextBox" runat="server" Text='<%# Bind("Cor") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Preço:
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Imagem:
                        </div>
                        <div class="col-sm-6">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Descrição:
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' Width="100%" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row mb-5">
                <div class="col-sm-3">
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="btn btn-block btn-outline-dark btn-sm" />

                </div>
                <div class="col-sm-3">
                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-block btn-outline-dark btn-sm" />

                </div>
            </div>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="card border-white">
                <div class="card-header bg-white border-white">
                    <h4 class="text-center">Inserir Carros</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-4">
                            Matrícula:
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="MatriculaTextBox" runat="server" Text='<%# Bind("Matricula") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Marca:
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="MarcaTextBox" runat="server" Text='<%# Bind("Marca") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Cor:
                        </div>
                        <div class="col-sm-6">

                            <asp:TextBox ID="CorTextBox" runat="server" Text='<%# Bind("Cor") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Preço:
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Imagem:
                        </div>
                        <div class="col-sm-6">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-4">
                            Descrição:
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' Width="100%" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row mb-5">
                <div class="col-sm-3">
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" CssClass="btn btn-sm btn-block btn-outline-dark" />

                </div>
                <div class="col-sm-3">
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="btn btn-block btn-outline-dark btn-sm" />

                </div>
            </div>
        </InsertItemTemplate>
        <ItemTemplate>
            <div class="card">
                <div class="card-header bg-white border-white">
                    <h4 class="text-center">Carros</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-sm-2">
                            Matricula:
                        </div>
                        <div class="col-sm-6">
                            <asp:Label ID="MatriculaTextBox" runat="server" Text='<%# Bind("Matricula") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-2">
                            Marca:
                        </div>
                        <div class="col-sm-6">
                            <asp:Label ID="MarcaTextBox" runat="server" Text='<%# Bind("Marca") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-2">
                            Cor:
                        </div>
                        <div class="col-sm-6">
                            <asp:Label ID="CorTextBox" runat="server" Text='<%# Bind("Cor") %>' />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-2">
                            Preço:
                        </div>
                        <div class="col-sm-6">
                            <asp:Label ID="PrecoTextBox" runat="server" Text='<%# Bind("Preco") %>' /><asp:Label ID="Label1" CssClass="w-25" runat="server" Text="€" />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-2">
                            Imagem:
                        </div>
                        <div class="col-sm-6">
                            <asp:Image ID="Image1" CssClass="img-fluid" ImageUrl='<%# Eval("Imagem") %>' runat="server" />
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-sm-2">
                            Descrição:
                        </div>
                        <div class="col-sm-8">
                            <asp:Label ID="DescricaoTextBox" runat="server" Text='<%# Bind("Descricao") %>' />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row mb-5">
                <div class="col-sm-2">
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="btn btn-sm btn-block btn-outline-dark " />
                </div>
                <div class="col-sm-2">
                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="btn btn-sm btn-block btn-outline-dark" />
                </div>
                <div class="col-sm-2">
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="btn btn-sm btn-block btn-outline-dark" />
                </div>
            </div>
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:StandAutoConnection %>" DeleteCommand="DELETE FROM [carros] WHERE [Id] = @Id" InsertCommand="INSERT INTO [carros] ([Matricula], [Marca], [Cor], [Preco], [Imagem], [Descricao]) VALUES (@Matricula, @Marca, @Cor, @Preco, '~/imagens/' + @Imagem, @Descricao)" SelectCommand="SELECT * FROM [carros]" UpdateCommand="UPDATE [carros] SET [Matricula] = @Matricula, [Marca] = @Marca, [Cor] = @Cor, [Preco] = @Preco, [Imagem] = '~/imagens/' + @Imagem, [Descricao] = @Descricao WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Matricula" Type="String" />
            <asp:Parameter Name="Marca" Type="String" />
            <asp:Parameter Name="Cor" Type="String" />
            <asp:Parameter Name="Preco" Type="String" />
            <asp:ControlParameter Name="Imagem" Type="String" ControlID="FormView1$FileUpload1" PropertyName="Filename" />
            <asp:Parameter Name="Descricao" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Matricula" Type="String" />
            <asp:Parameter Name="Marca" Type="String" />
            <asp:Parameter Name="Cor" Type="String" />
            <asp:Parameter Name="Preco" Type="String" />
            <asp:ControlParameter Name="Imagem" Type="String" ControlID="FormView1$FileUpload1" PropertyName="Filename" />
            <asp:Parameter Name="Descricao" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
