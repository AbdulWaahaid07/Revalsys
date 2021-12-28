using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RevalEMPRegLibrary.Models;
using RevalEMPRegLibrary.BusinessLogic;
using System.Data.SqlClient;
using System.Data;
using RevalsysEmployeeRegistration.RevException;

namespace RevalsysEmployeeRegistration
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        EmpProcessor emppro = new EmpProcessor();

        ////////////////////////////////////////////////////////////////////////////////
        
        private void Clear() 
        {
            id.Text = "";
            name.Text = "";
            designation.Text = "";
            salary.Text = "";
            email.Text = "";
            mobile.Text = "";
            qualification.Text = "";
            manager.Text = "";
        }

        private void loaddata() 
        {
            var emplist = emppro.readEmployee();
            if (emplist != null) 
            {
                emplistgrid.DataSource = emplist;
                emplistgrid.DataBind();
            }
        }
        
        
        ////////////////////////////////////////////////////////////////////////////////

        /// <summary>
        /// 
        /// CREATE & UPDATE
        /// Click event to add as well as updated a Profile to the Database
        /// Takes in an ID to determine either to add or update
        /// Profile ID are auto generated and a new member will not posses an ID and can be INSERTED/CREATED
        /// while someone already exsisting does have one and their details can be UPDATED
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        /// 

        protected void addbtn_Click(object sender, EventArgs e)
        {
            try 
            {

                Employee emp = new Employee();

                emp.Employee_Name = name.Text.Trim();
                emp.Employee_Designation = designation.Text.Trim();
                emp.Employee_Salary = Convert.ToDouble(salary.Text.Trim());
                emp.Employee_Email = email.Text.Trim();
                emp.Employee_Mobile = Convert.ToInt64(mobile.Text.Trim());
                emp.Employee_Qualification = qualification.Text.Trim();
                emp.Manager = manager.Text.Trim();

                if (id.Text == null || id.Text == "") 
                {
                    emppro.addEmployee(emp);
                    msg.Text = "Successfully Registered an Employee";
                }
                else 
                {
                    emp.Employee_Id = Convert.ToInt32(id.Text.Trim());
                    emppro.updateEmployee(emp);
                    addbtn.Text = "ADD";
                    msg.Text = "Successfully Edited the Employee Profile";

                }

                Clear();
                loaddata();

                throw new Exception();
            }

            catch (Exception ex) 
            {
                Exceptionr exp = new Exceptionr();
                exp.OccuringException = ex.Message;
                exp.Stackerror = ex.StackTrace;
                Response.Redirect("~/About.aspx");
            }
        }
       


        /// <summary>
        /// Clears all the text boxes by the predifined clear method above
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void rstbtn_Click(object sender, EventArgs e)
        {
            Clear();
        }



        /// <summary>
        /// DELETE
        /// Takes in an ID to erase the record from the Database
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        
        protected void dltbtn_Click(object sender, EventArgs e)
        {
            try 
            {
                var emp = new Employee();
                emp.Employee_Id = Convert.ToInt32(id.Text.Trim());

                emppro.deleteEmployee(emp);
                addbtn.Text = "ADD";
                Clear();
                loaddata();
                msg.Text = "The Profile was Deleted";
            }
            catch (Exception ex)
            {
                Exceptionr exp = new Exceptionr();
                exp.OccuringException = ex.Message;
                exp.Stackerror = ex.StackTrace;
                Response.Redirect("~/About.aspx");
            }
        }
        

        ////////////////////////////////////////////////////////////////////////////////
        
        /// <summary>
        /// Populates the Text boxes to EDIT or DELETE
        /// 
        /// This is done in order to apply validation from the textboxes and also display validation error messages
        /// which is not possible in a GRIDVIEW or any Table type object
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        
        protected void emplistgrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try {

                id.Text = emplistgrid.SelectedRow.Cells[1].Text.Trim();
                name.Text = emplistgrid.SelectedRow.Cells[2].Text.Trim();
                designation.Text = emplistgrid.SelectedRow.Cells[3].Text.Trim();
                salary.Text = emplistgrid.SelectedRow.Cells[4].Text.Trim();
                email.Text = emplistgrid.SelectedRow.Cells[5].Text.Trim();
                mobile.Text = emplistgrid.SelectedRow.Cells[6].Text.Trim();
                qualification.Text = emplistgrid.SelectedRow.Cells[7].Text.Trim();
                manager.Text = emplistgrid.SelectedRow.Cells[8].Text.Trim();

                addbtn.Text = "UPDATE";
            }
            catch (Exception ex)
            {
                Exceptionr exp = new Exceptionr();
                exp.OccuringException = ex.Message;
                exp.Stackerror = ex.StackTrace;
                Response.Redirect("~/About.aspx");
            }

        }



        /// <summary>
        /// Loads the Data Grid View
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        
        protected void emplistgrid_Load(object sender, EventArgs e)
        {
            loaddata();
        }

    }
}