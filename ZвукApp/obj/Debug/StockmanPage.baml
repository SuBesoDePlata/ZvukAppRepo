   M S B A M L   `   `   `  ����E  AZвукApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:ZвукApp
ZвукApp  5          ZвукApp.StockmanPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:ZвукApp     5        N� Title$  StockmanPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      �� 5      $��60 �6    � ColumnDefinitions 5   
   �� 5      $	��155 �6   �� 5      $	��22* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ stockmanDataGrid��5   G   $��1��6      CanUserAddRows .  $��1��67      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6H   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 61   �� *Id+6T     5      $ Исполнитель��6%   $ 2* 6U   	 6:   �� *Artist+6b     5      $ Название��6%   $ 2* 6P   	 67   �� *Name+6]     5      $ Тип��6%   $ 1* 6\   	 62   �� *ProductTypes.TypeName+6i     5      $ 
Длина��6%   $ 2* 6Q   	 64   �� *
Duration+6^     5      $ 
Лейбл��6%   $ 2* 6N   	 64   �� *Label+6[     5      $ Кол-во��6%   $ 2* 6R   	 65   �� *
Quantity+6_   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)   
   CellTemplate
 5      �� 5       .R�5!      �� $��btnStockEdit��6R   -   5        ���#c0c6c9$ ��Редактировать��5!   :   6�   5"      5$      5&      �� 5'   
   $��1��6   $��Right=�6&   $��Center=�6B    �� Orientation$ 
Horizontal=�6]   .+�5(      �� $��15(�6   .��6"   Поиск:6*   �� 5)      -   5         ��Name$ tBStockSearch��5)   &   $��1��6   $��Right=�6e   $��34��6�   $	��200��6�   $��0,0,15,0q�6�   6�   5*      �� 5+   
   $��5q�6   $��Center=�6   $��Center=�68   $��Resources/ZvukLogo.png��6S   6u   �� 5,   
   -   5         ��Name$ btnStockmanExit��5,   [   ���#c0c6c9$��2��6&   $��34��63   $	��120��6?   $��
Выход��6K   $��Center=�6t   6�   �� 5-   
   $��2��6   $��1��6"   $ 
Horizontal=�62   $��Right=�6K   .+�5.      �� -   5        $ btnStockAdd��5.   U   ���#c0c6c9$��34��6*   $	��120��66   $��Добавить��6B   $��10q�6j   6�   �� 5/      -   5        $ btnStockDel��5/   T   ���#c0c6c9$��34��6*   $	��120��66   $��Удалить��6B   6�   �� 50      -   5        $ btnStockPrint��50   S   ���#c0c6c9$��34��6*   $	��120��66   $��Печать��6B   $��10q�6j   6�   51      �� 52   
   $��1��6   $��Center=�6#   $��10q�6@   .+�53      �� $��15(�6   .��6"   Вы зашли как:61   �� 54      -   5         ��Name$ tBStockLastName��54   &   $��15(�6   6B   �� 55      -	   5        $ tBStockFirstName��55   &   $��15(�6   6C   �� 56      $��15(�6   .��6"   С ролью:6,   �� 57      -
   5        $ tBStockUserType��57   &   $��15(�6   6B   58      59      5:      