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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }
        private void LoginButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                using (ZvukDBEntities db = new ZvukDBEntities())
                {
                    bool authorized = false;
                    foreach (var user in ZvukDBEntities.getContext().Users)
                    {
                        if (TBLogin.Text == user.Login && PBPassword.Password == user.Password)
                        {
                            authorized = true;
                            DateTime dateTime = new DateTime();
                            dateTime = DateTime.Now;
                            History history = new History();
                            history.EnterDate = dateTime;
                            history.UserId = user.Id;
                            history.Result = authorized;
                            db.History.Add(history);
                            db.SaveChanges();
                            Manager.userFirstName = user.FirstName;
                            Manager.userLastName = user.LastName;
                            if (user.TypeId == 1)
                            {
                                Manager.userType = "Администратор";
                                Manager.BaseFrame.Navigate(new AdminPage());                                
                                Application.Current.MainWindow.ResizeMode = System.Windows.ResizeMode.CanResize;


                            }
                            else
                            if (user.TypeId == 2)
                            {
                                Manager.userType = "Кладовщик";
                                Manager.BaseFrame.Navigate(new StockmanPage());
                                Application.Current.MainWindow.ResizeMode = System.Windows.ResizeMode.CanResize;

                            }

                        }
                    }
                    if (authorized == false)
                    {
                        MessageBox.Show("Ошибка авторизации");
                    }
                }

            }
            catch
            {
                MessageBox.Show("Ошибка");
            }
        }
    }
}
