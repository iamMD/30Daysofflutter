
import 'package:catelog_app/pages/login_page.dart';
import 'package:catelog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoutes,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoutes: (context) => const HomePage(),
        MyRoutes.loginRoutes: (context) => const LoginPage()
      },
    );
  }
}

































// in int(integer we store data like  20 30 23 2324)
    // int days = 30;
    // in str(string we store data like words sentences etc.)
    // String name = "Namaste";
    // in double we store data like floating point ex 3.5 ,32.4
    // double pi = 3.4;
    // // in bool we store true or flase
    // bool ismale = true;
    // // in num we store data like 30,30.2
    // num temp = 39.5;
    // // in var (variable )we store anykind of data it will automatically understand in any given format
    // var day = "Monday";
    // var number = 34524 ;
    // // in const(constant) we store data like which never changes and we can't modified it
    // const pi  = 3.14;
    // // in final we can change the data
    // final add = num + int;