   M S B A M L   `   `   `  ����E  AZвукApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:ZвукApp
ZвукApp  5          ZвукApp.AdminPrintPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:ZвукApp     5        N� Title$  AdminPrintPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��199* �6   �� 5      $��60 �6   .+�5   
   Z� -   5         Z�Name$ documentViewer��5      .��5      3� M� 5      1� 5      � 5      $��20q�6   
�������$	��775��6>   $
��1015��6J   .+�5      �� $��Hello World!��6(   &   System.Windows.Controls.DataGrid  5      -   5        $��adminPrintDataGrid��5   '      AutoGenerateColumns .     
IsReadOnly .    Columns 5   "   0  *System.Windows.Controls.DataGridTextColumn  5   &   ,  &System.Windows.Controls.DataGridColumn   Header$ Id��69      Width5  /System.Windows.Controls.DataGridLengthConverter$ 1* 6\   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6E   �� *Id+6i     5   &   $ Имя��69   $ 2* 6d    6F   �� *	FirstName+6q     5   &   $ Фамилия��69   $ 2* 6g    6J   �� *
LastName+6t     5   &   $ Отчество��69   $ 2* 6j    6K   �� *
Patronymic+6w     5   &   $ Дата рождения��69   $ 2* 6p    6P   �� *DateOfBirth+6}     5   &   $  Администратор��69   $ 1* 6v    6P   �� *UserType.TypeName+6�     5   &   $ 
Логин��69   $ 2* 6b    6H   �� *Login+6o     5   &   $ Пароль��69   $ 2* 6f    6I   �� *
Password+6s   5!      5"      5#      5$      5%      5&      �� 5'   
   -   5        	 ��Name$	 btnAdminPrintBack��5'   j   $��
Назад��6   $��1��6!   $
��Left=�6.   ���#c0c6c9$��10q�6^   $��34��6�   $	��120��6�   6�   �� 5(   
   
 �� Orientation$
 
Horizontal=�6   $��1��6.   $��Center=�6;   .+�5)      �� -   5        $	 btnAdminPrintSave��5)   b   $��Сохранить��6   ���#c0c6c9$��10q�6>   $��34��6J   $	��120��6V   6}   �� 5*      -   5        $	 btnAdminPrintLoad��5*   b   $��Загрузить��6   ���#c0c6c9$��10q�6>   $��34��6J   $	��120��6V   6}   5+      5,      5-      