import 'package:mvvm_example/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:mvvm_example/services/counter_service.dart';
class DoubleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;
  updateCounter() {
    _counterService.doubleCounter();
    notifyListeners();
  }

  @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}
