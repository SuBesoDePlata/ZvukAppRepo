using System;
using System.Text;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UnitTests;

namespace AddEditTest
{
    [TestClass()]
    public class LoginTestClass
    {
        [TestMethod()]
        public void LoginTest()
        {
            var addedit1 = TestMethod("Иван", "Иванович", "Иванов", DateTime.Parse("1980-12-12"), "123321", 1, "321123", 0);
            var addedit2 = TestMethod("", "Иванович", "Иванов", DateTime.Parse("1980-12-12"), "ale", 1, "ale", 0);
            Assert.AreEqual(1, addedit1);
            Assert.AreEqual(0, addedit2);
        }


        public static int TestMethod(string firstName, string lastName, string patronymic, DateTime dateOfBirth, string login, int userType, string password, int userId)
        {
            StringBuilder errors = new StringBuilder();

            if (string.IsNullOrWhiteSpace(firstName))
                errors.AppendLine("Укажите имя");
            if (string.IsNullOrWhiteSpace(lastName))
                errors.AppendLine("Укажите фамилию");
            if (string.IsNullOrWhiteSpace(patronymic))
                errors.AppendLine("Укажите отчество");
            if (dateOfBirth == null)
                errors.AppendLine("Укажите дату рождения");
            if (userType < 0)
                errors.AppendLine("Укажите тип пользователя");
            if (string.IsNullOrWhiteSpace(login))
                errors.AppendLine("Укажите логин");
            if (string.IsNullOrWhiteSpace(password))
                errors.AppendLine("Укажите пароль");

            if (errors.Length > 0)
            {
                return 0;
            }
            else
            {
                return 1;
            }
        }
    }

}