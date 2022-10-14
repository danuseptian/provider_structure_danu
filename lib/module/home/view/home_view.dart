import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../util/constant.dart';
import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Provider Implementation'),
      ),
      body: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Consumer and context.read',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Consumer',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'This is an example of using Consumer and context.read. The purpose of Consumer is you can update any widget you like without changing your widget to stateful widget.\n\nWhen you update something to your screen, only widget that wrapped with Consumer that changed. Other widget doesn\'t change.\n\nThis implementation makes the app more light and clean.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'context.read',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'context.read is a way to call your controller without making new variable to your view.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Consumer<HomeController>(builder: (_, controller, __) {
                    return Center(
                      child: Text(
                        '${controller.number}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () {
                          context.read<HomeController>().decreaseNumber();
                        },
                        icon: Icon(Icons.remove),
                        label: Text('Decrease'),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () {
                          context.read<HomeController>().resetNumber();
                        },
                        icon: Icon(Icons.refresh),
                        label: Text('Reset'),
                      ),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                        ),
                        onPressed: () {
                          context.read<HomeController>().addNumber();
                        },
                        icon: Icon(Icons.add),
                        label: Text('Add'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
