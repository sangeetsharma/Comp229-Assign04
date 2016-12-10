<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Comp229_Assign04.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12 col-md-4">
        <asp:Image runat="server" ID="modelImg" Width="200px" />

    </div>

    <div class="col-xs-12 col-md-5">
        <table>
            <tr>
                <td>Name: </td>
                <td>
                    <asp:TextBox runat="server" ID="name"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Faction: </td>
                <td>
                    <asp:TextBox runat="server" ID="faction"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Rank :</td>
                <td>
                    <asp:TextBox runat="server" ID="rank"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Base :</td>
                <td>
                    <asp:TextBox runat="server" ID="_base"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Size :</td>
                <td>
                    <asp:TextBox runat="server" ID="size"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Deployment Zone :</td>
                <td>
                    <asp:TextBox runat="server" ID="deployment"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td>Mobility: </td>
                <td>
                    <asp:TextBox runat="server" ID="mobility"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Will Power: </td>
                <td>
                    <asp:TextBox runat="server" ID="willpower"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Resiliance: </td>
                <td>
                    <asp:TextBox runat="server" ID="resiliance"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Wounds: </td>
                <td>
                    <asp:TextBox runat="server" ID="wounds"></asp:TextBox>
                </td>
            </tr>
                         
        </table>
        <asp:Button ID="save" runat="server" Text="Save" OnClick="save_Click" />

        <asp:Label runat="server" ID="jsonLabel"></asp:Label>
    </div>
    <div style="clear:both"></div>
</asp:Content>
