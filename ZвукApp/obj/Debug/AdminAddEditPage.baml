   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      E AZвукApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:ZвукApp
ZвукApp 5      !   ZвукApp.AdminAddEditPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      6sys&clr-namespace:System;assembly=mscorlib     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:ZвукApp     5        N� Title$  AdminAddEditPage��5
      .��5      �  � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��1* �6   �� 5      $��60 �6    � ColumnDefinitions 5   
   �� 5      $	��155 �6   �� 5      $	��39* �6   .+�5   
   �� $��0��6   $��Center=�6   $��Center=�6:   $��15(�6U   $��38��6c   .��6o   Фамилия6x   �� 5   
   $��1��6   $��Center=�6   $��Center=�6:   $��15(�6U   $��36��6c   .��6o   Имя6t   �� 5   
   $��2��6   $��Center=�6   $��Center=�6:   $��15(�6U   $��38��6c   .��6o   Отчество6y   �� 5   
   $��3��6   $��Center=�6   $��Center=�6:   $��15(�6U   $��38��6c   .��6o   Дата рождения6~   �� 5   
   $��4��6   $��Center=�6   $��Center=�6:   $��15(�6U   $��36��6c   .��6o   Администратор6~   �� 5    
   $��5��6   $��Center=�6   $��Center=�6:   $��15(�6U   $��38��6c   .��6o   
Логин6v   �� 5!   
   $��6��6   $��Center=�6   $��Center=�6:   $��15(�6U   $��38��6c   .��6o   Пароль6w   �� 5"   
   $��15(�6   $��0��6:   $��10q�6G   $��1��6S   ��6    �� *
LastName+6e   �� 5#   
   $��15(�6   $��1��6;   $��10q�6H   $��1��6T   ��6    �� *	FirstName+6f   �� 5$   
   $��15(�6   $��2��6<   $��10q�6I   $��1��6U   ��6    �� *
Patronymic+6g   (  "System.Windows.Controls.DatePicker  5&   
   -   5        $��datePickerDateOfBirth��5&   �   $��15(�6K   $��5q�6�   $	��175��6�   
�������$��3��6�   $��1��6�   $��40��6�      SelectedDate 6Y   �� *DateOfBirth+ �� StringFormat$ 
dd/MM/yyyy��6  �� 5'   
   -   5         ��Name$ cBUsers��5'   a   $��15(�6   $��4��6!   $��1��6Q   $��10q�6r    �� DisplayMemberPath$ TypeName��6    �� SelectedItem 6.   �� *	UserTypes+6�   �� 5(   
   $��15(�6   $��5��67   $��10q�6D   $��1��6P   ��6    �� *Login+6b   �� 5)   
   $��15(�6   $��6��6:   $��10q�6G   $��1��6S   ��6    �� *
Password+6e   �� 5*   
   -   5         ��Name$ btnAddEditAdminSave��5*   �   $��1��6   $��7��6!   $��34��6.   $��Сохранить��6:   $��Center=�6N   $��Center=�6k   ���#c0c6c9$	��120��6�   6�   �� 5+   
   -   5        $ btnAddEditAdminBack��5+   �   $��0��6   $��7��6!   $��34��6.   $	��120��6:   $��
Назад��6F   $��Center=�6V   $��Center=�6s   ���#c0c6c96�   5,      5-      