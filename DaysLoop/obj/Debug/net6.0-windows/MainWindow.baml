   M S B A M L   `   `   `  ����C  ?DaysLoop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DaysLoopDaysLoop  5   	       DaysLoop.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:DaysLoop     5   	   -   5          � AllowsTransparency$
  True��5   	    � Title$ How long��6#   $��77��5	   	   $	��200��6   $��Center=�5
   	   $��Center=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowStyle$
 None=�5   	    � SizeToContent$ Manual=�6    � 
ResizeMode$ NoResize=�5   	    � Topmost$
 True��5   &   ��5      �� 5   
    �� Opacity$ 0Q�6    �� Color$ White��6&   .��5      � 	 � ColumnDefinitions	 5   
   �� 5      $	��200 �6   
 � RowDefinitions
 5   
   �� 5      $	��100 �6   .+�5   
      DaysLoop.Counter  $��0,0,0,23q�6   �� 5   
   -   5         ��Name$ btnClose��5      $��X��6#   $��21��6/   $��23��6;   $��14(�6F   $
��Left=�6T   $	��Top=�6o    J� RenderTransformOrigin$ 2.064,0.309&�6�   $��	177,0,0,0q�6�    � Cursor$
 Hand��6-  
�������$��0,0,0,0q�6e  ��6�   Z� ��6;  Z� 6e  �� 5   
   -   5        $ btnMinimize��5      $��-��6&   $��21��62   $��23��6>   $��14(�6I   $
��Left=�6W   $	��Top=�6r   $ 2.064,0.309&�6�   $��	154,0,0,0q�6�   $
 Hand��6�   
�������$��0,0,0,0q�6)  ��6�   Z� ��6�   Z� 6)  �� 5   
   -   5        $ btnSettings��5      $��?��6&   $��21��62   $��23��6>   $��14(�6I   $
��Left=�6W   $	��Top=�6r   $ 2.064,0.309&�6�   $
 Hand��6�   
�������$��0,0,0,0q�6  ��6�   Z� ��6�   Z� 6  5      5      