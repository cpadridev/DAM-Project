using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using tpv.Backend.Models;
using tpv.Backend.Services;
using tpv.MVVM;

namespace tpv.Frontend.Dialogs
{
    /// <summary>
    /// Lógica de interacción para EditProductDailog.xaml
    /// </summary>
    public partial class EditProductDialog : MetroWindow
    {
        private MVProduct mvProduct;
        private CategoryService categoryService;
        private bool edit;

        public EditProductDialog(tpvEntities tpvEntities, bool edit)
        {
            InitializeComponent();
            mvProduct = new MVProduct(tpvEntities);
            this.edit = edit;
            DataContext = mvProduct;

            this.AddHandler(Validation.ErrorEvent, new RoutedEventHandler(mvProduct.OnErrorEvent));
            mvProduct.btnSave = btnAccept;

            if (edit)
            {
                panelEditProduct.Visibility = Visibility.Visible;
                gridContent.IsEnabled = false;
                categoryService = new CategoryService(tpvEntities);
                cbxCategories.ItemsSource = categoryService.GetAll().ToList();
            }
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private async void btnAccept_Click(object sender, RoutedEventArgs e)
        {
            if (edit)
            {
                if (mvProduct.Update(mvProduct.newProduct))
                {
                    await this.ShowMessageAsync("GESTIÓN VENTA", "TODO CORRECTO. El producto se modificó correctamente.");
                    DialogResult = true;
                }
                else
                {
                    await this.ShowMessageAsync("GESTIÓN VENTA", "ERROR!!!. PROBLEMAS PARA GUARDAR EN LA BASE DE DATOS");
                }
            }
            else
            {
                if (mvProduct.Save)
                {
                    await this.ShowMessageAsync("GESTIÓN VENTA", "TODO CORRECTO. El producto se creó correctamente.");
                    DialogResult = true;
                }
                else
                {
                    await this.ShowMessageAsync("GESTIÓN VENTA", "ERROR!!!. PROBLEMAS PARA GUARDAR EN LA BASE DE DATOS");
                }
            }
        }

        private void cbxCategories_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            cbxProducts.SelectedItem = null;
            cbxProducts.IsEnabled = true;
            gridContent.IsEnabled = false;
            cbxProducts.Text = "Selecciona un producto *";
            cbxProducts.ItemsSource = categoryService.GetProductsByCategory(cbxCategories.SelectedItem as category);
        }

        private void cbxProducts_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            mvProduct.newProduct = cbxProducts.SelectedItem as product;
            gridContent.IsEnabled = true;
        }
    }
}
