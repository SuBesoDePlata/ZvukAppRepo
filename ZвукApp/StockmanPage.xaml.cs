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
    /// Логика взаимодействия для StockmanPage.xaml
    /// </summary>
    public partial class StockmanPage : Page
    {
        public StockmanPage()
        {
            InitializeComponent();
            stockmanDataGrid.ItemsSource = ZvukDBEntities.getContext().Products.ToList();
            tBStockFirstName.Text = Manager.userFirstName;
            tBStockLastName.Text = Manager.userLastName;
            tBStockUserType.Text = Manager.userType;
        }
        private void btnStockmanExit_Click(object sender, RoutedEventArgs e)
        {
            if (Manager.userType == "Администратор")
            {
                Manager.BaseFrame.Navigate(new AdminPage());
            }
            else
            {
                Manager.BaseFrame.Navigate(new LoginPage());
                Application.Current.MainWindow.ResizeMode = System.Windows.ResizeMode.NoResize;
                Application.Current.MainWindow.WindowState = System.Windows.WindowState.Normal;
                Application.Current.MainWindow.Height = 450;
                Application.Current.MainWindow.Width = 800;
            }
        }

        private void btnStockAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new StockAddEditPage(null));
        }

        private void btnStockDel_Click(object sender, RoutedEventArgs e)
        {
            var productsForDel = stockmanDataGrid.SelectedItems.Cast<Products>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {productsForDel.Count()} строк?", "Внимание!",
                        MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    ZvukDBEntities.getContext().Products.RemoveRange(productsForDel);
                    ZvukDBEntities.getContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");

                    stockmanDataGrid.ItemsSource = ZvukDBEntities.getContext().Products.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }
        private void btnStockEdit_Click(object sender, RoutedEventArgs e)
        {

            Manager.BaseFrame.Navigate(new StockAddEditPage((sender as Button).DataContext as Products));
        }
        private void btnStockPrint_Click(object sender, RoutedEventArgs e)
        {

            Manager.BaseFrame.Navigate(new StockPrintPage());
        }

        private void tBStockSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Products> currentUser = ZvukDBEntities.getContext().Products.ToList();
            currentUser = currentUser.Where(p => p.Artist.ToLower().Contains(tBStockSearch.Text.ToLower()) || p.Name.ToLower().Contains(tBStockSearch.Text.ToLower()) || p.Label.ToLower().Contains(tBStockSearch.Text.ToLower())).ToList();
            stockmanDataGrid.ItemsSource = currentUser;
        }
    }
}
