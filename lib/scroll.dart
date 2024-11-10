import 'package:flutter/material.dart';
import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';

class ScrollPage extends StatefulWidget {

  const ScrollPage({
    super.key,
  });

  @override
  State<ScrollPage> createState() => ScrollPageState();

}

class ScrollPageState extends State<ScrollPage> {

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter App', 
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: CustomMaterialIndicator(
        onRefresh: () async {},
        backgroundColor: Colors.white,
        autoRebuild: false,
        displacement: 100,
        indicatorBuilder: (BuildContext context, IndicatorController controller) {
          print(controller.value);
          return Padding(
            padding: const EdgeInsets.only(top: 6, left: 6, right: 6, bottom: 6),
            child: CircularProgressIndicator(
              value: controller.state.isLoading ? controller.value.clamp(0.0, 1.0) : null,
              color: const Color.fromARGB(255, 46, 49, 146),
            ),
          );
        },
        child: CustomScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          slivers: <Widget> [
            SliverList.list(
              children: <Widget> [
                Container(
                  padding: const EdgeInsets.all(1),
                  height: size.height - 100,
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Text(
                          'Pull to refresh',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black, 
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ),
                )
              ],
            ),
          ],
        )
      )
    );
  }

}