import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_example/ui/widgets/smart/double_increase_counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  const DoubleIncreaseCounter({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterViewModel>.reactive(
        builder: (context, model, child) => GestureDetector(
              onTap: model.updateCounter,
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Column(children:<Widget>[
Text('Tap to double counter',textAlign:TextAlign.center),
Text(model.counter.toString(),textAlign:TextAlign.center)
                  ])),
            ),
        viewModelBuilder: () => DoubleIncreaseCounterViewModel());
  }
}
