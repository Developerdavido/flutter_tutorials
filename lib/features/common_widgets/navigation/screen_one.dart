import "package:flutter/material.dart";
import "package:flutter_tuts/features/common_widgets/navigation/screen_two.dart";
import "package:flutter_tuts/providers/counter_provider.dart";
import "package:provider/provider.dart";

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<CounterProvider>(
      builder: (context, counterProvider, child) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Counter: ${counterProvider.counter}",
                  style: TextStyle(color: Colors.black, fontSize: 44, fontWeight: FontWeight.bold),
                ),

                
                ElevatedButton(onPressed: (){
                  counterProvider.increment();
                }, child: Text("Increment"))
              ],
            ),
          ),
        );
      }
    );
  }
}