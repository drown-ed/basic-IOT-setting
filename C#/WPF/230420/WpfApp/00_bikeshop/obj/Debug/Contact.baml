   M S B A M L   `   `   `  ����F  B03_bikeshop, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:_03_bikeshop_03_bikeshop  5          _03_bikeshop.Contact   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ,localclr-namespace:_03_bikeshop     5        N� 
Background
  ����� N� Title$ 	연락처��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��80 �6   �� 5      $��50 �6   �� 5      $��50 �6   �� 5      �� 5      $��80 �6    � ColumnDefinitions 5   
   �� 5      $	��140 �6   �� 5      .+�5   
   �� $��0��6   $��0��6   $��2��6-   $��● 연락처 작성��6A   $��20(�6T   $��	ExtraBold"�6b   $��10, 20q�6y   �� 5   
   $��1��6   $��0��6   $��보내는 사람��6-   $��14(�6>   $��Right=�6L   $��20, 10q�6h   �� 5   
   $��2��6   $��0��6   $��받는 사람��6-   $��14(�6=   $��Right=�6K   $��20, 10q�6g   �� 5   
   $��3��6   $��0��6   $��보내는 메세지��6-   $��14(�6?   $��Right=�6M   $��20, 10q�6i   �� 5   
   $��1��6   $��1��6   $��사용자 아이디��6/   $��14(�6>   $��10, 5, 40, 5q�6L   �� 5   
   $��2��6   $��1��6   $��받는 사람 아이디��6/   $��14(�6@   $��10, 5, 40, 5q�6O   �� 5   
   $��3��6   $��1��6#   $��13(�63   $��10, 5, 40, 5q�6A   �� 5!   
   $��4��6   $��1��6"    �� Orientation$ 
Horizontal=�62   $��10, 10, 40 ,10q�6K   $��Right=�6c   .+�5"      �� $��저장��6   $��80��6"   $��
0, 0, 5, 0q�6-   �� 5#      $��취소��6   $��80��6"   5$      5%      5'      