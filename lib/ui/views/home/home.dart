import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import './home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child) => Scaffold(
              body: Center(child: Text(model.title +' '+ model.counter.toString())),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: model.increment,
              ),
            ),
        viewModelBuilder: () => HomeViewModel());
  }
}
