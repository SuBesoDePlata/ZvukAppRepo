using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;

namespace ZвукApp
{
    class Manager
    {
        public static Frame BaseFrame { get; set; }
        public static string userFirstName;
        public static string userLastName;
        public static string userType;
        public static DateTime dateTimeDefaul = DateTime.Parse("1980-12-12");
        public static bool adminAddOrEdit;
    }
}
