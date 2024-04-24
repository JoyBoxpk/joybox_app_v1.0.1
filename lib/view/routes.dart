
import 'package:flutter/material.dart';
import 'package:joy_box_app/view/Fast%20food/fast_food/fast_food_main/fast_food_main.dart';
import 'package:joy_box_app/view/Jb_pro_screen/jb_pro_screen.dart';
import 'package:joy_box_app/view/all_restaurents_screen/all_restaurents_screen_widget_model..dart';
import 'package:joy_box_app/view/authentication/login_screen/login_screen.dart';
import 'package:joy_box_app/view/authentication/sign_up_screen/sign_up_screen.dart';
import 'package:joy_box_app/view/get_started_screen.dart';
import 'package:joy_box_app/view/home_screen/home_screen.dart';
import 'package:joy_box_app/view/joybox_choice/joybox_choice_screen.dart';
import 'package:joy_box_app/view/main_screen/main_screen.dart';
import 'package:joy_box_app/view/offers_screen/offers_screen.dart';
import 'package:joy_box_app/view/popular_restaurants_screen/popular_restaurants_screen.dart';
import 'package:joy_box_app/view/splash_screen.dart';
import 'package:joy_box_app/view/traditional_restaurant/traditional_restaurant_screen.dart';

// Define your route names as constants (optional)
class RoutePaths {
  static const String splash = SplashScreen.routeName;
  static const String getStarted = GetStartedScreen.routeName;
  static const String login = LoginScreen.routeName;
  static const String signUp = SignUpScreen.routeName;
  static const String mainPage = MainScreen.routeName;
  static const String home = HomeScreen.routeName;
  static const String allRestaurants = AllRestaurantScreen.routeName;
  static const String popularRestaurants = PopularRestaurantsScreen.routeName;
  static const String traditionalRestaurants = TraditionalRestaurantScreen.routeName;
  static const String joyboxChoice = JoyBoxChoiceScreen.routeName;
  static const String offers = OffersScreen.routeName;
  static const String fastFoodMain = FastFoodMainScreen.routeName;
  static const String jbPro = JbProScreen.routeName;
}

// Define your routes as a Map
final Map<String, WidgetBuilder> appRoutes = {
  RoutePaths.splash: (context) => const SplashScreen(),
  RoutePaths.getStarted: (context) => const GetStartedScreen(),
  RoutePaths.login: (context) => const LoginScreen(),
  RoutePaths.signUp: (context) => const SignUpScreen(),
  RoutePaths.mainPage: (context) => const MainScreen(),
  RoutePaths.home: (context) => const HomeScreen(),
  RoutePaths.allRestaurants: (context) => const AllRestaurantScreen(),
  RoutePaths.popularRestaurants: (context) => const PopularRestaurantsScreen(),
  RoutePaths.traditionalRestaurants: (context) => TraditionalRestaurantScreen(),
  RoutePaths.joyboxChoice: (context) => const JoyBoxChoiceScreen(),
  RoutePaths.offers: (context) => const OffersScreen(),
  RoutePaths.fastFoodMain: (context) => const FastFoodMainScreen(),
  RoutePaths.jbPro: (context) => const JbProScreen(),
};

