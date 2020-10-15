import 'package:stacked/stacked.dart';

class FutureExampleViewModel extends FutureViewModel {
  @override
  Future futureToRun() async {
    await Future.delayed(const Duration(seconds: 2));
    return "From the future service";
  }
}
