using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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
using System.Windows.Xps;
using System.Windows.Xps.Packaging;

namespace ZвукApp
{
    /// <summary>
    /// Логика взаимодействия для StockPrintPage.xaml
    /// </summary>
    public partial class StockPrintPage : Page
    {
        public StockPrintPage()
        {
            InitializeComponent();
            StockPrintDataGrid.ItemsSource = ZvukDBEntities.getContext().Products.ToList();
        }
        private void btnStockPrintSave_Click(object sender, RoutedEventArgs e)
        {
            SaveFileDialog SaveFileDialog = new SaveFileDialog();
            SaveFileDialog.Filter = "XPS Files (*.xps)|*.xps";
            if (SaveFileDialog.ShowDialog() == true)
            {
                XpsDocument Document = new XpsDocument(SaveFileDialog.FileName, FileAccess.Write);
                XpsDocumentWriter DocumentWriter = XpsDocument.CreateXpsDocumentWriter(Document);
                DocumentWriter.Write(documentViewer.Document as FixedDocument);
                Document.Close();
            }
        }
        private void btnStockPrintBack_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new StockmanPage());
        }
        private void btnStockPrintLoad_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog OpenFileDialog = new OpenFileDialog();
            OpenFileDialog.Filter = "XPS Files (*.xps)|*.xps";

            if (OpenFileDialog.ShowDialog() == true)
            {
                XpsDocument Document = new XpsDocument(OpenFileDialog.FileName, FileAccess.Read);
                documentViewer.Document = Document.GetFixedDocumentSequence();
            }
        }
    }
}
