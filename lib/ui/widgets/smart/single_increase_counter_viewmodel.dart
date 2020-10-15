import 'package:mvvm_example/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:mvvm_example/services/counter_service.dart';

class SingleIncreaseCounterViewModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
   @override
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
  int get counter => _counterService.counter;
  updateCounter() {
    _counterService.incrementCounter();
    notifyListeners();
  }
}
