   M S B A M L   `   `   `  ���� C  ?DaysLoop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DaysLoopDaysLoop      DaysLoop.Settings   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     (localclr-namespace:DaysLoop     -     � Title$  Settings��$	��260��$	��300�� � WindowStartupLocation$ CenterScreen=� � Topmost$
 True�� � ShowInTaskbar$ False�� � WindowStyle$
 None=�.���  � ColumnDefinitions �� $	��39* ��� $	��61* �.+��� $
��Left=�$	��Top=�$��	10,10,0,0q�.+��� -    ��Name$ 
btnClockIn��$��Clock In��$��Center=�$��0,0,0,0q�$	��Top=�$	��100�� �� 	IsDefault$
 True���� -   $ btnClockOut��$��	Clock out��$��Center=�$��0,10,0,0q�$	��Top=�$	��100��${�False���� -   $��lblClockedState��$��Not clocked in��$
��Left=�$��0,10,0,0q�$	��Top=� J� RenderTransformOrigin$ 0.5,0.5&�$��0,0,5,0q�
�������
���  ��z�V� .~��� �� 	 �� AngleY$	 0.716Q��� 
 �� Angle$
 -0.526Q�T�  T� Y$ -0.237Q��� $��	Salary/h:��$��0,5,5,5q��� -   $��	txtSalary�� �� TextWrapping$
 Wrap=�$��13���� -   $��grpData��$
��Data��$��
5,10,10,10q�$y�Visible=�$��1��.���� .+��� $��Time worked:��$��24��$	��158��$��0,5,5,5q��� -    ��Name$ txtWorkingTime��$
 Wrap=�$��00:00:00���� $��Clocked in:��$��24��$	��158��$��0,5,5,5q��� -   $ txtClockedIn��$
 Wrap=�$��00:00:00���� $��Clocked out:��$��24��$	��158��$��0,5,5,5q��� -	   $��txtClockedOut��$
 Wrap=�$��00:00:00���� $��Money Earned:��$��24��$	��158��$��0,5,5,0q��� -
   $ txtTotalRevenue��$
 Wrap=�$��€0,00���� -   $��btnCloseSettings��$��
Close Menu��$
��Left=�$��
10,220,0,0q�$	��Top=�$	��100���� -   $ btnSave��$��Save Day��${�False��$
��Left=�$��
10,195,0,0q�$	��Top=�$	��100��