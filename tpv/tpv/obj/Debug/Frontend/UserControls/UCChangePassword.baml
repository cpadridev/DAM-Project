   M S B A M L   `   `   `  ����>  :tpv, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:tpv.Frontend.UserControlstpv.Frontend.UserControls  5      0    *tpv.Frontend.UserControls.UCChangePassword   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      T PMahApps.Metro, Version=2.0.0.0, Culture=neutral, PublicKeyToken=51482d6f650b2b3f6mah,http://metro.mahapps.com/winfx/xaml/controls  5      c _MaterialDesignThemes.MahApps, Version=0.2.5.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a_ [MaterialDesignThemes.Wpf, Version=4.6.1.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a=mat1http://materialdesigninxaml.net/winfx/xaml/themes   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      5local'clr-namespace:tpv.Frontend.UserControls   5      .��5      �   � ColumnDefinitions  5   
   �� 5      $
��Auto �6   6.   �� 5      $
��Auto �6   6.    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��2��6   $��Cambiar Contraseña��6(   $��42(�6B   $��30, 30, 30, 0q�6P   �� 5   
   $��1��6   $��2��6!   $��30q�65   �� 5   
   $��2��6   $��0��6!   $��Contraseña Actual��61   $
��Bold"�6J   $��30, 15q�6\   $��Center=�6l   G� 5    
   -   5         G�Name$ 	pwdActual��5    ]   $��2��6   $��1��6#   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Contraseña Actual *��63   $	��300��6p   $��15, 15, 30, 15q�6|    /  +MaterialDesignFloatingHintRevealPasswordBox#��[  6�   �� 5"   
   $��3��6   $��0��6!   $��Nueva Contraseña��61   $
��Bold"�6I   $��30, 15q�6[   $��Center=�6k   G� 5#   
   -   5        $ pwdNew��5#   \   $��3��6   $��1��6#   $ Nueva Contraseña *��63   $	��300��6l   $��15, 15, 30, 15q�6x   #��[  6�   �� 5%   
   $��4��6   $��0��6!   $��Confirmar Contraseña��61   $
��Bold"�6M   $��30, 15q�6_   $��Center=�6o   G� 5&   
   -   5        $ 
pwdConfirm��5&   `   $��4��6   $��1��6#   $ Confirmar Contraseña *��63   $	��300��6t   $��15, 15, 30, 15q�6�   #��[  6�   �� 5(   
   -   5         ��Name$ txtCamposObligatorios��5(   �   $��5��6   $��3��6!   $+��%Los campos con un * son obligatorios.��65   $
��Bold"�6b   $��Center=�6t   $��0, 15q�6�   �� 5*   
   $��6��6   $��3��6"    �� Orientation$ 
Horizontal=�66   $��Center=�6O   .+�5+      �� -   5         ��Name$ 	btnAccept��5+   �   $��0, 30, 30, 30q�6   $��Aceptar��6,    �� 	IsDefault .    MaterialDesignOutlinedButton#��[ 6O   $��48��6�   $	��130��6�   6�   �� 5,      -   5        $ 	btnCancel��5,   �   $��30, 30, 0, 30q�6   $��Cancelar��6,   #��[ 6?   $��48��6u   $	��130��6�   6�   5-      5.      5/      