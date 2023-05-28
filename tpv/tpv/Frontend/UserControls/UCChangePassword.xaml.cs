using MahApps.Metro.Controls.Dialogs;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using tpv.Backend.Models;
using tpv.MVVM;

namespace tpv.Frontend.UserControls
{
    /// <summary>
    /// Lógica de interacción para UCChangePassword.xaml
    /// </summary>
    public partial class UCChangePassword : UserControl
    {
        private MVUser mvUser;

        public UCChangePassword(tpvEntities tpvEntities, user user)
        {
            InitializeComponent();
            mvUser = new MVUser(tpvEntities, user);
            DataContext = mvUser;
        }

        private async void btnAccept_Click(object sender, RoutedEventArgs e)
        {
            MetroWindow window = Window.GetWindow(this) as MetroWindow;
            if (window != null)
            {
                if (!string.IsNullOrEmpty(pwdActual.Password) && !string.IsNullOrEmpty(pwdNew.Password) && !string.IsNullOrEmpty(pwdConfirm.Password))
                {
                    if (pwdActual.Password.Equals(mvUser.userLoggedIn.password) && pwdNew.Password.Equals(pwdConfirm.Password))
                    {
                        mvUser.userLoggedIn.password = pwdNew.Password;

                        if (mvUser.Update(mvUser.userLoggedIn))
                        {
                            await window.ShowMessageAsync("CAMBIAR CONTRASEÑA", "TODO CORRECTO. La contraseña se ha actualizado correctamente");
                            pwdActual.Password = "";
                            pwdNew.Password = "";
                            pwdConfirm.Password = "";
                        }
                        else
                        {
                            await window.ShowMessageAsync("CAMBIAR CONTRASEÑA", "ERROR!!!. PROBLEMAS PARA GUARDAR EN LA BASE DE DATOS");
                        }
                    }
                    else
                    {
                        await window.ShowMessageAsync("CAMBIAR CONTRASEÑA", "ERROR!!!. Las contraseñas no coinciden");
                    }
                }
                else
                {
                    txtCamposObligatorios.Foreground = Brushes.Red;
                    txtCamposObligatorios.Text = "Debes rellenar todos los campos";
                }
            }
        }


        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            Window.GetWindow(this).Close();
        }
    }
}
