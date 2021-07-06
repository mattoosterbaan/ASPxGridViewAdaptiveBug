using System;
using System.Data;
using System.Web.UI;

namespace ASPxGridViewAdaptiveBug
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //toggle enabled to true and the grid behaves as expected.
            gv1.Enabled = false;

            gv1.KeyFieldName = "col1";
            gv1.DataSource = GetTable();
            gv1.DataBind();
        }

        static DataTable GetTable()
        {
            DataTable table = new DataTable();
            table.Columns.Add("col1", typeof(int));
            table.Columns.Add("col2", typeof(string));
            table.Columns.Add("col3", typeof(string));
            table.Columns.Add("col4", typeof(string));

            table.Rows.Add(1, "sadl;fkjasdkl;fjkls;adjfkl;sjdafl;kjasdkl;fjasd", "sadl;fkjasdkl;fjkls;adjfkl;sjdafl;kjasdkl;fjasd", "sadl;fkjasdkl;fjkls;adjfkl;sjdafl;kjasdkl;fjasd");
            return table;
        }
    }
}