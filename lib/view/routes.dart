import 'package:flutter/material.dart';
import 'package:joy_box_app/view/Fast%20food/fast_food/fast_food_main/fast_food_main.dart';
import 'package:joy_box_app/view/Fast%20food/inner_fast_food_res_screen/inner_fastfood_res.dart';
import 'package:joy_box_app/view/Jb_pro_screen/jb_pro_screen.dart';
import 'package:joy_box_app/view/aboutus_screen/about_us_screen.dart';
import 'package:joy_box_app/view/all_restaurents_screen/all_restaurents_screen_widget_model..dart';
import 'package:joy_box_app/view/authentication/login_screen/login_screen.dart';
import 'package:joy_box_app/view/authentication/sign_up_screen/sign_up_screen.dart';
import 'package:joy_box_app/view/cart_screen/cart_screen.dart';
import 'package:joy_box_app/view/chat_screen/chat_screen.dart';
import 'package:joy_box_app/view/checkout_presentation/checkout_screen.dart';
import 'package:joy_box_app/view/dashboard_screen/dashboard_screen.dart';
import 'package:joy_box_app/view/fast_food_restaurant_screen/fast_food_restaurant_screen.dart';
import 'package:joy_box_app/view/fav_meal/fav_meal_screen.dart';
import 'package:joy_box_app/view/get_started_screen.dart';
import 'package:joy_box_app/view/home_screen/home_screen.dart';
import 'package:joy_box_app/view/joybox_choice/joybox_choice_screen.dart';
import 'package:joy_box_app/view/joybox_picks_screen/joybox_picks_screen.dart';
import 'package:joy_box_app/view/main_screen/main_screen.dart';
import 'package:joy_box_app/view/notificaion_screen/edit_notification/edit_notification_screen.dart';
import 'package:joy_box_app/view/notificaion_screen/notification_screen.dart';
import 'package:joy_box_app/view/offers_screen/offers_screen.dart';
import 'package:joy_box_app/view/ordering_recording/ordering_reordering.dart';
import 'package:joy_box_app/view/payment_method/payment_method_screen.dart';
import 'package:joy_box_app/view/popular_restaurants_screen/popular_restaurants_screen.dart';
import 'package:joy_box_app/view/profile_screen/Profile.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/near_you_restaurent.dart';
import 'package:joy_box_app/view/reviews_screen/reviews_screen.dart';
import 'package:joy_box_app/view/splash_screen.dart';
import 'package:joy_box_app/view/support/support_screen.dart';
import 'package:joy_box_app/view/top_restaurent/top_restauent_screen.dart';
import 'package:joy_box_app/view/traditional_restaurant/traditional_restaurant_screen.dart';
import 'package:joy_box_app/view/transaction_screen/transactions_screen.dart';
import 'package:joy_box_app/view/user_fav_restaurent/user_fav_restaurent_screen.dart';

class RoutePaths {
  static const String splash = SplashScreen.routeName;
  static const String getStarted = GetStartedScreen.routeName;
  static const String login = LoginScreen.routeName;
  static const String signUp = SignUpScreen.routeName;
  static const String mainPage = MainScreen.routeName;
  static const String home = HomeScreen.routeName;
  static const String allRestaurants = AllRestaurantScreen.routeName;
  static const String popularRestaurants = PopularRestaurantsScreen.routeName;
  static const String traditionalRestaurants =
      TraditionalRestaurantScreen.routeName;
  static const String joyboxChoice = JoyBoxChoiceScreen.routeName;
  static const String offers = OffersScreen.routeName;
  static const String fastFoodMain = FastFoodMainScreen.routeName;

  static const String jbPro = JbProScreen.routeName;
  static const String profile = ProfileScreen.routeName;
  static const String transactions = TransactionsScreen.routeName;

  static const String orderReordering = OrderingReordering.routeName;

  static const String review = ReviewsScreen.routeName;
  static const String topRestaurant = TopRestaurentScreen.routeName;
  static const String userFavRestaurant = UserFavRestaurentScreen.routeName;
  static const String nearYouRestaurant = NearYouRestaurent.routeName;

  static const String paymentMethod = PaymentMethodScreen.routeName;
  static const String joyboxPicks = JoyboxPicksScreen.routeName;
  static const String fastFoodRestaurant = FastFoodRestaurantScreen.routeName;
  static const String fastFoodRestaurantInner =
      InnerFastFoodResScreen.routeName;
  static const String cart = CartScreen.routeName;
  static const String checkout = CheckoutScreen.routeName;
  static const String notification = NotificationScreen.routeName;
  static const String helpCenter = SupportScreen.routeName;
  static const String aboutUs = AboutUsScreen.routeName;
  static const String chatScreen = ChatScreen.routeName;
  static const String favMeal = FavMealScreen.routeName;
  static const String editNotification = EditNotification.routeName;
  static const String dashboard = DashboardScreen.routeName;
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
  RoutePaths.profile: (context) => ProfileScreen(),
  RoutePaths.orderReordering: (context) => OrderingReordering(),
  RoutePaths.transactions: (context) => const TransactionsScreen(),
  RoutePaths.review: (context) => const ReviewsScreen(),
  RoutePaths.paymentMethod: (context) => const PaymentMethodScreen(),
  RoutePaths.topRestaurant: (context) => TopRestaurentScreen(),
  RoutePaths.userFavRestaurant: (context) => const UserFavRestaurentScreen(),
  RoutePaths.nearYouRestaurant: (context) => const NearYouRestaurent(),
  RoutePaths.joyboxPicks: (context) => JoyboxPicksScreen(),
  RoutePaths.fastFoodRestaurant: (context) => const FastFoodRestaurantScreen(),
  RoutePaths.fastFoodRestaurantInner: (context) =>
      const InnerFastFoodResScreen(),
  RoutePaths.checkout: (context) => CheckoutScreen(),
  RoutePaths.cart: (context) => const CartScreen(),
  RoutePaths.notification: (context) => const NotificationScreen(),
  RoutePaths.helpCenter: (context) => const SupportScreen(),
  RoutePaths.aboutUs: (context) => const AboutUsScreen(),
  RoutePaths.chatScreen: (context) => const ChatScreen(),
  RoutePaths.favMeal: (context) => const FavMealScreen(),
  RoutePaths.editNotification: (context) => EditNotification(),
  RoutePaths.dashboard: (context) => DashboardScreen()
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
