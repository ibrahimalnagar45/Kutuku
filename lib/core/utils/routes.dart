import 'package:go_router/go_router.dart';
import 'package:kutuku/features/onboarding/presentation/views/onboarding_view.dart';

import '../../features/splash/presentaion/views/splah_view.dart';

abstract class AppRoutes {
  static const String kONboarding = '/onboarding';
  static final routes = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kONboarding,
        builder: (context, state) => const OnboardingView(),
      ),
    ],
  );
}
