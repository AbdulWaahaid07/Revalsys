using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace RevalEMPRegLibrary.Models
{
    public class Employee
    {

        public int Employee_Id { get; set; }

        public string Employee_Name { get; set; }

        public string Employee_Designation { get; set; }

        public double Employee_Salary { get; set; }

        public string Employee_Email { get; set; }

        public long Employee_Mobile { get; set; }

        public string Employee_Qualification { get; set; }

        public string Manager { get; set; }

    }
}