// final List<RouteBase> appRoutes = [
//   GoRoute(
//     path: SplashScreen.routeName,
//     name: SplashScreen.routeName,
//     builder: (context, state) => const SplashScreen(),
//   ),
//   GoRoute(
//     path: GetStartedScreen.routeName,
//     name: GetStartedScreen.routeName,
//     builder: (context, state) => const GetStartedScreen(),
//   ),
//   GoRoute(
//     path: NotificationScreen.routeName,
//     name: NotificationScreen.routeName,
//     builder: (context, state) => const NotificationScreen(),
//   ),
//   GoRoute(
//     path: SignUpScreen.routeName,
//     name: SignUpScreen.routeName,
//     builder: (context, state) => const SignUpScreen(),
//   ),
//   GoRoute(
//     path: LoginScreen.routeName,
//     name: LoginScreen.routeName,
//     builder: (context, state) => const LoginScreen(),
//   ),
//   GoRoute(
//     path: HomeScreen.routeName,
//     name: HomeScreen.routeName,
//     builder: (context, state) => const HomeScreen(),
//     routes: [
//       GoRoute(
//         path: PopularRestaurantsScreen.routeName,
//         name: PopularRestaurantsScreen.routeName,
//         builder: (context, state) => const PopularRestaurantsScreen(),
//       ),
//       GoRoute(
//         path: SettingScreen.routeName,
//         name: SettingScreen.routeName,
//         builder: (context, state) => const SettingScreen(),
//       ),
//       GoRoute(
//         path: SupportScreen.routeName,
//         name: SupportScreen.routeName,
//         builder: (context, state) => const SupportScreen(),
//       ),
//       GoRoute(
//         path: PaymentMethodScreen.routeName,
//         name: PaymentMethodScreen.routeName,
//         builder: (context, state) => const PaymentMethodScreen(),
//       ),
//       GoRoute(
//         path: TraditionalRestaurant.routeName,
//         name: TraditionalRestaurant.routeName,
//         builder: (context, state) => TraditionalRestaurant(),
//       ),
//       GoRoute(
//         path: JoyBoxChoiceScreen.routeName,
//         name: JoyBoxChoiceScreen.routeName,
//         builder: (context, state) => const JoyBoxChoiceScreen(),
//       ),
//       GoRoute(
//           path: AllRestaurentScreen.routeName,
//           name: AllRestaurentScreen.routeName,
//           builder: (context, state) => const AllRestaurentScreen(),
//           routes: [
//             GoRoute(
//               path: NearYouRestaurent.routeName,
//               name: NearYouRestaurent.routeName,
//               builder: (context, state) => const NearYouRestaurent(),
//             ),
//             GoRoute(
//               path: JoyboxPicksScreen.routeName,
//               name: JoyboxPicksScreen.routeName,
//               builder: (context, state) => const JoyboxPicksScreen(),
//             ),
//             GoRoute(
//               path: UserFavRestaurentScreen.routeName,
//               name: UserFavRestaurentScreen.routeName,
//               builder: (context, state) => const UserFavRestaurentScreen(),
//             ),
//           ]),
//       GoRoute(
//         path: ReviewsScreen.routeName,
//         name: ReviewsScreen.routeName,
//         builder: (context, state) => const ReviewsScreen(),
//       ),
//       GoRoute(
//         path: ChatScreen.routeName,
//         name: ChatScreen.routeName,
//         builder: (context, state) => const ChatScreen(),
//       ),
//       GoRoute(
//         path: AboutUsScreen.routeName,
//         name: AboutUsScreen.routeName,
//         builder: (context, state) => const AboutUsScreen(),
//       ),
//       GoRoute(
//         path: OrderingReordering.routeName,
//         name: OrderingReordering.routeName,
//         builder: (context, state) => OrderingReordering(),
//       ),
//       GoRoute(
//         path: ProfileScreen.routeName,
//         name: ProfileScreen.routeName,
//         builder: (context, state) => const ProfileScreen(),
//       ),
//       GoRoute(
//         path: JbProScreen.routeName,
//         name: JbProScreen.routeName,
//         builder: (context, state) => const JbProScreen(),
//       ),
//       GoRoute(
//         path: TransactionsScreen.routeName,
//         name: TransactionsScreen.routeName,
//         builder: (context, state) => const TransactionsScreen(),
//       ),
//       GoRoute(
//         path: OffersScreen.routeName,
//         name: OffersScreen.routeName,
//         builder: (context, state) => const OffersScreen(),
//       ),
//       GoRoute(
//           path: FastFoodMainScreen.routeName,
//           name: FastFoodMainScreen.routeName,
//           builder: (context, state) => const FastFoodMainScreen(),
//           routes: [
//             GoRoute(
//                 path: FastFoodRestaurantScreen.routeName,
//                 name: FastFoodRestaurantScreen.routeName,
//                 builder: (context, state) => const FastFoodRestaurantScreen(),
//                 routes: [
//                   GoRoute(
//                       path: InnerFastFoodResScreen.routeName,
//                       name: InnerFastFoodResScreen.routeName,
//                       builder: (context, state) =>
//                           const InnerFastFoodResScreen(),
//                       routes: [
//                         GoRoute(
//                             path: CartScreen.routeName,
//                             name: CartScreen.routeName,
//                             builder: (context, state) => const CartScreen(),
//                             routes: [
//                               GoRoute(
//                                 path: CheckoutScreen.routeName,
//                                 name: CheckoutScreen.routeName,
//                                 builder: (context, state) => CheckoutScreen(),
//                               ),
//                             ]),
//                       ]),
//                 ]),
//           ]),
//     ],
//   ),
// ];
