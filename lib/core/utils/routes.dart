import 'package:go_router/go_router.dart';
import 'package:kutuku/features/onboarding/presentation/views/onboarding_view1.dart';

import '../../features/splash/presentaion/views/splah_view.dart';

abstract class AppRoutes {
  static const String kONboarding = '/onboarding1';
  static final routes = GoRouter(
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplahView(),
      ),
      GoRoute(
        path: kONboarding,
        builder: (context, state) => const OnboardingView1(),
      ),
    ],
  );
}
