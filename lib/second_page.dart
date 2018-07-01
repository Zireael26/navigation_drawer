import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  final String title;

  SecondPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Text(title)),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_to_photos),
          onPressed: () {
            new SnackBar(
              content: Text("The FAB was pressed!"),
              action: SnackBarAction(
                  label: "Dismiss",
                  onPressed: () {
                    ScaffoldState().removeCurrentSnackBar();
                  }),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
