import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bookmybook/app_screens/initialPages/root_page.dart';
import 'package:bookmybook/app_screens/initialPages/auth.dart';

import 'app_screens/initialPages/auth_provider.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  return runApp(AuthProvider(auth: Auth(),child:BookApp()));
}

class BookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
            appBarTheme: AppBarTheme(
              brightness: Brightness.light,
              elevation: 5,
              color: ThemeData.light().canvasColor,
            )
        ),
      home: RootPage(auth: new Auth()),
    );
  }
}



// import 'package:bookmybook/screens/wrapper.dart';
// import 'package:bookmybook/services/auth.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:bookmybook/models/user.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider<User>.value(
//       value: AuthService().user,
//       child: MaterialApp(
//         home: Wrapper(),
//       ),
//     );
//   }
// }