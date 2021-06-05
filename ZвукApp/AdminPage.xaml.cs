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
    /// Логика взаимодействия для AdminPage.xaml
    /// </summary>
    public partial class AdminPage : Page
    {
        public AdminPage()
        {
            InitializeComponent();
            adminDataGrid.ItemsSource = ZvukDBEntities.getContext().Users.ToList();
            TBAdminFirstName.Text = Manager.userFirstName;
            TBAdminLastName.Text = Manager.userLastName;
            TBAdminUserType.Text = Manager.userType;
        }
        private void btnAdminExit_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new LoginPage());
            Application.Current.MainWindow.ResizeMode = System.Windows.ResizeMode.NoResize;
            Application.Current.MainWindow.WindowState = System.Windows.WindowState.Normal;
            Application.Current.MainWindow.Height = 450;
            Application.Current.MainWindow.Width = 800;
        }

        private void btnAdminDel_Click(object sender, RoutedEventArgs e)
        {
            var productsForDel = adminDataGrid.SelectedItems.Cast<Users>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {productsForDel.Count()} строк?", "Внимание!",
                        MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    ZvukDBEntities.getContext().Users.RemoveRange(productsForDel);
                    ZvukDBEntities.getContext().SaveChanges();
                    MessageBox.Show("Данные удалены!");

                    adminDataGrid.ItemsSource = ZvukDBEntities.getContext().Users.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void btnAdminAdd_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new AdminAddEditPage((sender as Button).DataContext as Users));
            Manager.adminAddOrEdit = true;
        }

        private void btnAdminPrint_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new AdminPrintPage());
        }
        private void btnAdminkEdit_Click(object sender, RoutedEventArgs e)
        {

            Manager.BaseFrame.Navigate(new AdminAddEditPage((sender as Button).DataContext as Users));
            Manager.adminAddOrEdit = false;
        }

        private void btnAdminHistory_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new EnterHistoryPage());
        }

        private void btnAdminToStock_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new StockmanPage());
        }

        private void tBAdminSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            List<Users> currentUser = ZvukDBEntities.getContext().Users.ToList();
            currentUser = currentUser.Where(p => p.LastName.ToLower().Contains(tBAdminSearch.Text.ToLower()) || p.Login.ToLower().Contains(tBAdminSearch.Text.ToLower()) || p.FirstName.ToLower().Contains(tBAdminSearch.Text.ToLower())).ToList();
            adminDataGrid.ItemsSource = currentUser;
        }
    }
}
