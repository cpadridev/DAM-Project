// Updated by XamlIntelliSenseFileGenerator 07/06/2023 12:01:14
#pragma checksum "..\..\..\..\Frontend\Dialogs\AddProduct.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "4A739F797113C3C5627D562350466BEF83BE3E22C4EA7C7A42B88C3B51A82790"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using MahApps.Metro;
using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using MaterialDesignThemes.MahApps;
using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using tpv.Frontend.Dialogs;


namespace tpv.Frontend.Dialogs
{


    /// <summary>
    /// MakePurchaseDailog
    /// </summary>
    public partial class AddProduct : MahApps.Metro.Controls.MetroWindow, System.Windows.Markup.IComponentConnector
    {


#line 33 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dataGridSaleDetails;

#line default
#line hidden


#line 44 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbxUser;

#line default
#line hidden


#line 45 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker dtpDate;

#line default
#line hidden


#line 46 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbxCustomer;

#line default
#line hidden


#line 54 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox cbxPayment;

#line default
#line hidden


#line 62 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtCamposObligatorios;

#line default
#line hidden


#line 65 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnAccept;

#line default
#line hidden


#line 66 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnCancel;

#line default
#line hidden

        private bool _contentLoaded;

        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent()
        {
            if (_contentLoaded)
            {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/tpv;component/frontend/dialogs/addproduct.xaml", System.UriKind.Relative);

#line 1 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);

#line default
#line hidden
        }

        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target)
        {
            switch (connectionId)
            {
                case 1:
                    this.dataGridSaleDetails = ((System.Windows.Controls.DataGrid)(target));
                    return;
                case 2:
                    this.cbxUser = ((System.Windows.Controls.ComboBox)(target));
                    return;
                case 3:
                    this.dtpDate = ((System.Windows.Controls.DatePicker)(target));
                    return;
                case 4:
                    this.cbxCustomer = ((System.Windows.Controls.ComboBox)(target));
                    return;
                case 5:
                    this.cbxPayment = ((System.Windows.Controls.ComboBox)(target));
                    return;
                case 6:
                    this.txtCamposObligatorios = ((System.Windows.Controls.TextBlock)(target));
                    return;
                case 7:
                    this.btnAccept = ((System.Windows.Controls.Button)(target));

#line 65 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
                    this.btnAccept.Click += new System.Windows.RoutedEventHandler(this.btnAccept_Click);

#line default
#line hidden
                    return;
                case 8:
                    this.btnCancel = ((System.Windows.Controls.Button)(target));

#line 66 "..\..\..\..\Frontend\Dialogs\AddProduct.xaml"
                    this.btnCancel.Click += new System.Windows.RoutedEventHandler(this.btnCancel_Click);

#line default
#line hidden
                    return;
            }
            this._contentLoaded = true;
        }
    }
}

