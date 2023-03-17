import "package:flutter/material.dart";


class DateFormat extends StatefulWidget {
  @override
  _DateFormatState createState() => new _DateFormatState();
}

class _DateFormatState extends State<DateFormat> {

  TextEditingController _dayController = new TextEditingController();
  String day = "";
  FocusNode _dayFocus = new FocusNode();
  bool _dayFocused = true;

  TextEditingController _monthController = new TextEditingController();
  String month = "";
  FocusNode _monthFocus = new FocusNode();

  //bool _monthFocused=false;

  TextEditingController _yearController = new TextEditingController();
  String year = "";
  FocusNode _yearFocus = new FocusNode();

  //bool _yearFocused;


  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(title: new Text("Date Format"),),
      body: new Row(
        children: <Widget>[ new Flexible (
          child: new TextField(
            keyboardType: TextInputType.datetime,
            autofocus: _dayFocused,
            focusNode: _dayFocus,
            controller: _dayController,
            onChanged: (value) {
              if (value.length <= 2) {
                //save
                day = value;
              }
              else {
                _dayFocus.unfocus();
                _monthController.text = value[2];
                _monthController.selection=new TextSelection.collapsed(offset: 1);
                FocusScope.of(context).requestFocus(_monthFocus);
                // _monthFocused =true;
                _dayController.value = new TextEditingValue(
                    text: day,
                    composing: new TextRange(
                      start: 0,
                      end: 2,
                    )
                );
              }
            },
          ),),
        new Text("/"),
        new Flexible (
          child: new TextField(
            keyboardType: TextInputType.datetime,
            focusNode: _monthFocus,
            controller: _monthController,
            onChanged: (value) {
              if (value.length <= 2) {
                //save
                //_monthController.text = value;
                month = value;

              }
              else {
                _yearController.text = value[2];
                _yearController.selection=new TextSelection.collapsed(offset: 1);
                _monthFocus.unfocus();
                FocusScope.of(context).requestFocus(_yearFocus);
                _monthController.value = new TextEditingValue(
                    text: month,
                   // selection: new TextSelection(baseOffset: 1, extentOffset: 1),
                    composing: new TextRange(
                      start: 0,
                      end: 2,
                    )
                );
              }
            },
          ),),
        new Text("/"),
        new Flexible (
          child: new TextField(
            keyboardType: TextInputType.datetime,
            focusNode: _yearFocus,
            controller: _yearController,
            onChanged: (value) {
              if (value.length <= 4) {
                //save
                year = value;
              }
              else {
                _yearFocus.unfocus();
                _yearController.value = new TextEditingValue(
                    text: year,
                    composing: new TextRange(
                      start: 0,
                      end: 4,
                    )
                );
              }
            },
            onSubmitted: (value) =>
                _scaffoldKey.currentState.showSnackBar(new SnackBar(
                    content: new Text("Your date is $day/$month/$value"))),),),

        ],),);
  }
}
