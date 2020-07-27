import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(MultiPicker());

class MultiPicker extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiplePickerSample(),
    );
  }
}

class MultiplePickerSample extends StatefulWidget {
  @override
  _MultiplePickerSampleState createState() => _MultiplePickerSampleState();
}

class _MultiplePickerSampleState extends State<MultiplePickerSample> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Card(
          margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: SfDateRangePicker(
            view: DateRangePickerView.month,
            selectionMode: DateRangePickerSelectionMode.range,
            enableMultiView: true,
          ),
        )
      ],
    ));
  }
}
