   M S B A M L   `   `   `  ����C  ?DaysLoop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DaysLoopDaysLoop  5   	       DaysLoop.Settings   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:DaysLoop     5   	   -   5          � Title$  Settings��5   	   $	��260��6   $	��300��5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � Topmost$
 True��5   	    � ShowInTaskbar$ False��6    � WindowStyle$
 None=�5   	   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��39* �6   �� 5      $	��61* �6   .+�5   
   �� $
��Left=�6   $	��Top=�60   $��	10,10,0,0q�6H   .+�5      �� -   5         ��Name$ 
btnClockIn��5      $��Clock In��6)   $��Center=�6<   $��0,0,0,0q�6Y   $	��Top=�6j   $	��100��6�    �� 	IsDefault$
 True��6�   6�   �� 5      -   5        $ btnClockOut��5      $��	Clock out��6*   $��Center=�6>   $��0,10,0,0q�6[   $	��Top=�6m   $	��100��6�   ${�False��6�   6�   �� 5      -   5        $��lblClockedState��5      $��Not clocked in��6+   $
��Left=�6D   $��0,10,0,0q�6_   $	��Top=�6q    J� RenderTransformOrigin$ 0.5,0.5&�6�   $��0,0,5,0q�6�   
�������
���  ��z�5      V� 5      .~�5      �� �� 5      	 �� AngleY$	 0.716Q�6(   �� 5      
 �� Angle$
 -0.526Q�6*   T� 5       T� Y$ -0.237Q�6-   5      5      �� 5      $��	Salary/h:��6   $��0,5,5,5q�6(   �� 5       -   5        $��	txtSalary��5        �� TextWrapping$
 Wrap=�6'   $��13��6;   5!      �� 5"   
   -   5        $��grpData��5"      $
��Data��6"   $��
5,10,10,10q�60   $y�Visible=�6D   $��1��6Y   .��5#      �� .+�5$      �� $��Time worked:��6   $��24��6/   $	��158��6;   $��0,5,5,5q�6G   �� 5%      -   5         ��Name$ txtWorkingTime��5%      $
 Wrap=�62   $��00:00:00��6F   �� 5'      $��Clocked in:��6   $��24��6.   $	��158��6:   $��0,5,5,5q�6F   �� 5(      -   5        $ txtClockedIn��5(      $
 Wrap=�60   $��00:00:00��6D   �� 5+      $��Clocked out:��6   $��24��6/   $	��158��6;   $��0,5,5,5q�6G   �� 5,      -	   5        $��txtClockedOut��5,      $
 Wrap=�6/   $��00:00:00��6C   �� 5.      $��Money Earned:��6   $��24��60   $	��158��6<   $��0,5,5,0q�6H   �� 5/      -
   5        $ txtTotalRevenue��5/      $
 Wrap=�63   $��€0,00��6G   50      51      �� 52   
   -   5        $��btnCloseSettings��52      $��
Close Menu��6)   $
��Left=�6>   $��
10,220,0,0q�6Y   $	��Top=�6m   $	��100��6�   6�   �� 53   
   -   5        $ btnSave��53      $��Save Day��6"   ${�False��65   $
��Left=�6G   $��
10,195,0,0q�6b   $	��Top=�6v   $	��100��6�   6�   54      55      