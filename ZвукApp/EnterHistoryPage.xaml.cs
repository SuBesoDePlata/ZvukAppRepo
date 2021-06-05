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
    /// Логика взаимодействия для EnterHistoryPage.xaml
    /// </summary>
    public partial class EnterHistoryPage : Page
    {
        public EnterHistoryPage()
        {
            InitializeComponent();
            EnterHistoryDataGrid.ItemsSource = ZvukDBEntities.getContext().History.ToList();
        }

        private void BtnHistoryBack_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new AdminPage());
        }
    }
}
