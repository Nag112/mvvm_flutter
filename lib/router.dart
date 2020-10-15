import 'package:mvvm_example/ui/views/future_example/future_example_view.dart';
import 'package:mvvm_example/ui/views/home/home.dart';
import 'package:mvvm_example/ui/views/partial_builds/partial_builds_view.dart';
import 'package:mvvm_example/ui/views/reactive/reactive_view.dart';
import 'package:mvvm_example/ui/views/startup/startup.dart';
import 'package:auto_route/auto_route_annotations.dart';
@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: HomeView),
  MaterialRoute(page: PartialBuildsView),
  MaterialRoute(page: ReactiveExampleView),
  MaterialRoute(page: FutureExampleView),
  MaterialRoute(page: StartupView,initial: true)
])
class $Router {
}
