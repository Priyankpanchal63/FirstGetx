import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Demo'),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.lightBlue,
            child: ListTile(
              title: Text('Getx Dailog Alert'),
              subtitle: Text('Getx Dialog alert twith getX'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete Chat',
                  //middleText: "Are you Sure you want to delete the chat",
                  backgroundColor: Colors.grey,
                  titlePadding: EdgeInsets.only(top: 20),
                  contentPadding: EdgeInsets.all(20),
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text('Ok')),
                  cancel: TextButton(onPressed: () {}, child: Text('Cancel')),
                );
              },
            ),
          ),

          Card(
            color: Colors.orange,
            child: ListTile(
              title: Text('GetX Buttomheet Alert2'),
              subtitle: Text('GetX Dialog alert with getX'),
              onTap: () {
                Get.bottomSheet(
                    Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light_mode),
                        title: Text('Light Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark Theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.snackbar('Priyank Panchal', 'Can u fil the spark',
            icon: Icon(Icons.ac_unit),
            onTap: (snap) {},
            mainButton: TextButton(onPressed: () {}, child: Text("Click")),
            snackPosition: SnackPosition.TOP,
            snackStyle: SnackStyle.FLOATING);
      }),
    );
  }
}
