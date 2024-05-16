import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_stories_clone/app/view/home_view/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: false,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              systemNavigationBarColor: Colors.white,
              systemNavigationBarIconBrightness:
                  Theme.of(context).colorScheme.background.computeLuminance() >
                          0.5
                      ? Brightness.dark
                      : Brightness.light,
              systemNavigationBarDividerColor: Colors.black,
              statusBarColor: Colors.black,
            ),
            child: MaterialApp(
              title: 'Instagram Clone',
              debugShowCheckedModeBanner: false,
              builder: (context, child) {
                // ScreenUtil.setContext(context);
                return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: const TextScaler.linear(1.0)),
                    child: AnnotatedRegion<SystemUiOverlayStyle>(
                        value: SystemUiOverlayStyle(
                          systemNavigationBarColor: Colors.black,
                          systemNavigationBarIconBrightness: Theme.of(context)
                                      .colorScheme
                                      .background
                                      .computeLuminance() >
                                  0.5
                              ? Brightness.dark
                              : Brightness.light,
                          systemNavigationBarDividerColor: Colors.black,
                          statusBarColor: Colors.black,
                        ),
                        child: child!));
              },
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.black,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                primarySwatch: Colors.blue,
              ),
              home: const HomeView(),
            ),
          );
        });
  }
}
