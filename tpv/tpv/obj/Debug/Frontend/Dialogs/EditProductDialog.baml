   M S B A M L   `   `   `  ����>  :tpv, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:tpv.Frontend.Dialogstpv.Frontend.Dialogs  5   	   ,    &tpv.Frontend.Dialogs.EditProductDialog   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f6mah,http://metro.mahapps.com/winfx/xaml/controls  5   	   c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a=mat1http://materialdesigninxaml.net/winfx/xaml/themes   5   	   0local"clr-namespace:tpv.Frontend.Dialogs   5   	     � 
ResizeMode$  NoResize=�5
   	   (  "MahApps.Metro.Controls.MetroWindow   ShowMaxRestoreButton .     ShowMinButton .   � WindowStartupLocation$ CenterScreen=�5   	    � Title$ EDITAR PRODUCTO��5   	    � SizeToContent$ WidthAndHeight=�6!   .��5      �  � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��3��6   $��Producto��6(   $��42(�68   $��0, 25, 0, 25q�6F   $��Center=�6\   �� 5   
   -   5         ��Name$ panelEditProduct��5   l   $��2��6   $��1��6)   	 �� Orientation$	 
Horizontal=�66   $��Center=�6O   $y�	Collapsed=�6�   .+�5      �� -   5        
 ��Name$
 cbxCategories��5   W   $��0��6   $��0��6$   $��30, 30, 0, 30q�64   $	��170��6K    �� 
IsEditable .  �� 
IsReadOnly .  �� Text$! Selecciona una categoría *��6�    �� DisplayMemberPath$
 name��6�   �� 5      -   5        $
 cbxProducts��5   W   $��0��6   $��0��6$   $��30, 30, 0, 30q�64   $	��170��6K   {�.   .  . $ Selecciona un producto *��6�   $
 name��6�   5      � 5!   
   -   5         �Name$ gridContent��5!   0   $��2��6   $��2��6#    5"      �� 5#      $
��Auto �6#   �� 5$      $
��Auto �6#   �� 5%      $
��Auto �6#    5'      �� 5(      $
��Auto �6    �� 5)      $
��Auto �6    �� 5*      $
��Auto �6    �� 5+      $
��Auto �6    �� 5,      $
��Auto �6    �� 5-      $
��Auto �6    �� 5.      $
��Auto �6    .+�51      �� $��0��6   $��0��6&   $��30, 30, 0, 30q�66   .+�52      �� $��Nombre *��6   $��Center=�6,   �� 53      -   5         ��Name$ txbName��53      $	��170��6+   ��67   �� *newProduct.name+ �� ValidatesOnDataErrors .  �� NotifyOnValidationError .  �� UpdateSourceTrigger$ PropertyChanged=�54      �� 55      $��0��6   $��1��6&   $��30, 30, 0, 30q�66   .+�56      �� $��Precio *��6   $��Center=�6,   �� 57      -   5        $ txbPrice��57      $	��170��6,   ��68   �� *newProduct.price+ .  . $ PropertyChanged=�58      �� 59      $��0��6   $��2��6&   $��30, 30, 0, 30q�66   .+�5:      �� $��
Cantidad *��6   $��Center=�6.   �� 5;      -   5        $ txbQuantity��5;      $	��170��6/   ��6;   �� *newProduct.quantity+ .  . $ PropertyChanged=�5<      �� 5>      $��1��6   $��3��6&   $	 
Horizontal=�6:   $��Center=�6S   .+�5?      �� -   5        $
 cbxIVA��5?   >   $��30, 30, 0, 30q�6   $	��170��62    .  . $ Selecciona el IVA *��6�   ��6N   �� *
ivasList+ �� SelectedItem 6o   �� *newProduct.iva+ .  . 6�   5@      �� 5B      -	   5        $ txbDescripcion��5B     $��2��6   $��3��6#   $��10, 30, 0, 10q�67    �� TextWrapping$
 Wrap=�6v    !  MaterialDesignOutlinedTextBox#��[  6�   $	��400��6�   $��80��6�   .  (MaterialDesignThemes.Wpf.TextFieldAssist   TextFieldCornerRadius$ 25��6�   ��6N   �� *newProduct.description+.��6    � 	Resources 5C      (  "MaterialDesignThemes.Wpf.SmartHint �� 
TargetType �� Property �� Value��%V   '        �� 5D      "  6   .�5E      ��  � ��$ Center=�6@   5F      5G      .��6%   )  #MaterialDesignThemes.Wpf.HintAssist   Hint 5H      �� 5I      $��Descripción��6    
�������63   .��5J   '   5K      �� 5L      -
   5        $
 cbxCategory��5L   W   $��3��6   $��0��6$   $��30, 30, 0, 30q�64   $	��170��6K    .  . $! Selecciona una categoría *��6  $
 name��6A  ��6l   �� *categoriesList+ 6�   �� *newProduct.category+ .  . 6A  �� 5M      -   5        $
 cbxLocation��5M   W   $��3��6   $��1��6$   $��0, 30, 30, 30q�64   $	��170��6K    .  . $! Selecciona una ubicación *��6  $
 name��6@  ��6l   �� *locationsList+ 6�   �� *newProduct.location+ .  . 6@  �� 5N      -   5        $
 cbxOffer��5N   W   $��3��6   $��2��6$   $��0, 30, 30, 30q�64   $	��170��6K    .  . $ Selecciona una oferta��6  $ description��62  ��6i   �� *
offersList+ 6�   �� *newProduct.offer+ .  . 62  �� 5P      $��4��6   $��0��6&   $��30q�66   .+�5Q      �� $��Fecha caducidad��6   $��Center=�63   (  "System.Windows.Controls.DatePicker  5R      -   5          Name$ dtpExpirationDate��5R   )   $	��170��6      SelectedDate 6D   �� *newProduct.expiration_date+5S      �� 5T      $��4��6   $��1��6&   $��30q�66   .+�5U      �� $��Inicio temporada��6   $��Center=�64     5V      -   5        $ dtpStartDate��5V   )   $	��170��6    6?   �� *newProduct.start_season+5W      �� 5X      $��4��6   $��2��6&   $��30q�66   .+�5Y      �� $��Fin temporada��6   $��Center=�61     5Z      -   5        $ 
dtpEndDate��5Z   )   $	��170��6    6=   �� *newProduct.end_season+5[      �� 5]      -   5         ��Name$ txtCamposObligatorios��5]   �   $��5��6   $��3��6%   $+��%Los campos con un * son obligatorios.��69   $
��Bold"�6f   $��Center=�6x   $��0, 15q�6�   �� 5_      $��6��6   $��3��6&   $	 
Horizontal=�6:   $��Center=�6S   .+�5`      �� -   5         ��Name$ 	btnAccept��5`   �   $��0, 30, 30, 30q�6   $��Aceptar��60     �� 	IsDefault  .    MaterialDesignOutlinedButton#��[ 6S   $��48��6�   $	��130��6�   6�   �� 5a      -   5        $ 	btnCancel��5a   �   $��30, 30, 0, 30q�6   $��Cancelar��60   #��[ 6C   $��48��6y   $	��130��6�   6�   5b      5c      5d      5e      