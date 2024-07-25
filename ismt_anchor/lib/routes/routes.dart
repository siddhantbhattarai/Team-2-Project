

import 'package:get/get.dart';
import 'package:ismt_anchor/routes/get_routes.dart';
import 'package:ismt_anchor/screens/AddNews/add_news.dart';
import 'package:ismt_anchor/screens/BottomNavigationBar/bottom_nav_bar.dart';
import 'package:ismt_anchor/screens/Fee/view/fee_screen.dart';
import 'package:ismt_anchor/screens/Home/view/home_screen.dart';
import 'package:ismt_anchor/screens/Message/view/message_screen.dart';
import 'package:ismt_anchor/screens/News/view/news_details.dart';
import 'package:ismt_anchor/screens/News/view/news_screen.dart';
import 'package:ismt_anchor/screens/Notification/view/notification_screen.dart';
import 'package:ismt_anchor/screens/Profile/view/profile_screen.dart';
import 'package:ismt_anchor/screens/Result/view/all_result_screen.dart';
import 'package:ismt_anchor/screens/Result/view/result_screen.dart';
import 'package:ismt_anchor/screens/StudentPost/view/student_post.dart';
import 'package:ismt_anchor/screens/Tutorial/view/tutorial_screen.dart';

import '../screens/Login/view/login_screen.dart';
import '../screens/SplashScreen/view/splash_screen.dart';

List<GetPage<dynamic>> getpages = [
  GetPage(name: Routes.splashScreen, page: () =>const SplashScreen()),
  GetPage(name: Routes.loginScreen, page: () =>const LoginScreen()),
  GetPage(name: Routes.bottomNavigationScreen, page: () =>const BottomNavigationBarScreen()),
  GetPage(name: Routes.homeScreen, page: () =>const HomeScreen()),
  GetPage(name: Routes.newsScreen, page: () =>const NewsScreen()),
  GetPage(name: Routes.newsDetailsScreen, page: () =>const NewsDetails()),
  GetPage(name: Routes.addnewsScreen, page: () =>const CreateNews()),
  GetPage(name: Routes.notificationScreen, page: () =>const NotificationScreen()),
  GetPage(name: Routes.feeScreen, page: () =>const FeeScreen()),
  GetPage(name: Routes.resultScreen, page: () =>const ResultScreen()),
  GetPage(name: Routes.messageScreen, page: () =>const MessageScreen()),
  GetPage(name: Routes.profileScreen, page: () =>const ProfileScreen()),
  GetPage(name: Routes.allresultsScreen, page: () =>const AllResultScreen()),
  GetPage(name: Routes.tutorialScreen, page: () =>const TutorialScreen()),
  GetPage(name: Routes.studentPost, page: () =>const StudentPost()),
  
  ];