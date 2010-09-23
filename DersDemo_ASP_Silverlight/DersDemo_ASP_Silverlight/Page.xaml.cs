using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;

namespace DersDemo_ASP_Silverlight
{
    public partial class Page : UserControl
    {
        public Page()
        {
            InitializeComponent();

            b1.Click += new RoutedEventHandler(b1_Click);
        }

        public static readonly Brush br1 = new SolidColorBrush(Color.FromArgb(255, 0, 0, 0xFF));
        public static readonly Brush br2 = new SolidColorBrush(Color.FromArgb(255, 0XFF, 0, 0));

        void b1_Click(object sender, RoutedEventArgs e)
        {
            
            if (b1.Foreground == br1)
            {
                b1.Foreground = br2;
            }
            else
            {
                b1.Foreground = br1;
            }
        }
    }
}
