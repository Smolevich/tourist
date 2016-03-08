<%@ Page Title="" Language="C#" MasterPageFile="~/Head.master" AutoEventWireup="false" CodeFile="Registration.aspx.cs" Inherits="Registration2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" Visible="false">
    <style type="text/css">
        .style8
        {
            width: 10px;
        }
        .style9
        {
            width: 10px;
            height: 20px;
        }
        .style10
        {
            height: 20px;
        }
        .style15
    {
        width: 170px;
        height: 27px;
    }
    .style16
    {
        width: 158px;
        height: 27px;
    }
    .style23
    {
        width: 10px;
        height: 27px;
    }
    .style24
    {
        height: 27px;
    }
    .style25
    {
        width: 10px;
        height: 30px;
    }
    .style26
    {
        width: 170px;
        height: 30px;
    }
    .style27
    {
        width: 158px;
        height: 30px;
    }
    .style28
    {
        height: 30px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" Visible="false">
    <table class="style1" runat="server" id ="reg" enableviewstate="False" visible="False">
        <tr>
            <td class="style9">
                </td>
            <td colspan="3" align="center" class="style10">
                <h3>Регистрация нового пользователя</h3></td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style15">
                <asp:Label ID="lblFIO" runat="server" Text="ФИО"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtFIO" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="rfvFIO" runat="server" ForeColor="Red" 
                    ErrorMessage="Введите ФИО" ControlToValidate="txtFIO" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style15">
                <asp:Label ID="lblAge" runat="server" Text="возраст"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtAge" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ForeColor="Red" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style15">
                <asp:Label ID="lblCountry" runat="server" Text="гражданство"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtCountry" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" 
                    ErrorMessage="Введите гражданство" ForeColor="Red"  ControlToValidate="txtCountry"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style15">
                <asp:Label ID="lblPhone" runat="server" Text="телефон"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtPhone" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                    ErrorMessage="Введите телефон" ForeColor="Red"  ControlToValidate="txtPhone"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style15">
                <asp:Label ID="lblEmail" runat="server" Text="e-mail"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtEmail" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Введите правильный адрес e-mail" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style15">
                <asp:Label ID="lblLogin" runat="server" Text="логин (мин. 3 символа)"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtLogin" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td class="style24">
                <asp:RequiredFieldValidator ID="rfvLogin" runat="server" 
                    ErrorMessage="RequiredFieldValidator" ControlToValidate="txtLogin"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                </td>
            <td class="style26">
                <asp:Label ID="lblPass" runat="server" Text="пароль"></asp:Label>
            </td>
            <td class="style27">
                <asp:TextBox ID="txtPass" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtConfirmPass" ControlToValidate="txtPass" 
                    ErrorMessage="Проверьте правильность ввода пароля" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style25">
                </td>
            <td class="style26">
                <asp:Label ID="lblConfirmPass" runat="server" Text="подтверждение пароля"></asp:Label>
            </td>
            <td class="style27">
                <asp:TextBox ID="txtConfirmPass" runat="server" Width="155px"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:CompareValidator ID="cvConfirmPass" runat="server" 
                    ErrorMessage="Забыли ввести пароль" ControlToCompare="txtPass" 
                    ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style23">
                </td>
            <td class="style24">
                <asp:Button ID="Button15" runat="server" Font-Size="Medium" Text="Готово" 
                    Width="78px" />
                <asp:Button ID="Button16" runat="server" Font-Size="Medium" Text="Сброс" 
                    Width="78px" />
            </td>
            <td class="style16">
                <asp:Label ID="Label12" runat="server" Width="150px"></asp:Label>
            </td>
            <td class="style24">
                </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

