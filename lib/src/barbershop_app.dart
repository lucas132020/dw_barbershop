import 'package:asyncstate/asyncstate.dart';
import 'package:dw_barbershop/src/core/ui/barbershop_nav_global_key.dart';
import 'package:dw_barbershop/src/core/ui/barbershop_theme.dart';
import 'package:dw_barbershop/src/features/auth/login/login_page.dart';
import 'package:dw_barbershop/src/features/auth/register/user_register_page.dart';
import 'package:dw_barbershop/src/features/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:dw_barbershop/src/core/ui/widgets/babershop_loader.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
        customLoader: const BabershopLoader(),
        builder: (AsyncNavigatorObserver) {
          return MaterialApp(
            title: 'DW Barbershop',
            theme: BarbershopTheme.themeData,
            navigatorObservers: [AsyncNavigatorObserver],
            navigatorKey: BarbershopNavGlobalKey.instance.navkey,
            routes: {
              '/': (_) => const SplashPage(),
              '/auth/login': (_) => const LoginPage(),
              '/auth/register/user': (_) => const UserRegisterPage(),
              '/auth/register/barbershop': (_) =>
                  const Center(child: Text('barbersho page')),
              '/home/adm': (_) => const Text('ADM'),
              '/home/employee': (_) => const Text('Employee'),
            },
          );
        });
  }
}
