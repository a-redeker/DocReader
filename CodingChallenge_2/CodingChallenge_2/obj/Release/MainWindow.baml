   M S B A M L   `   `   `  ���� L  HCodingChallenge_2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:CodingChallenge_2CodingChallenge_2  "    CodingChallenge_2.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35a ]DevExpress.Xpf.Core.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aF 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     ;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  <dxb2http://schemas.devexpress.com/winfx/2008/xaml/bars  c _DevExpress.Xpf.Ribbon.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxr4http://schemas.devexpress.com/winfx/2008/xaml/ribbon  ?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  +localclr-namespace:CodingChallenge_2  ] YDevExpress.Mvvm.v16.1, Version=16.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aAdxmvvm2http://schemas.devexpress.com/winfx/2008/xaml/mvvm     � Title$  
MainWindow��$	��450��$	��725�� � WindowStartupLocation$ CenterScreen=� � DataContext 1  +DevExpress.Mvvm.UI.ViewModelSourceExtension     Type+   %CodingChallenge_2.MainWindowViewModel"  .���  � ColumnDefinitions �� $
��579* ��� $
��137* ���  � RowDefinitions �� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto �.+�)  #DevExpress.Xpf.Ribbon.RibbonControl  $��0��   RibbonStyle$ 
Office2010=�$��3��$��
10,0,-10,0q�   
Categories. 5  /DevExpress.Xpf.Ribbon.RibbonDefaultPageCategory  2  ,DevExpress.Xpf.Ribbon.RibbonPageCategoryBase   Pages. &   DevExpress.Xpf.Ribbon.RibbonPage  	   Caption)  #DevExpress.Xpf.Core.ObjectConverter$
	 Home 
   Groups.
 +  %DevExpress.Xpf.Ribbon.RibbonPageGroup     Caption$
 File��   Items. '	  !DevExpress.Xpf.Bars.BarButtonItem	  -    	 Name$ NewItem��!
  DevExpress.Xpf.Bars.BarItem 
  Content$
 Open  
  Glyph *  $DevExpress.Xpf.Core.DXImageExtension     Image1  +DevExpress.Xpf.Core.Native.DXImageConverter$ Open_32x32.png  
  
LargeGlyph   $ Open_32x32.png  
  Command �� *NewButtonPressCommand+*  $DevExpress.Xpf.Bars.BarItemSeparator  	  -   $
 Save��$
 Save    $ Save_32x32.png    $ Save_16x16.png  �� *SaveFileCommand+  %  DevExpress.Xpf.Bars.BarEditItem  -     Name$ 	TextField��   	EditWidth$	 100X�   	EditValue �� *	textField+ �� UpdateSourceTrigger$ PropertyChanged=�   EditSettings 6  0DevExpress.Xpf.Editors.Settings.TextEditSettings  	  -   $ Search��$ Search    $ Reference_16x16.png  �� *SearchButtonPressCommand+  '  !DevExpress.Xpf.Bars.BarStaticItem     ItemMinWidth$	 200Q� �� *	matches+  $	 200Q� �� *totalWordsFound+  $	 200Q� �� *percWordsFound+%  DevExpress.Xpf.Editors.TextEdit  -   $��TextEdit��$��
10,10,9,10q�$��1��$��Stretch=�$��Stretch=�$��2��)  #DevExpress.Xpf.Editors.TextEditBase   TextWrapping$
 Wrap=�   AcceptsReturn .    
AcceptsTab .    Text �� *text+ �� Mode$ TwoWay=�$ PropertyChanged=�2  ,DevExpress.Xpf.Ribbon.RibbonStatusBarControl  $��2��$��3��   
RightItems 	  -   $ 	PrintItem��$ Print    $ Print_16x16.png 