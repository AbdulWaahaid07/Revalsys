using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using RevalEMPRegLibrary.Models;
using RevalEMPRegLibrary.DataAcessLayer;

namespace RevalEMPRegLibrary.BusinessLogic
{
    public class EmpProcessor
    {
        public SqlConnection GetConnection()
        {
            var cnn = new SqlConnection(ConfigDAL.Database("revalsysrs"));
            return cnn;
        }

        public void addEmployee(Employee emp)
        {

            using (IDbConnection connection = GetConnection())                 
            {
                var t = new DynamicParameters();
                t.Add("@Employee_Name", emp.Employee_Name);
                t.Add("@Employee_Designation", emp.Employee_Designation);
                t.Add("@Employee_Salary", emp.Employee_Salary);
                t.Add("@Employee_Email", emp.Employee_Email);
                t.Add("@Employee_Mobile", emp.Employee_Mobile);
                t.Add("@Employee_Qualification", emp.Employee_Qualification);
                t.Add("@Manager", emp.Manager);

                connection.Execute("spaddEMP", t, commandType: CommandType.StoredProcedure);
            }            

        }

        public void updateEmployee(Employee emp)
        {
            using (IDbConnection connection = GetConnection()) 
            {
                var t = new DynamicParameters();
                t.Add("@empid", emp.Employee_Id);
                t.Add("@Employee_Name", emp.Employee_Name);
                t.Add("@Employee_Designation", emp.Employee_Designation);
                t.Add("@Employee_Salary", emp.Employee_Salary);
                t.Add("@Employee_Email", emp.Employee_Email);
                t.Add("@Employee_Mobile", emp.Employee_Mobile);
                t.Add("@Employee_Qualification", emp.Employee_Qualification);
                t.Add("@Manager", emp.Manager);

                connection.Execute("spUpdateEMP", t, commandType: CommandType.StoredProcedure);

            }

        }

        public List<Employee> readEmployee()
        {
            var emp = new List<Employee>();
            using (IDbConnection connection = GetConnection()) 
            {
                var emplist = connection.Query<Employee>("spViewEMP", commandType: CommandType.StoredProcedure).ToList();
                emp = emplist;
            }
            return emp;
        }

        
        public void deleteEmployee(Employee emp)
        {
            using (IDbConnection connection = GetConnection()) 
            {
                var t = new DynamicParameters();
                t.Add("@empid", emp.Employee_Id);

                connection.Execute("spDeleteEMP", t, commandType: CommandType.StoredProcedure);
            }

        }


    }
}
