import 'package:go_router/go_router.dart';
import 'package:kutuku/collage_view.dart';
import 'package:kutuku/features/Home/presentation/views/category_view.dart';
import 'package:kutuku/features/Home/presentation/views/home_view.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_section_body.dart';
import 'package:kutuku/features/auth/presentation/views/register_view.dart';
import 'package:kutuku/features/auth/presentation/views/login_view.dart';
import 'package:kutuku/features/auth/presentation/views/verification_view.dart';
import 'package:kutuku/features/onboarding/presentation/views/onboarding_view.dart';

import '../../features/splash/presentaion/views/splah_view.dart';

abstract class AppRoutes {
  static const String kCollage = '/collageView';
  static const String kONboarding = '/onboardingview';
  static const String kRgister = '/registerView';
  static const String kLogin = '/LoginView';
  static const String kVerfication = '/verificationView';
  static const String kHome = '/HomeView';
  static const String kHomeSectionBody = '/HomeSection';
  static const String kHomeCategory = '/HomeCategory';



  static final routes = GoRouter(
    initialLocation: '/splash',
    routes: [
       GoRoute(
        path: kHomeCategory,
        builder: (context, state) => const CategoryView(),
      ),
       GoRoute(
        path: kHomeSectionBody,
        builder: (context, state) => const HomeSectionBody(),
      ),
      GoRoute(
        path: kCollage,
        builder: (context, state) => const CollageView(),
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplahView(),
      ),
      GoRoute(
        path: kONboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kRgister,
        builder: (context, state) => const Registerview(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kVerfication,
        builder: (context, state) => const VerificationView(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
