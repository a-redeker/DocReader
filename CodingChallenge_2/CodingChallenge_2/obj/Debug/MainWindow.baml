   M S B A M L   `   `   `  ����L  HCodingChallenge_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:CodingChallenge_2CodingChallenge_2  5   	   "    CodingChallenge_2.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aF 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5   	   <dxb2http://schemas.devexpress.com/winfx/2008/xaml/bars  5   	   c _DevExpress.Xpf.Ribbon.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxr4http://schemas.devexpress.com/winfx/2008/xaml/ribbon  5   	   ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  5   	   +localclr-namespace:CodingChallenge_2  5   	   ] YDevExpress.Mvvm.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aAdxmvvm2http://schemas.devexpress.com/winfx/2008/xaml/mvvm   67     � Title$  
MainWindow��5	   	   $	��450��6   $	��725��6)    � WindowStartupLocation$ CenterScreen=�5
   	    � DataContext 5	   5   1  +DevExpress.Mvvm.UI.ViewModelSourceExtension     Type+   %CodingChallenge_2.MainWindowViewModel"  .��5      �  � ColumnDefinitions 5   
   �� 5      $
��579* �6   �� 5      $
��137* �6   �� 5       � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   )  #DevExpress.Xpf.Ribbon.RibbonControl  $��0��6      RibbonStyle$ 
Office2010=�6)   $��3��6B   $��
10,0,-10,0q�6V      
Categories. 5      5  /DevExpress.Xpf.Ribbon.RibbonDefaultPageCategory  2  ,DevExpress.Xpf.Ribbon.RibbonPageCategoryBase   Pages. 5      &   DevExpress.Xpf.Ribbon.RibbonPage  	   Caption)  #DevExpress.Xpf.Core.ObjectConverter$
	 Home 6!   
   Groups.
 5      +  %DevExpress.Xpf.Ribbon.RibbonPageGroup     Caption$
 File��6*      Items. 5      '	  !DevExpress.Xpf.Bars.BarButtonItem	  -   5         	 Name$ NewItem��5   ,   !
  DevExpress.Xpf.Bars.BarItem 
  Content$
 Open 6=    
  Glyph 6L   *  $DevExpress.Xpf.Core.DXImageExtension     Image1  +DevExpress.Xpf.Core.Native.DXImageConverter$ Open_32x32.png  
  
LargeGlyph 6v     $ Open_32x32.png  
  Command 6�   �� *NewButtonPressCommand+*  $DevExpress.Xpf.Bars.BarItemSeparator  5      	  5      -   5        $
 Save��5   ,   $
 Save 6:    6I     $ Save_32x32.png  6x     $ Save_16x16.png  6�   �� *SaveFileCommand+  5      %  DevExpress.Xpf.Bars.BarEditItem  5      -   5          Name$ 	TextField��5   *      	EditWidth$	 100X�6=      	EditValue 6M   �� *	textField+ �� UpdateSourceTrigger$ PropertyChanged=�   EditSettings 5       6  0DevExpress.Xpf.Editors.Settings.TextEditSettings  5!   "   5#      	  5$      -   5        $ Search��5$   ,   $ Search 6<    6M     $ Reference_16x16.png  6|   �� *SearchButtonPressCommand+  5%      '  !DevExpress.Xpf.Bars.BarStaticItem  5&         ItemMinWidth$	 200Q�6,    6?   �� *	matches+  5'      $	 200Q�6,    6?   �� *totalWordsFound+  5(      $	 200Q�6,    6?   �� *percWordsFound+5)      5*      5+      5,      %  DevExpress.Xpf.Editors.TextEdit  5-   
   -   5        $��TextEdit��5-      $��
10,10,9,10q�6'   $��1��6;   $��Stretch=�6H   $��Stretch=�6d   $��2��6�   )  #DevExpress.Xpf.Editors.TextEditBase   TextWrapping$
 Wrap=�6�      AcceptsReturn .    
AcceptsTab .    Text 6�   �� *text+ �� Mode$ TwoWay=�$ PropertyChanged=�2  ,DevExpress.Xpf.Ribbon.RibbonStatusBarControl  5.   
   $��2��6%   $��3��62      
RightItems 5/      	  50      -   5        $ 	PrintItem��50   $   $ Print 67    6G     $ Print_16x16.png 52      54      55      