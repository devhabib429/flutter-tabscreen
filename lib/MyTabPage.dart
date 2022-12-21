import 'package:flutter/material.dart';

class MyTabPage extends StatefulWidget {
  const MyTabPage({super.key});

  @override
  State<MyTabPage> createState() => _MyTabPageState();
}

class _MyTabPageState extends State<MyTabPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(title: Text("Hello Tab"),
        bottom: const TabBar(  
              tabs: [  
                Tab(icon: Icon(Icons.home)),  
                Tab(icon: Icon(Icons.notification_add)),
                Tab(icon: Icon(Icons.access_alarm)),
                Tab(icon: Icon(Icons.camera_alt))  
              ],
            
            ),  
        ),
         body: const TabBarView(  
            children: [  
              FirstScreen(),  
              SecondScreen(), 
              ThirdScreen(),
              FourthScreen() 
            ],  
          ),  
        
      ),
    );
  }
}



class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[200],
      child: Center(child: Text("Tab 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
    );
  }
}


class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(child: Text("Tab 2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Center(child: Text("Tab 3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
    );
  }
}


class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(child: Text("Tab 4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
    );
  }
}