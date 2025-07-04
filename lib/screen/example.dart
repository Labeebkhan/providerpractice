import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/examplepro.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Center(
          child: Text(
            'Multiple Providers',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ✅ Slider with Consumer<Examplepro>
          Consumer<Examplepro>(
            builder:
                (context, value, child) => Slider(
                  activeColor: const Color.fromARGB(255, 249, 136, 102),
                  thumbColor: const Color.fromARGB(255, 255, 59, 59),
                  value: value.value, // ✅ Use value from Consumer
                  min: 0,
                  max: 10,
                  onChanged: (valuenw) {
                    value.setValue(valuenw); // ✅ Clean and reactive
                  },
                ),
          ),

          // ✅ Text with Consumer<Examplepro>
          Consumer<Examplepro>(
            builder:
                (context, value, child) => Text(
                  'Value: ${value.value.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
          ),

          // ✅ Row of Containers
          Row(
            children: [
              // First Container
              Consumer<Examplepro>(
                builder:
                    (context, value, child) => Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 244, 67, value.value),
                        ),
                        child: const Center(child: Text('Container 1')),
                      ),
                    ),
              ),

              // Second Container
              Consumer<Examplepro>(
                builder:
                    (context, value, child) => Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(4, 22, 111, value.value),
                        ),
                        child: const Center(child: Text('Container 2')),
                      ),
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
