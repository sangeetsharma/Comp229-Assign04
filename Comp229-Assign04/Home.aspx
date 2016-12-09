<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="margin-top:25px">

    <table>
        <asp:Repeater ID="modelRepeater" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# string.Format("~/Model.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>' >
                            <asp:Label runat="server" Text='<%# Eval("name")%>'>  </asp:Label>
                        </asp:HyperLink>
                    </td>
                    <td>

                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>

    </div>

</asp:Content>
