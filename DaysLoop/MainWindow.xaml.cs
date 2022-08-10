using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Threading;

namespace DaysLoop
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

        }



        private void Window_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            base.Close();
        }

        private void btnClose_MouseEnter(object sender, MouseEventArgs e)
        {
            btnClose.Foreground = new SolidColorBrush(Colors.Red);
        }

        private void btnClose_MouseLeave(object sender, MouseEventArgs e)
        {
            btnClose.Foreground = new SolidColorBrush(Colors.White);
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
           base.WindowState = WindowState.Minimized;
        }
        Settings settings = new Settings();
        private void btnSettings_Click(object sender, RoutedEventArgs e)
        {  
            settings.Show();
        }
    }
}
