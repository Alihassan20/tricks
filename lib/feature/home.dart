import 'package:flutter/material.dart';
import '../widgets/crossFade_ex.dart';
import '../widgets/expansionTi.dart';
import '../widgets/choice_ex.dart';
import '../widgets/customSearch.dart';
import '../widgets/fitted_ex.dart';
import '../widgets/stepper_ex.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _currentIndex = 0;
  bool isSelectet = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchDialog());
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Steperbuild(
              current: _currentIndex,
            ),
            buildFittedBox(),
            buildChoiceChip(isSelected: isSelectet),
            buildExpansionTile(),
            buildAnimatedCrossFade(isSelected: isSelectet,)
          ],
        ),
      ),
    );
  }

  
}
