using CalC.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalC
{
    public partial class _Default : Page
    {
        UserTable userInfo = new UserTable();
        DinnerTable dinner = new DinnerTable();
        LunchTablecs lunch = new LunchTablecs();
        BreakfastTablecs brkfast = new BreakfastTablecs();

        protected void Page_Load(object sender, EventArgs e)
        {

            var a = userInfo.GetUsers();
            var b = dinner.GetDinner();
            Label1.Text = b[0].food_id.ToString();
            Label2.Text = b[0].user_id.ToString();
            Label3.Text = b[0].serving.ToString();
            var c = lunch.Getlunch();
            Label4.Text = b[0].food_id.ToString();
            Label5.Text = b[0].user_id.ToString();
            Label6.Text = b[0].serving.ToString();
            var d = brkfast.GetBreakFast();
            Label7.Text = b[0].food_id.ToString();
            Label8.Text = b[0].user_id.ToString();
            Label9.Text = b[0].serving.ToString();
        }

        protected void save_Click(object sender, EventArgs e)   
        {
            string selectedValue = rblist1.SelectedValue;
            if (selectedValue == "1")
            {
                CalC.DataAccess.breakfast newBreakFast = new DataAccess.breakfast();
                newBreakFast.user_id = 1;
                newBreakFast.food_id = 1;
                newBreakFast.serving = "100";

                CalC.Business.BreakfastTablecs.BreakfastEkle(newBreakFast);
            }
            else if(selectedValue=="2")
            {
                CalC.DataAccess.lunch newlunch = new DataAccess.lunch();
                newlunch.user_id = 1;
                newlunch.food_id = 1;
                newlunch.serving = "100";

                CalC.Business.LunchTablecs.LunchEkle(newlunch);

            }   
            else if (selectedValue == "3")
            {
                CalC.DataAccess.dinner newDinnert = new DataAccess.dinner();
                newDinnert.user_id = 1;
                newDinnert.food_id = 1;
                newDinnert.serving = "100";

                CalC.Business.DinnerTable.DinnertEkle(newDinnert);
            }

        
        }
    }
}