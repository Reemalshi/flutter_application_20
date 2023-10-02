import 'package:flutter/material.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({super.key});

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> {
  // late DateTime pickedDate;
  // late TimeOfDay time;

  @override
  // void initState() {
  //   super.initState();
  //   pickedDate = DateTime.now();
  //   time = TimeOfDay.now();
  // }
  // _pickDate() async {
  //  DateTime? date = await showDatePicker(
  //     context: context,
  //     firstDate: DateTime(DateTime.now().year-5),
  //     lastDate: DateTime(DateTime.now().year+5),
  //     initialDate: pickedDate,
  //   );
  //   if(date != null)
  //     setState(() {
  //       pickedDate = date;
  //     }
  //     );
  // }
  // _pickTime() async {
  //  TimeOfDay? t = await showTimePicker(
  //     context: context,
  //     initialTime: time
  //   );
  //   if(t != null)
  //     setState(() {
  //       time = t;
  //     });
  // }
// }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" the date and time "),
        backgroundColor:Colors.green,
        
      ),
  //     body: 
  //    SingleChildScrollView(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           ListTile(
  //             title: Text("Date: ${pickedDate.year}, ${pickedDate.month}, ${pickedDate.day}"),
  //             trailing: Icon(Icons.keyboard_arrow_down),
  //             onTap: _pickDate,
  //           ),
  //           ListTile(
  //             title: Text("Time: ${time.hour}:${time.minute}"),
  //             trailing: Icon(Icons.keyboard_arrow_down),
  //             onTap: _pickTime,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
    
  // }
  
      // body: Column(
      //   children: [
      //     Center(
      //       child: Container(
      //         width: 300,
      //         height: 200,
      //         child: TextButton(onPressed: (){

      //          showDatePicker(context: context,
      //           initialDate: DateTime.now(),
      //            firstDate: DateTime.now(),
      //             lastDate: DateTime.now());
      //         }, child: Text("Show Date")),

              
      //       ),
      //     ),

      //      Center(
      //       child: Container(
      //         width: 300 ,
      //         height: 200,
      //         child: TextButton(onPressed: (){

      //          showTimePicker(
      //           context: context,
      //            initialTime: TimeOfDay.now());
      //         },
      //          child: Text("Show Time")),

              
      //       ),
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
           showDatePicker(
            context: context,
             initialDate: DateTime.now(), 
             firstDate: DateTime(2020),
              lastDate: DateTime(2024));
          }, child: Text("date")),
          ElevatedButton(onPressed: () {
            showTimePicker(
              context: context, 
            initialTime: TimeOfDay.now());
          }, child: Text("time"))
        ],
      ),
    );
  }
}

class DatePicker {
}
  
