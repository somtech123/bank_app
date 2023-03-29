import 'package:get/get.dart';

import '../../features/Bottom_tab/screen/bottom_tab.dart';
import '../../features/Qr_code/screen/qr_code.dart';
import '../../features/analytics/screen/analytics.dart';
import '../../features/authentication/Login/screen/login.dart';
import '../../features/authentication/Register/screen/register.dart';
import '../../features/card/screen/card.dart';
import '../../features/contact/screen/contact.dart';
import '../../features/dashbord/screen/dashboard.dart';
import '../../features/menu/screen/menu.dart';
import '../../features/onboarding/screen/onboarding.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: OnBoardingScreen.path,
      page: () => OnBoardingScreen(),
    ),
    GetPage(
      name: LoginScreen.path,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: RegisterScreen.path,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: BottomBar.path,
      page: () => BottomBar(),
    ),
    GetPage(
      name: CardScreen.path,
      page: () => CardScreen(),
    ),
    GetPage(
      name: Contact.path,
      page: () => Contact(),
    ),
    GetPage(
      name: DashBoard.path,
      page: () => DashBoard(),
    ),
    GetPage(
      name: Menu.path,
      page: () => Menu(),
    ),
    GetPage(
      name: QrCodeScreen.path,
      page: () => QrCodeScreen(),
    ),
    GetPage(
      name: Analytics.path,
      page: () => Analytics(),
    )
  ];
}
