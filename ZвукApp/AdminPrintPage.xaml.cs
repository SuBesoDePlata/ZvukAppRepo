﻿using Microsoft.Win32;
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
    /// Логика взаимодействия для AdminPrintPage.xaml
    /// </summary>
    public partial class AdminPrintPage : Page
    {
        public AdminPrintPage()
        {
            InitializeComponent();
            adminPrintDataGrid.ItemsSource = ZvukDBEntities.getContext().Users.ToList();
        }
        private void btnAdminPrintSave_Click(object sender, RoutedEventArgs e)
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
        private void btnAdminPrintBack_Click(object sender, RoutedEventArgs e)
        {
            Manager.BaseFrame.Navigate(new AdminPage());
        }
        private void btnAdminPrintLoad_Click(object sender, RoutedEventArgs e)
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
