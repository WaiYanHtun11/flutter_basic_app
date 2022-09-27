import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
class DialogsExample extends StatelessWidget {
  const DialogsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    void showMessage(String message){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text("You clicked: $message"),
                action: SnackBarAction(
                  label: 'OK',
                  onPressed: (){},
                ),
            )
        );
    }
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Dialog Title'),
                      content: const Text("This is a sample alert"),
                      actions: <Widget>[
                        TextButton(
                            onPressed: (){
                                showMessage("Cancel");
                                Navigator.of(context).pop();
                            },
                            child: const Text('Cancel')
                        ),
                        TextButton(
                            onPressed: (){
                              showMessage("OK");
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK')
                        ),
                      ],
                    ),
                );
              },
              child: const Text("Alert Dialog")
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.yellow),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) => SimpleDialog(
                      title: const Text("Dialog Title"),
                      children: [
                        ListTile(
                          leading: const Icon(Icons.account_circle_outlined),
                          title: const Text("user1@gmail.com"),
                          onTap: ()=> Navigator.of(context).pop(),
                        ),
                        ListTile(
                          leading: const Icon(Icons.account_circle_outlined),
                          title:  const Text("user2@gmail.com"),
                          onTap: ()=> Navigator.of(context).pop(),
                        ),
                        ListTile(
                          leading: const Icon(Icons.add_circle_outline),
                          title: const Text("Add Account"),
                          onTap: ()=> Navigator.of(context).pop(),
                        )
                      ],
                    ),
                );
              },
              child: const Text("Simple Dialog")
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: (){
                final DateTime now = DateTime.now();
                showTimePicker(
                    context: context,
                    initialTime: TimeOfDay(hour: now.hour, minute: now.minute),
                ).then((TimeOfDay? pickedTime){
                    if(pickedTime != null){
                      showMessage(pickedTime.format(context));
                    }
                });
              },
              child: const Text("Time Picker Dialog")
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: (){
                showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2018),
                    lastDate: DateTime(2025)
                ).then((DateTime? pickedDate){
                  if(pickedDate != null){
                    DateTime _fromDate = DateTime.now();
                    _fromDate = pickedDate;
                    final String date = DateFormat.yMMMd().format(_fromDate);
                    showMessage(date);
                  }
                });
              },
              child: const Text("Date Picker")
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.purple),
              onPressed: (){
                showDateRangePicker(
                    context: context,
                    firstDate: DateTime(2018),
                    lastDate: DateTime(2025),
                ).then((DateTimeRange? pickedDateTimeRange){
                    if(pickedDateTimeRange != null){
                      DateTimeRange _fromRange = DateTimeRange(
                          start: DateTime.now(),
                          end: DateTime.now()
                      );

                      _fromRange = pickedDateTimeRange;

                      final String range =
                        '${DateFormat.yMMMd().format(_fromRange.start)} - ${DateFormat.yMMMd().format(_fromRange.end)}';
                      showMessage(range);
                    }
                });
              },
              child: const Text("Date Range Picker Dialog")
          ),
        ],
      ),
    );
  }
}
