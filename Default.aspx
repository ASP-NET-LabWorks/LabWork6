<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabWork6._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron">
    <h1>Полнофункциональные элементы управления</h1>
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    <h2>MultiView</h2>
                </div>
                <div class="card-body">
                    <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <h3>Wizard</h3>
                            <asp:Wizard ID="Wizard" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
                                <HeaderStyle HorizontalAlign="Left" BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White"></HeaderStyle>

                                <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775"></NavigationButtonStyle>

                                <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White"></SideBarButtonStyle>

                                <SideBarStyle VerticalAlign="Top" BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em"></SideBarStyle>

                                <StepStyle BorderWidth="0px" ForeColor="#5D7B9D"></StepStyle>
                                <WizardSteps>
                                    <asp:WizardStep ID="WizardStep1" runat="server" Title="Шаг 1"></asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Шаг 2"></asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Шаг 3"></asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep4" runat="server" Title="Шаг 4"></asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep5" runat="server" Title="Шаг 5"></asp:WizardStep>
                                </WizardSteps>
                            </asp:Wizard>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <h3>TreeView</h3>
                            <asp:TreeView ID="TreeView" runat="server" ImageSet="Simple">
                                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD"></HoverNodeStyle>

                                <Nodes>
                                    <asp:TreeNode Text="Продукты" Value="Продукты">
                                        <asp:TreeNode Text="Овощи" Value="Овощи">
                                            <asp:TreeNode Text="Огурцы" Value="Огурцы"></asp:TreeNode>
                                            <asp:TreeNode Text="Помидоры" Value="Помидоры"></asp:TreeNode>
                                            <asp:TreeNode Text="Перец" Value="Перец">
                                                <asp:TreeNode Text="Сладкий" Value="Сладкий"></asp:TreeNode>
                                                <asp:TreeNode Text="Острый" Value="Острый"></asp:TreeNode>
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="Фрукты" Value="Фрукты">
                                            <asp:TreeNode Text="Яблоки" Value="Яблоки"></asp:TreeNode>
                                            <asp:TreeNode Text="Персики" Value="Персики"></asp:TreeNode>
                                            <asp:TreeNode Text="Манго" Value="Манго"></asp:TreeNode>
                                        </asp:TreeNode>
                                        <asp:TreeNode Text="Мясо" Value="Мясо">
                                            <asp:TreeNode Text="Курица" Value="Курица"></asp:TreeNode>
                                            <asp:TreeNode Text="Говядина" Value="Говядина"></asp:TreeNode>
                                            <asp:TreeNode Text="Свинина" Value="Свинина"></asp:TreeNode>
                                        </asp:TreeNode>
                                    </asp:TreeNode>
                                </Nodes>

                                <NodeStyle HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black"></NodeStyle>

                                <ParentNodeStyle Font-Bold="False"></ParentNodeStyle>

                                <SelectedNodeStyle HorizontalPadding="0px" VerticalPadding="0px" Font-Underline="True" ForeColor="#5555DD"></SelectedNodeStyle>
                            </asp:TreeView>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <h3>Menu</h3>
                            <asp:Menu ID="Menu" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px">

                                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White"></DynamicHoverStyle>

                                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px"></DynamicMenuItemStyle>

                                <DynamicMenuStyle BackColor="#F7F6F3"></DynamicMenuStyle>

                                <DynamicSelectedStyle BackColor="#5D7B9D"></DynamicSelectedStyle>

                                <Items>
                                    <asp:MenuItem Text="Животные" Value="Животные">
                                        <asp:MenuItem Text="Млекопитающие" Value="Млекопитающие">
                                            <asp:MenuItem Text="Приматы" Value="Приматы">
                                                <asp:MenuItem Text="Люди" Value="Люди"></asp:MenuItem>
                                            </asp:MenuItem>
                                            <asp:MenuItem Text="Хищные" Value="Хищные">
                                                <asp:MenuItem Text="Кошки" Value="Кошки"></asp:MenuItem>
                                                <asp:MenuItem Text="Собаки" Value="Собаки"></asp:MenuItem>
                                            </asp:MenuItem>
                                            <asp:MenuItem Text="Грызуны" Value="Грызуны">
                                                <asp:MenuItem Text="Крысы" Value="Крысы"></asp:MenuItem>
                                            </asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="Пресмыкающиеся" Value="Пресмыкающиеся">
                                            <asp:MenuItem Text="Крокодилы" Value="Крокодилы"></asp:MenuItem>
                                            <asp:MenuItem Text="Черепахи" Value="Черепахи"></asp:MenuItem>
                                        </asp:MenuItem>
                                        <asp:MenuItem Text="Земноводные" Value="Земноводные">
                                            <asp:MenuItem Text="Лягушки" Value="Лягушки"></asp:MenuItem>
                                            <asp:MenuItem Text="Саламандры" Value="Саламандры"></asp:MenuItem>
                                            <asp:MenuItem Text="Тритоны" Value="Тритоны"></asp:MenuItem>
                                        </asp:MenuItem>
                                    </asp:MenuItem>
                                </Items>

                                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White"></StaticHoverStyle>

                                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px"></StaticMenuItemStyle>

                                <StaticSelectedStyle BackColor="#5D7B9D"></StaticSelectedStyle>
                            </asp:Menu>
                        </asp:View>
                    </asp:MultiView>
                </div>
                <div class="card-footer">
                    <asp:Button ID="ButtonSwitchView" runat="server" Text="Далее" OnClick="ButtonSwitchView_Click" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-header">
                    <h2>AdRotator</h2>
                </div>
                <div class="card-body">
                    <asp:AdRotator ID="AdRotator" runat="server" AdvertisementFile="~/ads.xml" />
                </div>
                <div class="card-footer">
                    <div class="btn-group">
                        <asp:Button ID="ButtonFilterNone" runat="server" Text="Все" OnClick="ButtonFilterNone_Click" CssClass="btn btn-primary" />
                        <asp:Button ID="ButtonFilterJpg" runat="server" Text="Только jpg" OnClick="ButtonFilterJpg_Click" CssClass="btn btn-primary" />
                        <asp:Button ID="ButtonFilterPng" runat="server" Text="Только png" OnClick="ButtonFilterPng_Click" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</asp:Content>
