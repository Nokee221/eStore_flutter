import 'package:flutter/material.dart';
import 'package:flutter_estore/consts/theme.dart';
import 'package:flutter_estore/provider/dark_theme_provider.dart';
import 'package:flutter_estore/screens/bottom_bar.dart';
import 'package:flutter_estore/screens/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key); 

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async{
    themeChangeProvider.darkTheme = await themeChangeProvider.darkThemePreferences.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return themeChangeProvider;
          },
        )
      ],
    
    child: Consumer<DarkThemeProvider>( 
      builder: (context, themeData , child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: Styles.themeData(themeChangeProvider.darkTheme , context),
          home: BottomBarScreen(),
        );
      }
    ),);
  }
}
