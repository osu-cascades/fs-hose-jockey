import 'package:flutter/material.dart';
import 'new_estimate_screen.dart';

// TODO: Remove these
import 'order_screen.dart';
import '../models/estimate.dart';



class SelectedEngagement extends StatefulWidget{

  final List<Estimate> orders;
  final String name;
  SelectedEngagement(this.orders, this.name);

  static const routeName = 'engagement';

  _SelectedEngagementState createState() => _SelectedEngagementState();

}

class _SelectedEngagementState extends State<SelectedEngagement> {

  @override
  Widget build(BuildContext context) {
    if(widget.orders.isEmpty){
      return Scaffold(
        appBar: AppBar(
          title: Text("${widget.name}"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("No Orders Created Yet"),
              ],
            )
          ],
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
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.name}"),
      ),
      body: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: widget.orders.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text('Order ${widget.orders.length - index}'), // TODO: Replace this name with actual name later
              subtitle: Text('${widget.orders[index].acres.toString()} Acres\nCreate on: ${widget.orders[index].timeStamp}\n'),
              onTap: () {
                // TODO: show saved item from here this is temporary
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewResultsScreen(estimate: widget.orders[index],))
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