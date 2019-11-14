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
                                <div class="row">
                                    <div class="col">
                                        <h3>
                                            <asp:Label ID="Label1" runat="server" Text="Wizard"></asp:Label>
                                        </h3>
                                    </div>
                                    <div class="col">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="⟳" OnClick="Button1_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <asp:Wizard ID="Wizard" runat="server" DisplayCancelButton="true" OnCancelButtonClick="Wizard_CancelButtonClick" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="300px" StepStyle-Height="100%" StepStyle-Width="100%" Width="100%">
                                    <HeaderStyle HorizontalAlign="Center" BackColor="#666666" BorderColor="#E6E2D8" BorderWidth="2px" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White"></HeaderStyle>
                                    <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderWidth="1px" BorderStyle="Solid" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55"></NavigationButtonStyle>
                                    <SideBarButtonStyle ForeColor="White"></SideBarButtonStyle>
                                    <SideBarStyle VerticalAlign="Top" BackColor="#1C5E55" Font-Size="0.9em"></SideBarStyle>
                                    <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderWidth="2px" BorderStyle="Solid"></StepStyle>
                                    <StepStyle></StepStyle>
                                    <WizardSteps>
                                        <asp:WizardStep ID="WizardStep1" runat="server" Title="Начало" AllowReturn="false">
                                            <div class="d-flex justify-content-center align-items-center text-center" style="height: 100%; background: no-repeat center/100% url('../Images/background.jpg')">
                                                <div class="align-self-center">
                                                    <h1 class="text-white">Опрос студентов</h1>
                                                </div>
                                            </div>
                                        </asp:WizardStep>
                                        <asp:WizardStep ID="WizardStep2" runat="server" Title="Шаг 1">
                                            <div class="form-group">
                                                <asp:Label ID="LabelName" runat="server" Text="Введите ваше Ф.И.О." AssociatedControlID="TextBoxName"></asp:Label>
                                                <asp:TextBox ID="TextBoxName" CssClass="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </asp:WizardStep>
                                        <asp:WizardStep ID="WizardStep3" runat="server" Title="Шаг 2">
                                            <div class="form-group">
                                                <asp:Label ID="LabelAdmissionDate" runat="server" Text="Укажите дату поступления" AssociatedControlID="CalendarAdmissionDate"></asp:Label>
                                                <asp:Calendar ID="CalendarAdmissionDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
                                                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt"></DayHeaderStyle>
                                                    <DayStyle BackColor="#CCCCCC"></DayStyle>
                                                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White"></NextPrevStyle>
                                                    <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
                                                    <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>
                                                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt"></TitleStyle>
                                                    <TodayDayStyle BackColor="#999999" ForeColor="White"></TodayDayStyle>
                                                </asp:Calendar>
                                            </div>
                                        </asp:WizardStep>
                                        <asp:WizardStep ID="WizardStep4" runat="server" Title="Шаг 3" ValidateRequestMode="Enabled">
                                            <div class="form-group">
                                                <asp:Label ID="LabelFaculty" runat="server" Text="Выберите ваш факультет" AssociatedControlID="ListBoxFaculty"></asp:Label>
                                                <asp:ListBox ID="ListBoxFaculty" CssClass="form-control" runat="server" ValidationGroup="faculty">
                                                    <asp:ListItem Selected="True" Value="" Text="Не выбран"></asp:ListItem>
                                                    <asp:ListItem Value="ИТ" Text="ИТ"></asp:ListItem>
                                                    <asp:ListItem Value="ТОВ" Text="ТОВ"></asp:ListItem>
                                                    <asp:ListItem Value="ХТиТ" Text="ХТиТ"></asp:ListItem>
                                                    <asp:ListItem Value="ИЭ" Text="ИЭ"></asp:ListItem>
                                                </asp:ListBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFaculty" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ListBoxFaculty">
                        <p class="text-danger">Не выбран факультет</p>
                                                </asp:RequiredFieldValidator>
                                            </div>
                                        </asp:WizardStep>
                                        <asp:WizardStep ID="WizardStep5" runat="server" Title="Шаг 4">
                                            <div class="form-group">
                                                <asp:Label ID="LabelEducation" runat="server" Text="Укажите вашу форму обучения" AssociatedControlID="RadioButtonListEducation"></asp:Label>
                                                <asp:RadioButtonList ID="RadioButtonListEducation" runat="server">
                                                    <asp:ListItem Selected="True">Бюджет</asp:ListItem>
                                                    <asp:ListItem>Платно</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                        </asp:WizardStep>
                                        <asp:WizardStep ID="WizardStep6" runat="server" Title="Шаг 5">
                                            <p>Подтвердите данные:</p>
                                            <ul>
                                                <li>Ф.И.О.: <%= TextBoxName.Text %></li>
                                                <li>Дата поступления: <%= CalendarAdmissionDate.SelectedDate.ToString("dd.MM.yyyy") %></li>
                                                <li>Факультет: <%= ListBoxFaculty.SelectedValue %></li>
                                                <li>Форма обучения: <%= RadioButtonListEducation.SelectedValue %></li>
                                            </ul>
                                        </asp:WizardStep>
                                        <asp:WizardStep ID="WizardStep7" runat="server" Title="Конец" StepType="Complete">
                                            <div class="d-flex justify-content-center align-items-center text-center" style="height: 100%; background: no-repeat center/100% url('../Images/background.jpg')">
                                                <div class="align-self-center">
                                                    <h1 class="text-white">Спасибо за участие в опросе :)</h1>
                                                </div>
                                            </div>
                                        </asp:WizardStep>
                                    </WizardSteps>
                                </asp:Wizard>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <div class="row">
                                    <div class="col">
                                        <h3>
                                            <asp:Label ID="Label2" runat="server" Text="TreeView"></asp:Label>
                                        </h3>
                                    </div>
                                    <div class="col">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="⟳" OnClick="Button2_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <asp:TreeView ID="TreeView" runat="server" ImageSet="Simple" OnSelectedNodeChanged="TreeView_SelectedNodeChanged">
                                    <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD"></HoverNodeStyle>
                                    <Nodes>
                                        <asp:TreeNode Text="Продукты" Value="Продукты">
                                            <asp:TreeNode Text="Овощи" Value="Овощи">
                                                <asp:TreeNode Text="Огурцы" Value="Огурцы"></asp:TreeNode>
                                                <asp:TreeNode Text="Помидоры" Value="Помидоры"></asp:TreeNode>
                                                <asp:TreeNode Text="Перец" Value="Перец">
                                                    <asp:TreeNode Text="Сладкий" Value="Сладкий" ShowCheckBox="true" Checked="true"></asp:TreeNode>
                                                    <asp:TreeNode Text="Острый" Value="Острый" ShowCheckBox="true"></asp:TreeNode>
                                                </asp:TreeNode>
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="Фрукты" Value="Фрукты" ImageUrl="~/Images/fruits.jpg">
                                                <asp:TreeNode Text="Яблоки" Value="Яблоки"></asp:TreeNode>
                                                <asp:TreeNode Text="Персики" Value="Персики"></asp:TreeNode>
                                                <asp:TreeNode Text="Манго" Value="Манго"></asp:TreeNode>
                                            </asp:TreeNode>
                                            <asp:TreeNode Text="Мясо" Value="Мясо">
                                                <asp:TreeNode Text="Курица" Value="Курица" ToolTip="Нет в наличии"></asp:TreeNode>
                                                <asp:TreeNode Text="Говядина" Value="Говядина"></asp:TreeNode>
                                                <asp:TreeNode Text="Свинина" Value="Свинина"></asp:TreeNode>
                                            </asp:TreeNode>
                                        </asp:TreeNode>
                                    </Nodes>
                                    <NodeStyle HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black"></NodeStyle>
                                    <ParentNodeStyle Font-Bold="False"></ParentNodeStyle>
                                    <SelectedNodeStyle HorizontalPadding="0px" VerticalPadding="0px" Font-Underline="True" ForeColor="#5555DD"></SelectedNodeStyle>
                                </asp:TreeView>
                                <asp:Label ID="LabelSelectedNode" runat="server" Text="Выберите продукт"></asp:Label>
                                <br />
                                <asp:Label ID="LabelPeppers" runat="server" Text="Выберите перцы"></asp:Label>
                            </asp:View>
                            <asp:View ID="View3" runat="server">
                                <div class="row">
                                    <div class="col">
                                        <h3>
                                            <asp:Label ID="Label3" runat="server" Text="Menu"></asp:Label>
                                        </h3>
                                    </div>
                                    <div class="col">
                                        <div class="input-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Button3" CssClass="btn btn-primary" runat="server" Text="⟳" OnClick="Button3_Click" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <asp:Menu ID="Menu" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" StaticSubMenuIndent="10px" StaticDisplayLevels="2" OnMenuItemClick="Menu_MenuItemClick">
                                    <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White"></DynamicHoverStyle>
                                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px"></DynamicMenuItemStyle>
                                    <DynamicMenuStyle BackColor="#F7F6F3"></DynamicMenuStyle>
                                    <DynamicSelectedStyle BackColor="#5D7B9D"></DynamicSelectedStyle>
                                    <Items>
                                        <asp:MenuItem Text="Животные" Value="Животные">
                                            <asp:MenuItem Text="Млекопитающие" Value="Млекопитающие">
                                                <asp:MenuItem Text="Приматы" Value="Приматы">
                                                    <asp:MenuItem Text="Люди" Value="Люди" ToolTip="Homo Sapiens и компания"></asp:MenuItem>
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
                                <asp:Label ID="LabelSelectedItem" runat="server" Text="Выберите кого-нибудь"></asp:Label>
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
                        <asp:AdRotator ID="AdRotator" runat="server" AdvertisementFile="~/ads.xml" Width="300px" Height="400px" />
                    </div>
                    <div class="card-footer">
                        <p>
                            Фильтр:
                            <asp:Label ID="LabelKeywordFilter" runat="server" Text=""></asp:Label>
                        </p>
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
