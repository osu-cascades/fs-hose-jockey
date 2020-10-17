import 'package:flutter/material.dart';
import 'package:hose_jockey/screens/new_estimate.dart';

class MainScreen extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hose Jockey'),
      ),
      body: Center(
        child: RaisedButton(child: Text('Results'), onPressed: () {
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewEstimateScreen()));
          },),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'New estimate',
        child: Icon(Icons.add),
      )
    );
  }
}
