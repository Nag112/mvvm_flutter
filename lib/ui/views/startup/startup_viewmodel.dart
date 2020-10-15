import 'package:mvvm_example/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:mvvm_example/app/locator.dart';
class StartupViewModel extends BaseViewModel {

  String _title = 'Startup View';
  String get title => _title;
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome() async{
    await _navigationService.navigateTo(Routes.futureExampleView);
  }
}
