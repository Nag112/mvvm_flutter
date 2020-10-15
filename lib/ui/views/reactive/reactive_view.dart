import 'package:flutter/material.dart';
import 'package:mvvm_example/ui/views/reactive/reactive_viewmodel.dart';
import 'package:mvvm_example/ui/widgets/smart/double_increase_counter.dart';
import 'package:mvvm_example/ui/widgets/smart/single_increase_counter.dart';
import 'package:stacked/stacked.dart';

class ReactiveExampleView extends StatelessWidget {
  const ReactiveExampleView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ReactiveExampleViewModel>.nonReactive(
        builder: (context, model, child) => Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SingleIncreaseCounter(),
                    SizedBox(height: 50,),
                    DoubleIncreaseCounter(),
                  ],
                ),
              ),
            ),
        viewModelBuilder: () => ReactiveExampleViewModel());
  }
}
