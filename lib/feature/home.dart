import 'package:flutter/material.dart';
import '../widgets/animatedContiner_ex.dart';
import '../widgets/animatedIcn_ex.dart';
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

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(seconds: 1), vsync: this);
    super.initState();
  }

  @override
  int _currentIndex = 0;
  bool isSelectet = false;

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
            buildAnimatedCrossFade(
              isSelected: isSelectet,
            ),
            buildAnimatedIcon(isSelected: isSelectet,
              animationController: animationController,),
            BuildAnimatedContainer(isSelectet: isSelectet,)
          ],
        ),
      ),
    );
  }




}
