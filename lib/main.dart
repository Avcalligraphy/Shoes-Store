import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:khidza/home/card_page.dart';
import 'package:khidza/home/checkout_page.dart';
import 'package:khidza/home/checkout_success_page.dart';
import 'package:khidza/home/detail_chat_page.dart';
import 'package:khidza/home/edit_profile_page.dart';
import 'package:khidza/home/main_page.dart';
import 'package:khidza/home/product_page.dart';
import 'package:khidza/pages/sign_in_page.dart';
import 'package:khidza/pages/sign_up_page.dart';
import 'package:khidza/pages/splash_page.dart';
import 'package:khidza/providers/auth_provider.dart';
import 'package:khidza/providers/cart_provider.dart';
import 'package:khidza/providers/page_provider.dart';
import 'package:khidza/providers/product_provider.dart';
import 'package:khidza/providers/transaction_provider.dart';
import 'package:khidza/providers/wishlist_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/card': (context) => CardPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
