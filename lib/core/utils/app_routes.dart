import 'package:go_router/go_router.dart';
import 'package:kutuku/collage_view.dart';
import 'package:kutuku/features/Home/presentation/views/category_view.dart';
import 'package:kutuku/features/Home/presentation/views/home_view.dart';
import 'package:kutuku/features/my_cart/presentation/views/my_cart_view.dart';
import 'package:kutuku/features/profile/presentation/views/profile_view.dart';
import 'package:kutuku/features/search/presentation/views/search_view.dart';
import 'package:kutuku/features/Home/presentation/views/widgets/home_section_body.dart';
import 'package:kutuku/features/auth/presentation/views/register_view.dart';
import 'package:kutuku/features/auth/presentation/views/login_view.dart';
import 'package:kutuku/features/auth/presentation/views/verification_view.dart';
import 'package:kutuku/features/onboarding/presentation/views/onboarding_view.dart';

import '../../features/splash/presentaion/views/splah_view.dart';

abstract class AppRoutes {
  static const String kCollage = '/collageView';
  static const String kONboardingView = '/onboardingview';
  static const String kRgisterView = '/registerView';
  static const String kLoginView = '/LoginView';
  static const String kVerficationView = '/verificationView';
  static const String kHomeView = '/HomeView';
  static const String kHomeCategoryView = '/HomeCategoryView';
  static const String kSearchView = '/SearchView';
  static const String kMyCartView = '/MyCartView';
  static const String kProfileView = '/ProfileView';

  static final routes = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const HomeSearchView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kMyCartView,
        builder: (context, state) => const MyCartView(),
      ),
      GoRoute(
        path: kHomeCategoryView,
        builder: (context, state) => const CategoryView(),
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
        path: kONboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kRgisterView,
        builder: (context, state) => const Registerview(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kVerficationView,
        builder: (context, state) => const VerificationView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      )
    ],
  );
}
