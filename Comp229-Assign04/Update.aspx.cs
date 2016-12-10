using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class Contact : Page
    {

        private Model.Class1 model;
        protected void Page_Load(object sender, EventArgs e)
        {

            var name = Request.QueryString["name"];
            var faction = Request.QueryString["faction"];
            model = Global.dataModel.FirstOrDefault(tModel => tModel.name == name && tModel.faction == faction);

            if (!IsPostBack)
            {
                

                if (!name.Equals("") && !faction.Equals(""))
                {
                    

                    prepareData();
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
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
            mobility.Text = model.mobility.ToString();
            willpower.Text = model.willpower.ToString();
            resiliance.Text = model.resiliance.ToString();
            wounds.Text = model.wounds.ToString();
        }

        protected void save_Click(object sender, EventArgs e)
        {

            Model.Class1 newModel = new Model.Class1();
            newModel = model;

            string nameVal = name.Text;
            string factionVal = faction.Text;
            int rankVal = Convert.ToInt32(rank.Text);
            int baseVal = Convert.ToInt32(_base.Text);
            int sizeVal = Convert.ToInt32(size.Text);
            string deploymentVal = deployment.Text;
            int mobilityVal = Convert.ToInt32(mobility.Text);
            int willpowerVal = Convert.ToInt32(willpower.Text);
            int resilianceVal = Convert.ToInt32(resiliance.Text);
            int woundsVal = Convert.ToInt32(wounds.Text);

            if (!nameVal.Equals(""))
            {
                newModel.name = nameVal;
            }
            if (!factionVal.Equals(""))
            {
                newModel.faction = factionVal;
            }
            if (!rankVal.Equals(""))
            {
                newModel.rank = rankVal;
            }
            if (!baseVal.Equals(""))
            {
                newModel._base = baseVal;
            }
            if (!sizeVal.Equals(""))
            {
                newModel.size = sizeVal;
            }
            if (!deploymentVal.Equals(""))
            {
                newModel.deploymentZone = deploymentVal;
            }
            if (!mobilityVal.Equals(""))
            {
                newModel.mobility = mobilityVal;
            }
            if (!willpowerVal.Equals(""))
            {
                newModel.willpower = willpowerVal;
            }
            if (!resilianceVal.Equals(""))
            {
                newModel.resiliance = resilianceVal;
            }
            if (!woundsVal.Equals(""))
            {
                newModel.wounds = woundsVal;
            }

           
            using (StreamWriter streamWriter = File.CreateText(Server.MapPath("~/Models/JSON/NewJSON.json")))
            {
                streamWriter.WriteLine(JsonConvert.SerializeObject(newModel));
            }




           
        }
    }
}