using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace DaysLoop
{
    /// <summary>
    /// Interaction logic for Counter.xaml
    /// </summary>
    public partial class Counter : UserControl
    {
        DispatcherTimer dispatcherTimer = new DispatcherTimer();
        public Counter()
        {
            InitializeComponent();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
            dispatcherTimer.Start();
            updateTimer();
        }
        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            updateTimer();
        }
        void updateTimer()
        {
            DateTime now = DateTime.Now;
            DateTime date1 = new DateTime(now.Year, now.Month, now.Day, now.Hour, now.Minute, now.Second);
            DateTime date2 = new DateTime(now.Year, now.Month, now.Day, 17, 0, 0);
            TimeSpan value = date2.Subtract(date1);
            lblTimeLeft.Content = value;
            if (value.ToString().Contains('-'))
            {
                lblTimeLeft.Foreground = new SolidColorBrush(Colors.Red);
            }
        }
    }
}
