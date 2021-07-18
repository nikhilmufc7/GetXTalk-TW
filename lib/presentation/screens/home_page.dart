import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_tw/controllers/home_controller.dart';
import 'package:getx_tw/presentation/screens/detail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // Using GetBuilder, less ram usage, fast but no reactive
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<HomeController>(
              init: HomeController(),
              builder: (homeController) =>
                  Text(homeController.counter.toString())),

          // No need to reassign a controller if its been initialized
          GetBuilder<HomeController>(
            //  will only rebuild if we interact with buttons
            builder: (homeController) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  onPressed: () {
                    homeController.increment();
                  },
                  child: Icon(Icons.add),
                ),
                MaterialButton(
                  onPressed: () {
                    homeController.decrement();
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () => Get.to(DetailScreen()),
            child: Text('Go to detail'),
          )
        ],
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   // Using Obx, fast, reactive and memory efficient
//   @override
//   Widget build(BuildContext context) {
//     HomeController homeController = Get.put(HomeController());
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Obx(() => Text(homeController.counter.value.toString())),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               MaterialButton(
//                 onPressed: () => homeController.increment(),
//                 child: Icon(Icons.add),
//               ),
//               MaterialButton(
//                 onPressed: () => homeController.decrement(),
//                 child: Icon(Icons.remove),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
