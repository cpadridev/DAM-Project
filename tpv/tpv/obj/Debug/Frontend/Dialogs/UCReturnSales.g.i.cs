﻿#pragma checksum "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "CB08291913CBC68C45018373BEC25A13A3BC6E2A8516F13FCA4449F3EFE35C00"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

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


namespace tpv.Frontend.Dialogs {
    
    
    /// <summary>
    /// UCReturnSales
    /// </summary>
    public partial class UCReturnSales : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 28 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker datePickMin;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker datePickMax;
        
        #line default
        #line hidden
        
        
        #line 33 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnFiltroFecha;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnQuitarFiltros;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnRestaVenta;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid datagridDevol;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/tpv;component/frontend/dialogs/ucreturnsales.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
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
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.datePickMin = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 2:
            this.datePickMax = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 3:
            this.btnFiltroFecha = ((System.Windows.Controls.Button)(target));
            
            #line 33 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
            this.btnFiltroFecha.Click += new System.Windows.RoutedEventHandler(this.btnFiltroFecha_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.btnQuitarFiltros = ((System.Windows.Controls.Button)(target));
            
            #line 37 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
            this.btnQuitarFiltros.Click += new System.Windows.RoutedEventHandler(this.btnQuitarFiltros_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            this.btnRestaVenta = ((System.Windows.Controls.Button)(target));
            
            #line 44 "..\..\..\..\Frontend\Dialogs\UCReturnSales.xaml"
            this.btnRestaVenta.Click += new System.Windows.RoutedEventHandler(this.btnRestaVenta_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.datagridDevol = ((System.Windows.Controls.DataGrid)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}
