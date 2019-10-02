using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabWork6
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSwitchView_Click(object sender, EventArgs e)
        {
            MultiView.ActiveViewIndex = (MultiView.ActiveViewIndex + 1) % MultiView.Views.Count;
        }

        protected void ButtonFilterNone_Click(object sender, EventArgs e)
        {
            AdRotator.KeywordFilter = string.Empty;
        }

        protected void ButtonFilterJpg_Click(object sender, EventArgs e)
        {
            AdRotator.KeywordFilter = "jpg";
        }

        protected void ButtonFilterPng_Click(object sender, EventArgs e)
        {
            AdRotator.KeywordFilter = "png";
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