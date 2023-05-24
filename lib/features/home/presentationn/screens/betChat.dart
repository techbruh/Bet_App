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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red[400],
          onPressed: (){},
          label: Text("unread mentions"),
        icon: Icon(Icons.arrow_downward_sharp),
      ),
      backgroundColor: Colors.indigo[800],
      body: getBody(),
      bottomNavigationBar: getFooter(),
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
            ),
            // Container(
            //   height: 50,
            //   width: 50,
            //   color: Colors.green,
            // )
          ],
        ),
        SizedBox(
          height: 6,
        ),
        SingleChildScrollView(
          child: Container(
            height: 656,
            width: 700,
            decoration:BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white
            ),
            child: SingleChildScrollView(
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
                        padding: const EdgeInsets.only(left: 22),
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
                              Text("👍", style: TextStyle(fontSize: 20),),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("4", style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("💬", style: TextStyle(fontSize: 20) ,)
                              ],
                            ),

                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("😅", style: TextStyle(fontSize: 20),),
                                    Text("2", style: TextStyle(fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular((10))),
                                      color: Colors.grey
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.add_reaction_outlined, color: Colors.grey.shade800,)
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 10),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/images/profile1.jpg'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 7),
                          child: Container(
                            child: Column(
                              children: [
                                Text('Travis Coleman',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 65),
                                  child: Text('15:22', style: TextStyle(fontSize: 15, color: Colors.grey)),
                                ),
                              ],
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2, left: 3),
                    child: Text("The forecast looks wet for Monday Night Football.\nThe Under is lookinng to nasty", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height:300,
                      width: 420,
                      decoration: BoxDecoration(
                        border: Border.all(width: 5,),
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                            image: AssetImage("assets/images/ball_img.jpg"
                        )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  getFooter(){
    return Container(
      height: 60,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        height: 35,
        width: 25,
        decoration: BoxDecoration(
          color: Colors.grey[300],
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
              ),
            ),
            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                    labelText: "   Write something",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
