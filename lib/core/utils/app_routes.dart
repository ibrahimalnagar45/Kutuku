import 'package:go_router/go_router.dart';
import 'package:kutuku/features/profile/presentaion/views/profile_view.dart';
import '../../features/auth/presentation/views/login_view.dart';

abstract class AppRoutes {
  static const String kRgisterView = '/registerView';
  static const String kLoginView = '/LoginView';
  static const String kProfileView = '/ProfileView';
  static final routes = GoRouter(
    // initialLocation: '/login',
    initialLocation:  kProfileView,
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const StoreLoginView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
    ],
  );
}
