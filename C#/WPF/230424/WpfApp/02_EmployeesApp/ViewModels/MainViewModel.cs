﻿using _02_EmployeesApp.Models;
using Caliburn.Micro;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_EmployeesApp.ViewModels
{
    public class MainViewModel : Screen
    {
        private Employees employee;

        public BindableCollection<Employees> ListEmployee
        {
            get; set;
        }
        public int Idx
        {
            get => employee.Idx;
            set
            {
                employee.Idx = value;
                NotifyOfPropertyChange(nameof(Idx));
            }
        }

        public string FullName
        {
            get => employee.FullName;
            set
            {
                employee.FullName = value;
                NotifyOfPropertyChange(nameof(FullName));
            }
        }

        public int Salary
        {
            get => employee.Salary;
            set
            {
                employee.Salary = value;
                NotifyOfPropertyChange(nameof(Salary));
            }
        }
        public string DeptName
        {
            get => employee.DeptName;
            set
            {
                employee.DeptName = value;
                NotifyOfPropertyChange(nameof(DeptName));
            }
        }
        public string Address
        {
            get => employee.Address;
            set
            {
                employee.Address = value;
                NotifyOfPropertyChange(nameof(Address));
            }
        }

        public MainViewModel()
        {
            using (SqlConnection conn = new SqlConnection("Data Source=localhost;Initial Catalog=pknu;Persist Security Info=True; User ID=sa;Password=1234"))
            {
                conn.Open();

                string selQuery = @"SELECT [Idx]
                                  ,[EmpName]
                                  ,[Salary]
                                  ,[DeptName]
                                  ,[Address]
                              FROM [dbo].[Employees]";
                SqlCommand selCommand = new SqlCommand(selQuery, conn);
                SqlDataReader reader = selCommand.ExecuteReader();
                ListEmployee = new BindableCollection<Employees>();

                while (reader.Read())
                {
                    var emp = new Employees
                    {
                        Idx = int.Parse(reader["Idx"].ToString()),
                        FullName = reader["FullName"].ToString(),
                        Salary = int.Parse(reader["Salary"].ToString()),
                        DeptName = reader["DeptName"].ToString(),
                        Address = reader["Address"].ToString()
                    };
                    ListEmployee.Add(emp);
                }

            }
        }
    }
}
