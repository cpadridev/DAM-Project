   M S B A M L   `   `   `  ����>  :tpv, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:tpv.Frontend.Dialogstpv.Frontend.Dialogs  5   	   -    'tpv.Frontend.Dialogs.MakePurchaseDailog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f6mah,http://metro.mahapps.com/winfx/xaml/controls  5   	   c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a=mat1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   0local"clr-namespace:tpv.Frontend.Dialogs   5   	     � 
ResizeMode$  NoResize=�5
   	   (  "MahApps.Metro.Controls.MetroWindow   ShowMaxRestoreButton .     ShowMinButton .   � WindowStartupLocation$ CenterScreen=�5   	    � Title$ REALIZAR VENTA��5   	    � SizeToContent$ WidthAndHeight=�6    .��5      �  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��3��6   $��Venta��6(   $��42(�65   $��0, 25, 0, 25q�6C   $��Center=�6Y   &   System.Windows.Controls.DataGrid  5    
   -   5          Name$ dataGridSaleDetails��5    �   $��1��6   $��3��6    $��30q�64   $	��300��6@   	   
IsReadOnly	 . 
   CanUserReorderColumns
 .     CanUserResizeColumns .     CanUserResizeRows .     AutoGenerateColumns .  ��6�   �� *newSale.sale_details+   Columns 5!      0  *System.Windows.Controls.DataGridTextColumn  5"      ,  &System.Windows.Controls.DataGridColumn   Header$ Producto��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 190 67   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6C   �� *product.name+  5#      $ Cantidad��6%   $	 120 67    6C   �� *
quantity+  5$      $ Precio��6%   $	 120 65    6A   �� *product.price+  5%      $ Oferta��6%   $	 120 65    6A   �� *product.offer.discount+  5&      $	 IVA��6%   $	 120 62    6>   �� *product.iva+  5'      $ Total��6%   $	 120 64    6@   �� *price+5)      �� 5+   
   -   5         ��Name$ cbxUser��5+   S   $��2��6   $��0��6    $��30, 30, 0, 30q�60   $	��170��6G    �� 
IsEditable .  �� 
IsReadOnly .  �� Text$ Selecciona un usuario *��6   �� DisplayMemberPath$ username��6*  ��6d   �� *	usersList+ �� SelectedItem 6�   �� *newSale.user+ �� ValidatesOnDataErrors .  �� NotifyOnValidationError . 6*  (  "System.Windows.Controls.DatePicker  5,   
   -   5          Name$ dtpDate��5,   J   $��2��6   $��1��6"   $��30q�62   $	��170��6>      SelectedDate 6[   �� *newSale.date+�� 5-   
   -   5        $ cbxCustomer��5-   S   $��2��6   $��2��6    $��0, 30, 30, 30q�60   $	��170��6G    .  . $ Selecciona un cliente *��6  $
 name��66  ��6h   �� *customersList+ 6�   �� *newSale.customer+ .  . 66  � 5/   
   $��3��6   $��3��6   $��Center=�60    50      �� 51      $
��Auto �6#   �� 52      $
��Auto �6#   .+�55      �� -   5        $ 
cbxPayment��55   ?   $��0��6   $��30q�6'   $	��170��63    .  . $ Selecciona un pago *��6   ��6S   �� *paymentsList+ 6x   �� *newSale.payment+ .  . 6   �� 56      $��1��6    �� Orientation$ 
Horizontal=�6)   $��Center=�6B   .+�57      �� $��0q�6   $��TOTAL: ��6'   $��36(�66   �� 58      $��10, 0, 0, 0q�6   $��36(�6P   ��61   �� *newSale.total+6P   �� 59      $��10, 0, 0, 0q�6   $	��€��61   $��36(�6:   5:      5;      �� 5=   
   -   5         ��Name$ txtCamposObligatorios��5=   �   $��4��6   $��3��6!   $+��%Los campos con un * son obligatorios.��65   $
��Bold"�6b   $��Center=�6t   $��0, 15q�6�   �� 5?   
   $��5��6   $��3��6"   $ 
Horizontal=�66   $��Center=�6O   .+�5@      �� -   5         ��Name$ 	btnAccept��5@   �   $��0, 30, 30, 30q�6   $��Aceptar��6,    �� 	IsDefault .     MaterialDesignOutlinedButton#��[  6O   $��48��6�   $	��130��6�   6�   �� 5A      -   5        $ 	btnCancel��5A   �   $��30, 30, 0, 30q�6   $��Cancelar��6,   #��[  6?   $��48��6u   $	��130��6�   6�   5B      5C      5D      