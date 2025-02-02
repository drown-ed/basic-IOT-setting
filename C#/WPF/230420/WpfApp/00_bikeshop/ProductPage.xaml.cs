﻿using _03_bikeshop.Logics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace _03_bikeshop
{
    /// <summary>
    /// ProductPage.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class ProductPage : Page
    {
        ProductsFactory factory = new ProductsFactory();
        public ProductPage()
        {
            InitializeComponent();
        }

        private void TxtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            DgrProducts.ItemsSource = factory.FindProducts(TxtSearch.Text);
        }
    }
}
