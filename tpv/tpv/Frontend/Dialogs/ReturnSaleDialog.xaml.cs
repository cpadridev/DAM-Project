using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using tpv.Backend.Models;
using tpv.MVVM;

namespace tpv.Frontend.Dialogs
{
    /// <summary>
    /// Lógica de interacción para ReturnSaleDialog.xaml
    /// </summary>
    public partial class ReturnSaleDialog : MetroWindow
    {
        private MVSale mvSale;
        public ReturnSaleDialog(tpvEntities tpvEntities)
        {
            InitializeComponent();
            mvSale = new MVSale(tpvEntities);
            DataContext = mvSale;
        }

        private void btnDeleteFilters_Click(object sender, RoutedEventArgs e)
        {
            mvSale.salesListColletion.Filter = null;
        }

        private async void btnDateFilter_Click(object sender, RoutedEventArgs e)
        {
            if (mvSale.endingDate >= mvSale.startingDate)
            {
                mvSale.salesListColletion.Filter = new Predicate<object>(mvSale.DateFilter);
            }
            else
            {
                await this.ShowMessageAsync("DEVOLVER VENTA", "ERROR!!!. La fecha inicial no puede ser mayor que la final");
            }
        }

        private async void btnDeleteSale_Click(object sender, RoutedEventArgs e)
        {
            if (dataGridSales.SelectedItem != null)
            {
                if (dataGridSales.SelectedItem is sale)
                {
                    sale sale = (sale)(dataGridSales.SelectedItem);
                    List<sale_details> salesDetails = sale.sale_details.ToList();
                    bool error = true;

                    for (int i = 0; i < salesDetails.Count; i++)
                    {
                        sale_details saleDetail = salesDetails[i];

                        if (!mvSale.DeleteSaleDetails(saleDetail))
                        {
                            error = false;
                        }

                    }

                    if (error)
                    {
                        if (mvSale.DeleteSale(sale))
                        {
                            mvSale.salesListColletion.Remove((sale)(dataGridSales.SelectedItem));


                            await this.ShowMessageAsync("DEVOLVER VENTA", "Venta eliminada correctamente.");
                            dataGridSales.Items.Refresh();
                        }
                        else
                        {
                            await this.ShowMessageAsync("DEVOLVER VENTA", "ERROR!!!. No se pudo eliminar la venta.");
                        }

                    }
                    else
                    {
                        await this.ShowMessageAsync("DEVOLVER VENTA", "ERROR!!!. No se pudieron eliminar los productos.");
                    }
                }
                else
                {
                    await this.ShowMessageAsync("DEVOLVER VENTA", "ERROR!!!. Debes seleccionar una venta.");
                }
            }
        }
    }
}
