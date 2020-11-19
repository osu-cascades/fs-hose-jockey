import 'package:flutter/material.dart';
import 'new_estimate.dart';
import '../models/order.dart';

// TODO: Remove these
import 'results_screen.dart';
import '../models/estimate.dart';



class SelectedEngagement extends StatefulWidget{

  final List<Estimate> orders;
  SelectedEngagement(this.orders);

  static const routeName = 'engagement';

  _SelectedEngagementState createState() => _SelectedEngagementState();

}

class _SelectedEngagementState extends State<SelectedEngagement> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Name of Engagegment"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: widget.orders.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('${widget.orders[index].name}'),
              subtitle: Text('${widget.orders[index].acres.toString()} Acres\nCreate on: ${widget.orders[index].timeStamp}\n'),
              onTap: () {
                // TODO: show saved item from here this is temporary
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewResultsScreen(acreage: widget.orders[index].acres.toString(),))
                );
              },
            );
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewEstimateScreen()),
          );
        },
        tooltip: 'New Order',
        child: Icon(Icons.add),
      ),
    );
  }
}