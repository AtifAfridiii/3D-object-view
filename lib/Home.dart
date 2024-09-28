import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


final _o3dcontroller = O3DController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Row(
          children: [
            SizedBox(width: 5,),
             ElevatedButton(
            onPressed: (){
          _o3dcontroller.cameraOrbit(180, 70, 5);
            },
            child: Text('1'),
          ),
            SizedBox(width: 5,),
             ElevatedButton(
            onPressed: (){
          _o3dcontroller.cameraOrbit(50, 50, 5);
            },
            child: Text('2'),
          ),
           SizedBox(width: 5,),
             ElevatedButton(
            onPressed: (){
          _o3dcontroller.cameraOrbit(0, 70, 2);
            },
            child: Text('3'),
          ),
            SizedBox(width: 5,),
            
          ],
         ) ,
          Expanded(
            child: Center(
              child: O3D.asset(
                src: 'ast/ca.glb',
                controller: _o3dcontroller,
              ),
            ),
          ),
         
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Other content goes here'),
          ),
        ],
      ),

    );
  }
}