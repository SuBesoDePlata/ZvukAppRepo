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

namespace ZвукApp
{
    /// <summary>
    /// Логика взаимодействия для StockAddEditPage.xaml
    /// </summary>
    public partial class StockAddEditPage : Page
    {
        private Products currentProduct = new Products();
        
        public StockAddEditPage(Products selectedProduct)
        {
            InitializeComponent();
            if (selectedProduct != null)
                currentProduct = selectedProduct;
            DataContext = currentProduct;
            cBProducts.ItemsSource = ZvukDBEntities.getContext().ProductTypes.ToList();
        }
        private void BtnAddEditStockSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(currentProduct.Artist))
                errors.AppendLine("Укажите исполнителя");
            if (string.IsNullOrWhiteSpace(currentProduct.Name))
                errors.AppendLine("Укажите название");
            if (cBProducts.Text.Length == 0)
                errors.AppendLine("Укажите тип");
            if (currentProduct.Duration == null)
                errors.AppendLine("Укажите длительность");
            if (string.IsNullOrWhiteSpace(currentProduct.Label))
                errors.AppendLine("Укажите лейбл");
            if (currentProduct.Quantity < 0)
                errors.AppendLine("Укажите количество в наличии");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;

            }

            if (currentProduct.Id == 0)
                ZvukDBEntities.getContext().Products.Add(currentProduct);
            try
            {
                ZvukDBEntities.getContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                Manager.BaseFrame.Navigate(new StockmanPage());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void BtnAddEditStockBack_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new StockmanPage());
        }

    }
}
