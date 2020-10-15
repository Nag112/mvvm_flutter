import 'package:flutter/material.dart';
import 'package:mvvm_example/ui/views/future_example/future_example_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FutureExampleView extends StatelessWidget {
  const FutureExampleView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FutureExampleViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: model.isBusy?CircularProgressIndicator():Text(model.data),),
              ),
            ),
        viewModelBuilder: () => FutureExampleViewModel());
  }
}
