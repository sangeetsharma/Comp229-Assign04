<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Model.aspx.cs" Inherits="Comp229_Assign04.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-12 col-md-4">
        <asp:Image runat="server" ID="modelImg" Width="200px" />

    </div>

    <div class="col-xs-12 col-md-5">
        <table>
            <tr>
                <td>Name: </td>
                <td>
                    <asp:Label runat="server" ID="name"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Faction: </td>
                <td>
                    <asp:Label runat="server" ID="faction"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Rank :</td>
                <td>
                    <asp:Label runat="server" ID="rank"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Base :</td>
                <td>
                    <asp:Label runat="server" ID="_base"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Size :</td>
                <td>
                    <asp:Label runat="server" ID="size"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Deployment Zone :</td>
                <td>
                    <asp:Label runat="server" ID="deployment"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Traits: </td>
                <td>
                    <asp:Repeater runat="server" ID="traitsRepeater">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr>
                <td>Types: </td>
                <td>
                    <asp:Repeater runat="server" ID="defenceRepeater">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater>
                </td>
            </tr>
            <tr>
                <td>Mobility: </td>
                <td>
                    <asp:Label runat="server" ID="mobility"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Will Power: </td>
                <td>
                    <asp:Label runat="server" ID="willpower"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Resiliance: </td>
                <td>
                    <asp:Label runat="server" ID="resiliance"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Wounds: </td>
                <td>
                    <asp:Label runat="server" ID="wounds"></asp:Label>
                </td>
            </tr>
             <tr>
                <td>Special Abilities: </td>
                <td>
                    <table>
                        <asp:Repeater runat="server" ID="abilitiesRepeater">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Text="Name: " Font-Bold="true"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Text="Description: " Font-Bold="true"></asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "description") %>'></asp:Label>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>
            </tr>
            <tr>
                <td>Actions: </td>
                <td>
                    <table>
                        <asp:Repeater runat="server" ID="actionsRepeater">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true" Text="Name: "></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true" Text="Type: "></asp:Label>

                                    </td>
                                    <td>
                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "type") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true" Text="Rating"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "rating") %>'></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" Font-Bold="true" Text="Range"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "range") %>'></asp:Label>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </table>
                </td>
            </tr>
        </table>
        <asp:Button ID="update" runat="server" Text="Update" />
    </div>
    <div style="clear:both"></div>
</asp:Content>
