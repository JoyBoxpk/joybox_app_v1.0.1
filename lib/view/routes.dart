import 'package:go_router/go_router.dart';
import 'package:joy_box_app/view/all_restaurents_screen/all_restaurents_screen_widget_model..dart';
import 'package:joy_box_app/view/joybox_picks_screen/joybox_picks_screen.dart';
import 'package:joy_box_app/view/notificaion_screen/notification_screen.dart';
import 'package:joy_box_app/view/offers_screen/offers_screen.dart';
import 'package:joy_box_app/view/payment_method/payment_method_screen.dart';
import 'package:joy_box_app/view/profile_screen/Profile.dart';
import 'package:joy_box_app/view/resturent_near_you_screen/near_you_restaurent.dart';
import 'package:joy_box_app/view/reviews_screen/reviews_screen.dart';
import 'package:joy_box_app/view/splash_screen.dart';
import 'package:joy_box_app/view/user_fav_restaurent/user_fav_restaurent_screen.dart';
import 'Fast food/fast_food/fast_food_main/fast_food_main.dart';
import 'Fast food/inner_fast_food_res_screen/inner_fastfood_res.dart';
import 'Jb_pro_screen/jb_pro_screen.dart';
import 'aboutus_screen/about_us_screen.dart';
import 'authentication/login_screen/login_screen.dart';
import 'authentication/sign_up_screen/sign_up_screen.dart';
import 'cart_screen/cart_screen.dart';
import 'chat_screen/chat_screen.dart';
import 'checkout_presentation/checkout_screen.dart';
import 'fast_food_restaurant_screen/fast_food_restaurant_screen.dart';
import 'get_started_screen.dart';
import 'home_screen/home_screen.dart';
import 'joybox_choice/joybox_choice_screen.dart';
import 'ordering_recording/ordering_reordering.dart';
import 'popular_restaurants_screen/popular_restaurants_screen.dart';
import 'settings_screen/settings_screen.dart';
import 'support/support_screen.dart';
import 'traditional_restaurant/traditional_restaurant_screen.dart';
import 'transaction_screen/transactions_screen.dart';

final List<RouteBase> appRoutes = [
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
    path: NotificationScreen.routeName,
    name: NotificationScreen.routeName,
    builder: (context, state) => const NotificationScreen(),
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
        path: PopularRestaurantsScreen.routeName,
        name: PopularRestaurantsScreen.routeName,
        builder: (context, state) => const PopularRestaurantsScreen(),
      ),
      GoRoute(
        path: SettingScreen.routeName,
        name: SettingScreen.routeName,
        builder: (context, state) => const SettingScreen(),
      ),
      GoRoute(
        path: SupportScreen.routeName,
        name: SupportScreen.routeName,
        builder: (context, state) => const SupportScreen(),
      ),
      GoRoute(
        path: PaymentMethodScreen.routeName,
        name: PaymentMethodScreen.routeName,
        builder: (context, state) => const PaymentMethodScreen(),
      ),
      GoRoute(
        path: TraditionalRestaurant.routeName,
        name: TraditionalRestaurant.routeName,
        builder: (context, state) => TraditionalRestaurant(),
      ),
      GoRoute(
        path: JoyBoxChoiceScreen.routeName,
        name: JoyBoxChoiceScreen.routeName,
        builder: (context, state) => const JoyBoxChoiceScreen(),
      ),
      GoRoute(
          path: AllRestaurentScreen.routeName,
          name: AllRestaurentScreen.routeName,
          builder: (context, state) => const AllRestaurentScreen(),
          routes: [
            GoRoute(
              path: NearYouRestaurent.routeName,
              name: NearYouRestaurent.routeName,
              builder: (context, state) => const NearYouRestaurent(),
            ),
            GoRoute(
              path: JoyboxPicksScreen.routeName,
              name: JoyboxPicksScreen.routeName,
              builder: (context, state) => const JoyboxPicksScreen(),
            ),
            GoRoute(
              path: UserFavRestaurentScreen.routeName,
              name: UserFavRestaurentScreen.routeName,
              builder: (context, state) => const UserFavRestaurentScreen(),
            ),
          ]),
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
        builder: (context, state) => const ProfileScreen(),
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
        path: OffersScreen.routeName,
        name: OffersScreen.routeName,
        builder: (context, state) => const OffersScreen(),
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
          ]),
    ],
  ),
];
