import 'package:bet_app/features/home/presentationn/screens/betChat.dart';
import 'package:flutter/material.dart';
import 'package:bet_app/app/app_json.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody(){
    return IndexedStack(
      index: activeTab,
      children: [
        BetChat(),
      ],
    );
  }


  Widget getFooter (){
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20, top: 5 ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    activeTab = index;
                  });
                },
                child: Column(
                  children: [
                    Icon(items[index]['icon'],
                      color: Colors.black ,
                    ),
                    SizedBox(
                      height: 5 ,
                    ),
                    Text(items[index]['text'],
                      style: TextStyle (color: Colors.black,
                          fontSize: 10
                      ),
                    )
                  ],
                ),
              );
            })
        ),
      ) ,
    );
  }
}
