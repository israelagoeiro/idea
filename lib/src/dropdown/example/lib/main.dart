import 'package:flutter/material.dart';
import 'package:idea/src/dropdown/example/lib/widgets/decorated_dropdown.dart';
import 'package:idea/src/dropdown/example/lib/widgets/multi_select_dropdown.dart';
import 'package:idea/src/dropdown/example/lib/widgets/search_dropdown.dart';
import 'package:idea/src/dropdown/example/lib/widgets/search_request_dropdown.dart';
import 'package:idea/src/dropdown/example/lib/widgets/simple_dropdown.dart';
import 'package:idea/src/dropdown/example/lib/widgets/validation_dropdown.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Dropdown App',
      home: const Home(),
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.blue,
          onSurface: Colors.grey[200],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: const Text(
            'Custom Dropdown Example',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelStyle: TextStyle(fontSize: 18),
            unselectedLabelStyle: TextStyle(fontSize: 18),
            padding: EdgeInsets.all(2),
            tabs: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Single selection',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text('Multi selection'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const SimpleDropdown(),
                const SizedBox(height: 16),
                const SearchDropdown(),
                const SizedBox(height: 16),
                const SearchRequestDropdown(),
                const SizedBox(height: 16),
                const DecoratedDropdown(),
                const SizedBox(height: 16),
                ValidationDropdown(),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const MultiSelectDropdown(),
                const SizedBox(height: 16),
                const MultiSelectSearchDropdown(),
                const SizedBox(height: 16),
                const MultiSelectSearchRequestDropdown(),
                const SizedBox(height: 16),
                const MultiSelectDecoratedDropdown(),
                const SizedBox(height: 16),
                MultiSelectValidationDropdown(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
