using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabWork6
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AdRotator.KeywordFilter = LabelKeywordFilter.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = TextBox1.Text;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = TextBox2.Text;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Label3.Text = TextBox3.Text;
        }

        protected void ButtonFilterNone_Click(object sender, EventArgs e)
        {
            LabelKeywordFilter.Text = string.Empty;
            AdRotator.KeywordFilter = string.Empty;
        }
        protected void ButtonFilterJpg_Click(object sender, EventArgs e)
        {
            LabelKeywordFilter.Text = "jpg";
            AdRotator.KeywordFilter = "jpg";
        }
        protected void ButtonFilterPng_Click(object sender, EventArgs e)
        {
            LabelKeywordFilter.Text = "png";
            AdRotator.KeywordFilter = "png";
        }

        protected void ButtonSwitchView_Click(object sender, EventArgs e)
        {
            MultiView.ActiveViewIndex = (MultiView.ActiveViewIndex + 1) % MultiView.Views.Count;
        }

        protected void Wizard_CancelButtonClick(object sender, EventArgs e)
        {
            TextBoxName.Text = string.Empty;
            CalendarAdmissionDate.SelectedDate = DateTime.MinValue;
            ListBoxFaculty.SelectedIndex = 0;
            RadioButtonListEducation.SelectedIndex = 0;
        }

        protected void TreeView_SelectedNodeChanged(object sender, EventArgs e)
        {
            LabelSelectedNode.Text = $"Выбранный продукт: {TreeView.SelectedNode.Text.ToLower()}";

            var peppers = new List<string>();
            foreach (TreeNode node in TreeView.CheckedNodes)
                peppers.Add(node.Text.ToLower());
            LabelPeppers.Text = $"Перцы: {string.Join(", ", peppers)}";
        }

        protected void Menu_MenuItemClick(object sender, MenuEventArgs e)
        {
            LabelSelectedItem.Text = $"Выбранный элемент: {Menu.SelectedItem.Text.ToLower()}";
        }        
    }
}