   M S B A M L   `   `   `  ����E  AZвукApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:ZвукApp
ZвукApp  5          ZвукApp.AdminPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:ZвукApp     5        N� Title$  	AdminPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      �� 5      $��60 �6    � ColumnDefinitions 5   
   �� 5      $	��155 �6   �� 5      $	��22* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ adminDataGrid��5   H      CanUserAddRows .  $��1��6*   $��1��67      AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6H   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 61   �� *Id+6T     5      $ Фамилия��6%   $ 2* 6S   	 66   �� *
LastName+6`     5      $ Имя��6%   $ 2* 6P   	 62   �� *	FirstName+6]     5      $ Отчество��6%   $ 2* 6V   	 67   �� *
Patronymic+6c     5      $ Дата рожд.��6%   $ 2* 6r   	 69   �� *DateOfBirth+
 �� StringFormat$
 
dd/MM/yyyy��6     5      $ Роль��6%   $ 2* 6Z   	 63   �� *UserTypes.TypeName+6g     5      $ 
Логин��6%   $ 2* 6N   	 64   �� *Login+6[     5      $ Пароль��6%   $ 2* 6R   	 65   �� *
Password+6_   4  .System.Windows.Controls.DataGridTemplateColumn  5      $
 auto 6)      CellTemplate 5       �� 5!      .R�5"      �� $��btnAdminEdit��6o   -   5        ���#c0c6c9$ ��Редактировать��5"   :   6�   5#      5%      5'      �� 5(   
   $��1��6   $��Right=�6%   $��Center=�6A    �� Orientation$ 
Horizontal=�6\   .+�5)      �� $��15(�6   .��6"   Поиск:6+   �� 5*   
   -   5         ��Name$ tBAdminSearch��5*   "   $��1��6   $��34��6b   $	��200��6n   $��0,0,15,0q�6z   6�   5+      �� 5,   
   $��5q�6   $��Center=�6   $��Center=�68   $��Resources/ZvukLogo.png��6S   6u   �� 5-   
   -   5         ��Name$ btnAdminExit��5-   [   ���#c0c6c9$��2��6&   $��34��63   $	��120��6?   $��
Выход��6K   $��Center=�6q   $��15,13q�6�   6�   �� 5.   
   -   5        $ btnAdminToStock��5.   h   ���#c0c6c9$��1��6&   $��34��63   $	��120��6?   $(��"Интерф. кладовщика��6K   $��Bottom=�6�   $��0,0,0,15q�6�   $��Center=�6�   6�   �� 5/   
   $��2��6   $��1��6"   $ 
Horizontal=�62   $��Right=�6K   .+�50      �� -   5        $ btnAdminHistory��50   T   ���#c0c6c9$��34��6*   $	��120��66   $��История��6B   $��10q�6m   6�   �� 51      -   5        $ btnAdminAdd��51   U   ���#c0c6c9$��34��6*   $	��120��66   $��Добавить��6B   $��10q�6j   6�   �� 52      -   5        $ btnAdminDel��52   T   ���#c0c6c9$��34��6*   $	��120��66   $��Удалить��6B   $��10q�6i   6�   �� 53      -	   5        $ btnAdminPrint��53   S   ���#c0c6c9$��34��6*   $	��120��66   $��Печать��6B   $��10q�6j   6�   54      �� 55   
   $��Center=�6   $��22,10q�62   $��1��6A   .+�56      �� $��15(�6   .��6"   Вы зашли как:61   �� 57      -
   5         ��Name$ TBAdminLastName��57   &   $��15(�6   6B   �� 58      -   5        $ TBAdminFirstName��58   &   $��15(�6   6C   �� 59      $��15(�6   .��6"   С ролью:6,   �� 5:      -   5        $ TBAdminUserType��5:   &   $��15(�6   6B   5;      5<      5=      