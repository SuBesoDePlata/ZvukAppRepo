   M S B A M L   `   `   `  ����E  AZвукApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:ZвукApp
ZвукApp  5          ZвукApp.StockPrintPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:ZвукApp     5        N� Title$  StockPrintPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��199* �6   �� 5      $��60 �6   .+�5   
   Z� -   5         Z�Name$ documentViewer��5      .��5      3� M� 5      1� 5      � 5      $��20q�6   $	��775��6+   $
��1015��67   .+�5      �� $��Hello World!��6(   &   System.Windows.Controls.DataGrid  5      -   5        $��StockPrintDataGrid��5   :   
�������   AutoGenerateColumns .     
IsReadOnly .    Columns 5   "   0  *System.Windows.Controls.DataGridTextColumn  5   &   ,  &System.Windows.Controls.DataGridColumn   Header$ Id��69      Width5  /System.Windows.Controls.DataGridLengthConverter$ 1* 6\   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6E   �� *Id+6i     5   &   $ Исполнитель��69   $ 2* 6i    6N   �� *Artist+6v     5   &   $ Название��69   $ 2* 6d    6K   �� *Name+6q     5   &   $ Тип��69   $ 1* 6p    6F   �� *ProductTypes.TypeName+6}     5   &   $ 
Длина��69   $ 2* 6e    6H   �� *
Duration+6r     5   &   $ 
Лейбл��69   $ 2* 6b    6H   �� *Label+6o     5   &   $ Кол-во��69   $ 2* 6f    6I   �� *
Quantity+6s   5       5!      5"      5#      5$      5%      �� 5&   
   -   5        	 ��Name$	 btnStockPrintBack��5&   j   $��
Назад��6   $��1��6!   $
��Left=�6.   ���#c0c6c9$��10q�6^   $��34��6�   $	��120��6�   6�   �� 5'   
   
 �� Orientation$
 
Horizontal=�6   $��1��6.   $��Center=�6<   .+�5(      �� -   5        $	 btnStockPrintSave��5(   J   $��Сохранить��6   ���#c0c6c9$��10q�6>   $��34��6f   $	��120��6r   6~   �� 5)      -   5        $	 btnStockPrintLoad��5)   J   $��Загрузить��6   ���#c0c6c9$��10q�6>   $��34��6e   $	��120��6q   6~   5*      5+      5,      