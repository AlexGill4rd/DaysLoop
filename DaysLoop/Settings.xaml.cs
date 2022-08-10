using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Threading;

namespace DaysLoop
{
    /// <summary>
    /// Interaction logic for Settings.xaml
    /// </summary>
    public partial class Settings : Window
    {
        DateTime clockInTime;
        TimeSpan timeWorked;
        DispatcherTimer dispatcherTimer = new DispatcherTimer();
        public Settings()
        {
            InitializeComponent();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
        }
        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            updateTimer();
        }
        void updateTimer()
        {
            timeWorked = DateTime.Now.Subtract(clockInTime);
            txtWorkingTime.Text = timeWorked.ToString(@"dd\.hh\:mm\:ss");
            float salary = float.Parse(txtSalary.Text);
            float revenue = ((float)timeWorked.Hours * salary) + ((float)timeWorked.Minutes / 60 * salary) + ((float)timeWorked.Seconds / 60 / 60 * salary);
            txtTotalRevenue.Text = "€" + revenue.ToString("0.00");
        }
        private void btnClockIn_Click(object sender, RoutedEventArgs e)
        {
            grpData.Visibility = Visibility.Visible;
            btnClockIn.IsEnabled = false;
            btnClockOut.IsEnabled = true;
            lblClockedState.Content = "Clocked in!";
            lblClockedState.Foreground = new SolidColorBrush(Colors.Lime);
            clockInTime = DateTime.Now;
            clockInTime.AddHours(5);
            clockInTime.AddMinutes(40);
            txtClockedIn.Text = clockInTime.ToString(@"hh\:mm\:ss");
            dispatcherTimer.Start();
        }

        private void btnClockOut_Click(object sender, RoutedEventArgs e)
        {
            DateTime clockedOutTime = DateTime.Now;
            dispatcherTimer.Stop();
            timeWorked = clockedOutTime.Subtract(clockInTime);
            btnClockIn.IsEnabled = true;
            btnClockOut.IsEnabled = false;
            lblClockedState.Content = "Not clocked in!";
            lblClockedState.Foreground = new SolidColorBrush(Colors.Red);
            txtClockedOut.Text = clockedOutTime.ToString(@"hh\:mm\:ss");
            float salary = float.Parse(txtSalary.Text);
            float revenue = ((float)timeWorked.Hours * salary) + ((float)timeWorked.Minutes / 60 * salary) + ((float)timeWorked.Seconds / 60 / 60 * salary);
            txtTotalRevenue.Text = "€" + revenue.ToString();
        }

        private void btnCloseSettings_Click(object sender, RoutedEventArgs e)
        {
            base.Hide();
        }

        private void Window_MouseDown(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }
    }
}
