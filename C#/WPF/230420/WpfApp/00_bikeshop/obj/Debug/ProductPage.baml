   M S B A M L   `   `   `  ����F  B03_bikeshop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:_03_bikeshop_03_bikeshop  5          _03_bikeshop.ProductPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:_03_bikeshop     5        N� Title$  ProductPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      �� 5       � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��60 �6   �� 5      $��1* �6   .+�5   
   �� $��0��6   $��0��6   $��2��6-   $��● 제품 관리��6A   $��20(�6S   $��	ExtraBold"�6a   $��10q�6x   � 5   
   $��1��6   $��0��6   $��2��6,    5      �� 5      $��80 �6#   �� 5      .+�5      �� $��	검색어��6   $��20(�6"   $��Center=�60   �� 5      -   5         ��Name$ 	TxtSearch��5   &   $��1��6   $��16(�69   $��10q�6G   6S   5       &   System.Windows.Controls.DataGrid  5"   
   -   5          Name$ DgrProducts��5"      $��2��6(   $��0��65   $��10q�6E   �� 5$   
   $��2��6   $��1��6    $��10q�60   $��제품 정보��6<    � DataContext 6K   �� *SelectedItem+ �� ElementName$ DgrProducts��.��5%      �� .+�5&      �� $��	제품명��6   $
��Bold"�6&   $��16(�68   �� 5'      $��15(�6   $
��5, 0q�6(   ��66   �� *Title+�� 5(      $��가격��6   $
��Bold"�6%   $��16(�67   �� 5)      $��15(�6   $
��5, 0q�6(   ��66   �� *Price+�� 5*      $��색상��6   $
��Bold"�6%   $��16(�67   �� 5+      $��15(�6   $
��5, 0q�6(   ��66   �� *Color+�� 5,      $��15��66   $
��10 0q�6B   ��6   �� *Color+6B   �� 5-      $��코드��6   $
��Bold"�6%   $��16(�67   �� 5.      $��15(�6   $
��5, 0q�6(   ��66   �� *	Reference+5/      50      51      52      