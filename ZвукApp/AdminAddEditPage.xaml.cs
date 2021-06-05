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
    /// Логика взаимодействия для AdminAddEditPage.xaml
    /// </summary>
    public partial class AdminAddEditPage : Page
    {
        private Users currentUser = new Users();
        public AdminAddEditPage(Users selectedUser)
        {
            InitializeComponent();
            if (selectedUser != null)
                currentUser = selectedUser;
            DataContext = currentUser;
            cBUsers.ItemsSource = ZvukDBEntities.getContext().UserTypes.ToList();
        }

        private void btnAddEditAdminBack_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new AdminPage());
        }

        private void btnAddEditAdminSave_Click(object sender, RoutedEventArgs e)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(currentUser.FirstName))
                errors.AppendLine("Укажите имя");
            if (string.IsNullOrWhiteSpace(currentUser.LastName))
                errors.AppendLine("Укажите фамилию");
            if (string.IsNullOrWhiteSpace(currentUser.Patronymic))
                errors.AppendLine("Укажите отчество");
            if (currentUser.DateOfBirth == null)
                errors.AppendLine("Укажите дату рождения");
            if (cBUsers.Text.Length == 0)
                errors.AppendLine("Укажите тип пользователя");
            if (string.IsNullOrWhiteSpace(currentUser.Login))
                errors.AppendLine("Укажите логин");
            if (string.IsNullOrWhiteSpace(currentUser.Password))
                errors.AppendLine("Укажите пароль");

            if (errors.Length > 0)
            {
                MessageBox.Show(errors.ToString());
                return;

            }

            if (currentUser.Id == 0)
                ZvukDBEntities.getContext().Users.Add(currentUser);
            try
            {
                ZvukDBEntities.getContext().SaveChanges();
                MessageBox.Show("Информация сохранена");
                Manager.BaseFrame.Navigate(new AdminPage());
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message.ToString());
            }
        }

        private void datePickerDateOfBirth_CalendarOpened(object sender, RoutedEventArgs e)
        {
           if (Manager.adminAddOrEdit == true)
           { 
                datePickerDateOfBirth.SelectedDate = Manager.dateTimeDefaul;
           }
        }
    }
}
