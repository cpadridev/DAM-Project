using MahApps.Metro.Controls;
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
using System.Windows.Shapes;
using tpv.Backend.Models;
using tpv.Backend.Services;
using tpv.Frontend.UserControls;
using tpv.MVVM;

namespace tpv.Frontend.Dialogs
{
    /// <summary>
    /// Lógica de interacción para EditProfileDialog.xaml
    /// </summary>
    public partial class EditProfileDialog : MetroWindow
    {
        private tpvEntities tpvEntities;
        private UserService userServ;
        private MVUser mvUser;

        public EditProfileDialog(tpvEntities tpvEntities, user user)
        {
            InitializeComponent();
            this.tpvEntities = tpvEntities;
            userServ = new UserService(tpvEntities);
            userServ.userLoggedIn = user;
            mvUser = new MVUser(tpvEntities, user);
            DataContext = mvUser;
            gridCentral.Children.Add(new UCEditProfile());
        }

        private void btnProfile_Click(object sender, RoutedEventArgs e)
        {
            UCEditProfile uc = new UCEditProfile();
            if (gridCentral.Children != null)
            {
                gridCentral.Children.Clear();
                gridCentral.Children.Add(uc);
            }
        }

        private void btnChangePassword_Click(object sender, RoutedEventArgs e)
        {

            UCChangePassword uc = new UCChangePassword(tpvEntities, mvUser.userLoggedIn);
            if (gridCentral.Children != null)
            {
                gridCentral.Children.Clear();
                gridCentral.Children.Add(uc);
            }
        }
    }
}
