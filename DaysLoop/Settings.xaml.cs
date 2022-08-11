using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.IO;
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
        bool clockedIn = false;
        float revenue = 0;
        public Settings()
        {
            InitializeComponent();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
            loadData();
        }
        private void loadData() {
            if (File.Exists("data.txt"))
            {
                string[] lines = File.ReadAllLines(@"data.txt");
                foreach (string line in lines)
                {
                    JObject jsonObject = JObject.Parse(line);
                    clockInTime = (DateTime)jsonObject["ClockInTime"];
                    timeWorked = TimeSpan.Parse((string)jsonObject["TimeWorked"]);
                    clockedIn = (bool)jsonObject["Clocked"];
                    updateTimer();
                    if (clockedIn)
                    {
                        grpData.Visibility = Visibility.Visible;
                        btnClockIn.IsEnabled = false;
                        btnClockOut.IsEnabled = true;
                        lblClockedState.Content = "Clocked in!";
                        lblClockedState.Foreground = new SolidColorBrush(Colors.Lime);
                        txtClockedIn.Text = clockInTime.ToString(@"hh\:mm\:ss");
                        dispatcherTimer.Start();
                    }
                    else
                    {
                        dispatcherTimer.Stop();
                        btnClockIn.IsEnabled = true;
                        btnClockOut.IsEnabled = false;
                        grpData.Visibility = Visibility.Hidden;
                        lblClockedState.Content = "Not clocked in!";
                        lblClockedState.Foreground = new SolidColorBrush(Colors.Red);
                    }
                    return;
                }
            }
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
            revenue = ((float)timeWorked.Hours * salary) + ((float)timeWorked.Minutes / 60 * salary) + ((float)timeWorked.Seconds / 60 / 60 * salary);
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
            txtClockedIn.Text = clockInTime.ToString(@"hh\:mm\:ss");
            dispatcherTimer.Start();
            clockedIn = true;
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
            clockedIn = false;
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

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            var path = "data.txt";
            if (clockedIn)
            {
                var data = new
                {
                    ClockInTime = clockInTime,
                    TimeWorked = timeWorked,
                    Clocked = clockedIn,
                };
                string jsonData = JsonConvert.SerializeObject(data);
                File.WriteAllText(path, jsonData);
            }
            else
            {
                if (File.Exists(path))
                {
                    File.Delete(path);
                }
            }
        }
    }
}
