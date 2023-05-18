import 'package:flutter/material.dart';


class BetChat extends StatefulWidget {
  const BetChat({Key? key}) : super(key: key);

  @override
  State<BetChat> createState() => _BetChatState();
}

class _BetChatState extends State<BetChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: getBody(),
    );
  }
  getBody(){

    return Column(
      children: [
        SizedBox(
          height: 54,
        ),
        Row(
          children: [
            SizedBox(
              width: 10 ,
            ),
            Icon(Icons.menu_outlined, size: 40, color: Colors.white,),
            SizedBox(
              width: 10,
            ),

            Text('Bet Chat', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(
              width: 210,
            ),

            Container(
              height: 40,
              width: 40,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.all(Radius.circular((10)))
                ),
                child: Center(
                  child: Icon(Icons.person_add_alt,color: Colors.white,size: 30,),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        Container(
          height: 716,
          width: 500,
          decoration:BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.white
          ),
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                Expanded(
                  child: Divider(
                    indent: 15,
                    endIndent: 25,
                    thickness: 1,
                    color: Colors.grey
                  ),
                ),
                  Text('Jan 6, 2023', style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                  Expanded(
                      child: Divider(
                        indent: 25,
                        endIndent: 15,
                        thickness: 1,
                        color: Colors.grey,
                      )
                  )
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,bottom: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 7),
                      child: Container(
                        child: Column(
                          children: [
                            Text('Travis Coleman',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold) ,),
                            SizedBox(
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 65),
                              child: Text('15:22', style: TextStyle(fontSize: 15, color: Colors.grey),),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 2,left: 3),
                child: Text("The forecast looks wet for Monday Night Football.\nThe Under is lookinng to nasty", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height:40,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10),

                        )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.thumb_up_alt_outlined),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text("4"),
                          )
                        ],
                      ),

                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
