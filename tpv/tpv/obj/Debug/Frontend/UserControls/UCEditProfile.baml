   M S B A M L   `   `   `  ����>  :tpv, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:tpv.Frontend.UserControlstpv.Frontend.UserControls  5      -    'tpv.Frontend.UserControls.UCEditProfile   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f6mah,http://metro.mahapps.com/winfx/xaml/controls  5      c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a=mat1http://materialdesigninxaml.net/winfx/xaml/themes   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      5local'clr-namespace:tpv.Frontend.UserControls   5      .��5      �   � ColumnDefinitions  5   
   �� 5      $
��Auto �6   6.   �� 5      $
��Auto �6   6.    � RowDefinitions 5   
   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��Auto �6   6,   �� 5      $
��auto �6   6,   .+�5   
   �� $��2��6   $��Editar Perfil��6(   $��42(�6=   $��30, 30, 30, 0q�6K   �� 5   
   $��1��6   $��2��6!   $��30q�65   �� 5!   
   $��2��6   $��0��6!   $��Nombre��61   $
��Bold"�6?   $��30, 15q�6Q   $��Center=�6a   �� 5"   
   $��2��6   $��1��6    �� 
IsReadOnly . $	��300��6d   $��15, 15, 30, 15q�6p   ��6/   �� *userLoggedIn.name+6p   �� 5$   
   $��3��6   $��0��6!   $��	Apellidos��61   $
��Bold"�6B   $��30, 15q�6T   $��Center=�6d   �� 5%   
   $��3��6   $��1��6    . $	��300��6h   $��15, 15, 30, 15q�6t   ��6/   �� *userLoggedIn.username+6t   �� 5'   
   $��4��6   $��0��6!   $��Nombre de Usuario��61   $
��Bold"�6J   $��30, 15q�6\   $��Center=�6l   �� 5(   
   $��4��6   $��1��6    . $	��300��6h   $��15, 15, 30, 15q�6t   ��6/   �� *userLoggedIn.username+6t   �� 5*   
   $��5��6   $��0��6!   $��Correo Electrónico��61   $
��Bold"�6K   $��30, 15q�6]   $��Center=�6m   �� 5+   
   $��5��6   $��1��6    . $	��300��6e   $��15, 15, 30, 15q�6q   ��6/   �� *userLoggedIn.email+6q   �� 5-   
   $��6��6   $��0��6!   $��
Dirección��61   $
��Bold"�6B   $��30, 15q�6T   $��Center=�6d   �� 5.   
   $��6��6   $��1��6    . $	��300��6g   $��15, 15, 30, 15q�6s   ��6/   �� *userLoggedIn.address+6s   �� 50   
   $��7��6   $��0��6!   $��Número de Teléfono��61   $
��Bold"�6K   $��30, 15q�6]   $��Center=�6m   �� 51   
   $��7��6   $��1��6    . $	��300��6e   $��15, 15, 30, 15q�6q   ��6/   �� *userLoggedIn.phone+6q   �� 53   
   $��8��6   $��0��6!   $��Ciudad��61   $
��Bold"�6?   $��30, 15q�6Q   $��Center=�6a   �� 54   
   $��8��6   $��1��6    . $	��300��6d   $��15, 15, 30, 15q�6p   ��6/   �� *userLoggedIn.city+6p   �� 56   
   $��9��6   $��0��6!   $��Código Postal��61   $
��Bold"�6F   $��30, 15, 30, 30q�6X   $��Center=�6p   �� 57   
   $��9��6   $��1��6    . $	��300��6h   $��15, 15, 30, 30q�6t   ��6/   �� *userLoggedIn.zip_code+6t   58      59      