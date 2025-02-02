﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _02_mysqlhandling
{
    public partial class FrmMain : Form
    {
        public FrmMain()
        {
            InitializeComponent();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {
            string connectionString = "Server=localhost;Port=3306;Database=bookrentalshop;UiD=root;Password=1234";
            MySqlConnection conn = new MySqlConnection(connectionString);
            
            conn.Open();

            string selQuery = @"SELECT memberIdx,
                                    Names,
                                    Levels,
                                    Addr,
                                    Mobile,
                                    Email
                                FROM membertbl";

            MySqlDataAdapter adapter = new MySqlDataAdapter(selQuery, conn);
            
            DataSet ds = new DataSet();
            adapter.Fill(ds);

            BindingSource source = new BindingSource();
            source.DataSource = ds.Tables[0];

            DgvMember.DataSource = source;

            conn.Close();
        }

    }
}
