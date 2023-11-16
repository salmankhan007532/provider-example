import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_stat_managment_class/example_provider.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  var value = 0.44;
  @override
  Widget build(BuildContext context) {
   // var provider = Provider.of<MultiProviderExmaple>(context, listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(title: const Text("Multi Provider Example")),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<MultiProviderExmaple>(
            builder: (context, zia, child) => 
            Slider(
              min: 0,
              max: 1,
              value: zia.value, 
              onChanged: (val){
                zia.setValue(val);
              }),
          ),

            Text("the value is : $value",style: const TextStyle(fontSize: 17),),

            Consumer<MultiProviderExmaple>(
              builder: (context, value, child) => 
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.red.withOpacity(value.value),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.green.withOpacity(value.value),
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}