import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:joy_box_app/res/app_theme.dart';
import 'package:joy_box_app/view/Fast%20food/fast_food/fast_food_main/fast_food_main.dart';
import 'package:joy_box_app/view/Fast%20food/inner_fast_food_res_screen/inner_fastfood_res.dart';
import 'package:joy_box_app/view/Jb_pro_screen/jb_pro_screen.dart';
import 'package:joy_box_app/view/aboutus_screen/about_us_screen.dart';
import 'package:joy_box_app/view/authentication/login_screen/login_screen.dart';
import 'package:joy_box_app/view/cart_screen/cart_screen.dart';
import 'package:joy_box_app/view/chat_screen/chat_screen.dart';
import 'package:joy_box_app/view/checkout_presentation/checkout_screen.dart';
import 'package:joy_box_app/view/get_started_screen.dart';
import 'package:joy_box_app/view/home_screen/home_screen.dart';
import 'package:joy_box_app/view/ordering_recording/ordering_reordering.dart';
import 'package:joy_box_app/view/profile_screen/Profile.dart';
import 'package:joy_box_app/view/reviews_screen/reviews_screen.dart';
import 'package:joy_box_app/view/settings_screen/settings_screen.dart';
import 'package:joy_box_app/view/signup_screen.dart';
import 'package:joy_box_app/view/splash_screen.dart';
import 'package:joy_box_app/view/support/support_screen.dart';
import 'package:joy_box_app/view/traditional_restaurant/traditional_restaurant_screen.dart';
import 'package:joy_box_app/view/transaction_screen/transactions_screen.dart';
import 'view/fast_food_restaurant_screen/fast_food_restaurant_screen.dart';

void main() {
  runApp(const MyApp());
}

final _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: SplashScreen.routeName,
      name: SplashScreen.routeName,
      builder: (context, state) => const SplashScreen(),
    ),
    
    GoRoute(
      path: GetStartedScreen.routeName,
      name: GetStartedScreen.routeName,
      builder: (context, state) => const GetStartedScreen(),
    ),
    GoRoute(
      path: SignUpScreen.routeName,
      name: SignUpScreen.routeName,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: LoginScreen.routeName,
      name: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: HomeScreen.routeName,
      name: HomeScreen.routeName,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
      path: TraditionalRestaurant.routeName,
      name: TraditionalRestaurant.routeName,
      builder: (context, state) =>  TraditionalRestaurant(),
    ),
        GoRoute(
          path: ReviewsScreen.routeName,
          name: ReviewsScreen.routeName,
          builder: (context, state) => const ReviewsScreen(),
        ),
        GoRoute(
          path: ChatScreen.routeName,
          name: ChatScreen.routeName,
          builder: (context, state) => const ChatScreen(),
        ),
        GoRoute(
          path: AboutUsScreen.routeName,
          name: AboutUsScreen.routeName,
          builder: (context, state) => const AboutUsScreen(),
        ),
        GoRoute(
          path: OrderingReordering.routeName,
          name: OrderingReordering.routeName,
          builder: (context, state) => OrderingReordering(),
        ),
        GoRoute(
          path: ProfileScreen.routeName,
          name: ProfileScreen.routeName,
          builder: (context, state) => ProfileScreen(),
        ),
        GoRoute(
          path: JbProScreen.routeName,
          name: JbProScreen.routeName,
          builder: (context, state) => const JbProScreen(),
        ),
        GoRoute(
          path: TransactionsScreen.routeName,
          name: TransactionsScreen.routeName,
          builder: (context, state) => const TransactionsScreen(),
        ),
        GoRoute(
            path: FastFoodMainScreen.routeName,
            name: FastFoodMainScreen.routeName,
            builder: (context, state) => const FastFoodMainScreen(),
            routes: [
              GoRoute(
                  path: FastFoodRestaurantScreen.routeName,
                  name: FastFoodRestaurantScreen.routeName,
                  builder: (context, state) => const FastFoodRestaurantScreen(),
                  routes: [
                    GoRoute(
                        path: InnerFastFoodResScreen.routeName,
                        name: InnerFastFoodResScreen.routeName,
                        builder: (context, state) =>
                            const InnerFastFoodResScreen(),
                        routes: [
                          GoRoute(
                              path: CartScreen.routeName,
                              name: CartScreen.routeName,
                              builder: (context, state) => const CartScreen(),
                              routes: [
                                GoRoute(
                                  path: CheckoutScreen.routeName,
                                  name: CheckoutScreen.routeName,
                                  builder: (context, state) => CheckoutScreen(),
                                ),
                              ]),
                        ]),
                  ]),
              GoRoute(
                path: SettingScreen.routeName,
                name: SettingScreen.routeName,
                builder: (context, state) => const SettingScreen(),
              ),
              GoRoute(
                path: SupportScreen.routeName,
                name: SupportScreen.routeName,
                builder: (context, state) => const SupportScreen(),
              )
            ]),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: appTheme,
        routerConfig: _router,
      ),
    );
  }
}
