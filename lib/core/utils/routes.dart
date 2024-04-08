import 'package:go_router/go_router.dart';
import 'package:kutuku/features/auth/presentation/views/register_view.dart';
import 'package:kutuku/features/auth/presentation/views/widgets/login_view.dart';
import 'package:kutuku/features/onboarding/presentation/views/onboarding_view.dart';

import '../../features/splash/presentaion/views/splah_view.dart';

abstract class AppRoutes {
  static const String kONboarding = '/onboarding1';
  static const String kRgister = '/registerView';
  static const String kLogin = '/LoginView';



  static final routes = GoRouter(
    initialLocation: '/splash',
    routes: [
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
    ],
  );
}
