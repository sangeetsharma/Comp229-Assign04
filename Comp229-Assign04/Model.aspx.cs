using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class About : Page
    {
        private Model.Class1 model;
        protected void Page_Load(object sender, EventArgs e)
        {
            var name = Request.QueryString["name"];
            var faction = Request.QueryString["faction"];

            if (!name.Equals("") && !faction.Equals(""))
            {
                model = Global.dataModel.FirstOrDefault(tModel => tModel.name == name && tModel.faction == faction);

                prepareData();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        private void prepareData()
        {
            modelImg.ImageUrl = model.imageUrl;
            name.Text = model.name;
            faction.Text = model.faction;
            rank.Text = model.rank.ToString();
            _base.Text = model._base.ToString();
            size.Text = model.size.ToString();
            deployment.Text = model.deploymentZone;
            traitsRepeater.DataSource = model.traits;
            traitsRepeater.DataBind();
            defenceRepeater.DataSource = model.defenseChart;
            defenceRepeater.DataBind();
            mobility.Text = model.mobility.ToString();
            willpower.Text = model.willpower.ToString();
            resiliance.Text = model.resiliance.ToString();
            wounds.Text = model.wounds.ToString();


        }
    }

}
    
