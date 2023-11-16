import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stat_managment_class/count_provider.dart';

class HoeScreen extends StatefulWidget {
   const HoeScreen({super.key});

  @override
  State<HoeScreen> createState() => _HoeScreenState();
}
class _HoeScreenState extends State<HoeScreen> {
 var conut = 20;

  @override
  Widget build(BuildContext context) {
    print("build ");
    var provider = Provider.of<countProvider>(context, listen: false);
    return  Scaffold(
      appBar: AppBar( title: const Text("Home Screen"),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const Text("this is count", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
          Consumer<countProvider>(builder: (context, value, child){
            return Text("${provider.count}", style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),);
          })
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          provider.setcount();
        },
        child: const Icon(Icons.add),
        ),
    );
  }
}