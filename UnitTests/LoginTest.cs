using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using UnitTests;

namespace LoginTest
{
    [TestClass()]
    public class LoginTestClass
    {
        [TestMethod()]
        public void LoginTest()
        {
            var auth1 = TestMethod("hohl", "hohl");
            var auth2 = TestMethod("1", "1");
            Assert.AreEqual(1, auth1);
            Assert.AreEqual(0, auth2);
        }
        public static int TestMethod(string login, string password)
        {
            try
            {
                using (ZvukDBEntities db = new ZvukDBEntities())
                {
                    foreach (var user in ZvukDBEntities.getContext().Users)
                    {
                        if (login == user.Login && password == user.Password)
                        {
                            if (user.TypeId == 1)
                            {
                                return 1;
                            }
                            else
                            if (user.TypeId == 2)
                            {
                                return 2;

                            }
                        }


                    }
                    return 0;
                }

            }
            catch
            {
                return 0;
            }

        }
    }

}
