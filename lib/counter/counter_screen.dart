import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int counter = 0;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Center(child: const Text('Counte Screen')),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(counter.toString(),style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                style: IconButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  setState(() {
                    counter--;
                  });
                },
                icon: const Icon(Icons.remove,color: Colors.white,)
               ),
              IconButton(
                style: IconButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                icon: const Icon(Icons.add,color: Colors.white,)
                 ),
            ],
          )
        ],
      ),
    );
  }
}