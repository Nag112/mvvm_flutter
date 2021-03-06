import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mvvm_example/ui/views/partial_builds/partial_builds_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class PartialBuildsView extends StatelessWidget {
  const PartialBuildsView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
        builder: (context, model, child) => Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[_StringForm(), _TextValue()],
                ),
              ),
            ),
        viewModelBuilder: () => PartialBuildsViewModel());
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm({Key key}) : super(key: key, reactive: false);
  @override
  Widget buildViewModelWidget(
      BuildContext context, PartialBuildsViewModel model) {
    var text = useTextEditingController();
    return TextField(
      controller: text,
       decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Text',
  ),
      onChanged: model.updateString,
    );
  }
}

class _TextValue extends ViewModelWidget<PartialBuildsViewModel> {
  _TextValue({Key key}) : super(key: key, reactive: true);
  @override
  Widget build(BuildContext context, PartialBuildsViewModel viewModel) {
    return Text(viewModel.title);
  }
}
