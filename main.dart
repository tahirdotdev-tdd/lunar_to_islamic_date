import 'package:flutter/material.dart';
import 'package:lunar_to_islamic_date/lunar_to_islamic_date.dart';

void main() => runApp(const LunarToIslamicExample());

class LunarToIslamicExample extends StatelessWidget {
  const LunarToIslamicExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Lunar to Islamic Date Converter')),
        body: const LunarToIslamicDateWidget(),
      ),
    );
  }
}

class LunarToIslamicDateWidget extends StatefulWidget {
  const LunarToIslamicDateWidget({super.key});

  @override
  _LunarToIslamicDateWidgetState createState() => _LunarToIslamicDateWidgetState();
}

class _LunarToIslamicDateWidgetState extends State<LunarToIslamicDateWidget> {
  String _convertedDate = '';

  void _convertDate() {
    final result = LunarToIslamicDate.convertToIslamicDate(2025, 1, 26);
    setState(() {
      _convertedDate =
      'Islamic Date: ${result['day']}-${result['month']}-${result['year']}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_convertedDate, style: const TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _convertDate,
            child: const Text('Convert Lunar Date to Islamic Date'),
          ),
        ],
      ),
    );
  }
}
