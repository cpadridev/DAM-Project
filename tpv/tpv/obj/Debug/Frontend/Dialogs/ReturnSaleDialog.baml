   M S B A M L   `   `   `  ����>  :tpv, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:tpv.Frontend.Dialogstpv.Frontend.Dialogs  5   	   +    %tpv.Frontend.Dialogs.ReturnSaleDialog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f6mah,http://metro.mahapps.com/winfx/xaml/controls  5   	   c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a=mat1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   0local"clr-namespace:tpv.Frontend.Dialogs   5   	     � 
ResizeMode$  NoResize=�5
   	   (  "MahApps.Metro.Controls.MetroWindow   ShowMaxRestoreButton .     ShowMinButton .   � WindowStartupLocation$ CenterScreen=�5   	    � Title$ DEVOLVER VENTA��5   	   $	��800��6    $
��1100��6-   .��5      � $��20q�6    � ColumnDefinitions 5   
   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� $��Devoluciones de ventas��6   $��42(�62   $��0, 25, 0, 25q�6@   $��Center=�6V   �� 5   
    �� Orientation$ 
Horizontal=�6   $��1��6.   $��Center=�6;   .+�5      �� $��Fecha Inicial��6   $��10q�6-   $��Center=�69   (  "System.Windows.Controls.DatePicker  5      -   5          Name$ datePickMin��5      $	��100��6T   $��10q�6`   
���   �	   SelectedDate	 6.   �� *startingDate+6l   �� 5!      $��Fecha Final��6   $��10q�6+   $��Center=�67     5"      -   5        $ datePickMax��5"      $	��100��6R   $��10q�6^   
���   �	 6.   �� *
endingDate+6j   �� 5$      -   5        
 ��Name$
 btnDateFilter��5$          MaterialDesignOutlinedButton#��[  6H   $��10q�6~   $
��Left=�6�   .��5%      �� $��Filtrar��6   $��20(�6+   5&      �� 5(      -   5        $
 btnDeleteFilters��5(      #��[  6N   $��10q�6�   .��5)      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ 	FilterOff=�6   5*      5,      �� 5.   
   $��2��6   $ 
Horizontal=�6"   $��Center=�6;   $��10q�6X   .+�5/      �� -   5        $
 btnDeleteSale��5/      #��[  6H   $��40��6~   $��	10,5,10,5q�6�   $
��Left=�6�   .��50      �� $��Elimminar venta��6   $��20(�63   51      52      � 54   
   $��4��6   .+�55      &   System.Windows.Controls.DataGrid  -   5          Name$ dataGridSales��55         
IsReadOnly .    CanUserReorderColumns .     CanUserResizeColumns .     CanUserResizeRows .     AutoGenerateColumns .  ��6.   �� *salesListColletion+   Columns 56      0  *System.Windows.Controls.DataGridTextColumn  57      ,  &System.Windows.Controls.DataGridColumn   Header$ Venta��6)      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6T   1  +System.Windows.Controls.DataGridBoundColumn   Binding 68   �� *	id_sale+6T     58      $ Usuario��6)   $ * 6\    6:   �� *user.username+6\     59      $ Fecha��6)   $ * 6Q    68   �� *date+6Q   4	  .System.Windows.Controls.DataGridTemplateColumn	  5;      $ Cliente��6-   $ * 6>    	  CellTemplate 5<      �� 5=      .R�5>   "   �� $ 
Horizontal=�6-   .+�5?   &   �� ��60   �� *customer.name+�� 5@   &   $�� ��60   �� 5A   &   ��60   �� *customer.surnames+5B   #   5C      5E        5F      $
 Pago��6)   $ * 6S    67   �� *	payment+6S     5G      $ Total��6)   $ * 6R    68   �� *total+6R      RowDetailsTemplate 5I      �� 5J      .R�5K      �  5L      �� 5M   "   $��* �63    5O      �� 5P   "   $��* �60   �� 5Q   "   $��* �60   .+�5T      �� $��Ventas de productos��6(   $��0��6C   $��10q�6P     5V         GridLinesVisibility$
 None=�6L    .  .   .   .   .  ��6'   �� *sale_details+ 5W   "     5X   &   $ Producto��69   $	 190 6K    6W   �� *product.name+  5Y   &   $ Cantidad��69   $	 120 6K    6W   �� *
quantity+  5Z   &   $ Precio��69   $	 120 6I    6U   �� *product.price+  5[   &   $ Oferta��69   $	 120 6I    6U   �� *product.offer.discount+  5\   &   $	 IVA��69   $	 120 6F    6R   �� *product.iva+  5]   &   $ Total��69   $	 120 6H    6T   �� *price+5_      5`      5a      5c      5d      5e      5f      