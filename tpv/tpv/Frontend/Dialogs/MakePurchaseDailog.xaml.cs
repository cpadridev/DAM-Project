using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using tpv.Backend.Models;
using tpv.Backend.Services;
using tpv.MVVM;

namespace tpv.Frontend.Dialogs
{
    /// <summary>
    /// Lógica de interacción para MakePurchaseDailog.xaml
    /// </summary>
    public partial class MakePurchaseDailog : MetroWindow
    {
        private UserService userServ;
        private MVSale mvSale;

        public MakePurchaseDailog(tpvEntities tpvEntities, user user, List<sale_details> sale_Details, double total)
        {
            InitializeComponent();
            userServ = new UserService(tpvEntities);
            userServ.userLoggedIn = user;
            mvSale = new MVSale(tpvEntities, user, sale_Details, total);
            DataContext = mvSale;

            this.AddHandler(Validation.ErrorEvent, new RoutedEventHandler(mvSale.OnErrorEvent));
            mvSale.btnSave = btnAccept; 
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private async void btnAccept_Click(object sender, RoutedEventArgs e)
        {
            if (mvSale.Save)
            {
                if(mvSale.AddSaleDetails())
                {
                    await this.ShowMessageAsync("GESTIÓN VENTA", "TODO CORRECTO. La venta se guardo correctamente en la BD");
                    DialogResult = true;
                }
            }
            else
            {
                await this.ShowMessageAsync("GESTIÓN VENTA", "ERROR!!!. PROBLEMAS PARA GUARDAR EN LA BASE DE DATOS");
            }
        }
    }
}
