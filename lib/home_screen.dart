import 'package:firstgetx/them_ctrl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
        actions: [
          Obx(() => IconButton(
            icon: Icon(themeController.isDarkTheme.value
                ? Icons.dark_mode
                : Icons.light_mode),
            onPressed: () {
              themeController.toggleTheme();
            },
          )),
        ],
      ),
      body: Column(
        children: [
          Card(
            color: Colors.lightBlue,
            child: ListTile(
              title: Text('GetX Dialog Alert'),
              subtitle: Text('GetX Dialog alert with GetX'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  backgroundColor: Colors.grey,
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  confirm: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Ok'),
                  ),
                  cancel: TextButton(
                    onPressed: () {},
                    child: Text('Cancel'),
                  ),
                );
              },
            ),
          ),
          Card(
            color: Colors.orange,
            child: ListTile(
              title: Text('GetX BottomSheet Alert'),
              subtitle: Text('GetX BottomSheet alert with GetX'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: () {
                            themeController.isDarkTheme.value = false;
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: () {
                            themeController.isDarkTheme.value = true;
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Priyank Panchal',
            'Can you feel the spark?',
            icon: Icon(Icons.ac_unit),
            onTap: (snap) {},
            mainButton: TextButton(onPressed: () {}, child: Text("Click")),
            snackPosition: SnackPosition.TOP,
            snackStyle: SnackStyle.FLOATING,
          );
        },
      ),
    );
  }
}
