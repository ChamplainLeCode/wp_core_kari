import "package:flutter/material.dart";
import 'package:karee/app/entities/utils/Style.dart';
import "package:karee/core/core.dart";

/*
 * @Author Champlain Marius Bakop
 * @email champlainmarius20@gmail.com
 * @github ChamplainLeCode
 * 
 */

@Screen("home", isInitial: true)
class HomeScreen extends StatefulWidget{
   @override
   _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {

  void initState(){
    super.initState();
  }

   @override
   Widget build(BuildContext context) {
     //SystemChrome.setEnabledSystemUIOverlays([]);
     return WillPopScope(
       child: 
            Scaffold(
              backgroundColor: Color(0xFFFBEEEF),
              appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Color(0xFFBB5C39).withOpacity(0.9),
                    actions: <Widget>[
                      Container(
                        child: Flex(
                          direction: Axis.horizontal,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: Container(),
                            ),
                            Flexible(
                              flex: 2,
                              child: Container(
                                child: Center(
                                  child: Text('Kari', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 70),)
                                ),
                              )
                            ),
                            Flexible(
                              child: Container(
                                child:Text('Documentation', style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300, fontSize: 15)),
                                padding: EdgeInsets.only(top: 42),  
                              ),
                              flex: 2,
                            ),
                          ],
                        ),
                        width: MediaQuery.of(context).size.width,
                      )
                    ]
                  ),
              body:  SingleChildScrollView(
                  child:  Container(
                        color: Style.primaryColor.withOpacity(0.125),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 50),
                            Text("Install Kari for Flutter Dev", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                            Card(
                              margin: EdgeInsets.only(bottom: 20, top: 10),
                              color: Colors.grey[850],
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20, top: 20),
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    children: <Widget>[
                                      Text(' haranov@bixterprise', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
                                      Text(':', style: TextStyle(color: Colors.grey)),
                                      Text('~\$ ', style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold)),
                                      Text('npm install -g kari   ', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400)),
                                    ],
                                  ),
                                )
                              ),
                            ),
                            
                            Text("Create flutter App based on Kari", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                            Card(
                              margin: EdgeInsets.only(bottom: 20, top: 10),
                              color: Colors.grey[850],
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20, top: 20),
                                width: MediaQuery.of(context).size.width,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    children: <Widget>[
                                      Text(' haranov@bixterprise', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
                                      Text(':', style: TextStyle(color: Colors.grey)),
                                      Text('~\$ ', style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold)),
                                      Text('kari create my_kari_app    ', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400))
                                    ],
                                  ),
                                )
                              ),
                            ),
                            
                            Text("Run your app", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                            Card(
                              margin: EdgeInsets.only(bottom: 20, top: 10),
                              color: Colors.grey[850],
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20, top: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(' haranov@bixterprise', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
                                          Text(':', style: TextStyle(color: Colors.grey)),
                                          Text('~\$ ', style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold)),
                                          Text('cd my_kari_app', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400))
                                        ],
                                      ),
                                    ),SizedBox(height: 10),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(' haranov@bixterprise', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
                                          Text(':', style: TextStyle(color: Colors.grey)),
                                          Text('~\$ ', style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold)),
                                          Text('kari run', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400))
                                        ],
                                      ),
                                    )
                                  ]
                                )
                              ),
                            ),

                            Text("Add a new screen to your app", textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                            Card(
                              margin: EdgeInsets.only(bottom: 20, top: 10),
                              color: Colors.grey[850],
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20, top: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(' haranov@bixterprise', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
                                          Text(':', style: TextStyle(color: Colors.grey)),
                                          Text('~\$ ', style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold)),
                                          Text('kari generate screen auth/Login login    ', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400))
                                        ],
                                      ),
                                    ),
                                  ]
                                )
                              ),
                            ),
                            Text("output: screens/auth/Login-screen.dart", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
                            Card(
                              margin: EdgeInsets.only(bottom: 20, top: 10),
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20, top: 20, left: 10),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                                      child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [
                                        Row(children: <Widget>[
                                          Text('@Screen', style: TextStyle(color: Colors.blue[700])),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                          Text("'login'", style: TextStyle(color: Colors.deepOrange)),
                                          Text(')', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('class ', style: TextStyle(color: Colors.blue[700])),
                                          Text('LoginScreen ', style: TextStyle(color: Colors.teal)),
                                          Text("extends ", style: TextStyle(color: Colors.blue[700])),
                                          Text('StatefluWidget ', style: TextStyle(color: Colors.teal)),
                                          Text('{', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('\n   @override', style: TextStyle(color: Colors.blue[700])),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('   _LoginScreenState ', style: TextStyle(color: Colors.teal)),
                                          Text('createState ', style: TextStyle(color: Colors.orange[600])),
                                          Text('() => ', style: TextStyle(color: Colors.black87)),
                                          Text('_LoginScreenState ', style: TextStyle(color: Colors.blue[700])),
                                          Text('();', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('}', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('class ', style: TextStyle(color: Colors.blue[700])),
                                          Text('_LoginScreenState ', style: TextStyle(color: Colors.teal)),
                                          Text("extends ", style: TextStyle(color: Colors.blue[700])),
                                          Text('State ', style: TextStyle(color: Colors.teal)),
                                          Text('<', style: TextStyle(color: Colors.black87)),
                                          Text('LoginScreen', style: TextStyle(color: Colors.teal)),
                                          Text('> {', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('\n   @override', style: TextStyle(color: Colors.blue[700])),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('   Widget ', style: TextStyle(color: Colors.teal)),
                                          Text('build ', style: TextStyle(color: Colors.orange[600])),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                          Text("BuildContext ", style: TextStyle(color: Colors.blue[700])),
                                          Text('context ) {', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('          ', style: TextStyle(color: Colors.blue[700])),
                                          Text('return ', style: TextStyle(color: Colors.purple[600])),
                                          Text('Scafold', style: TextStyle(color: Colors.black87)),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('                    ', style: TextStyle(color: Colors.blue[700])),
                                          Text('body: ', style: TextStyle(color: Colors.black87)),
                                          Text('Center', style: TextStyle(color: Colors.teal)),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('                              ', style: TextStyle(color: Colors.blue[700])),
                                          Text('child: ', style: TextStyle(color: Colors.black87)),
                                          Text('Text', style: TextStyle(color: Colors.teal)),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                          Text('"LoginScreen Works !!! :)"', style: TextStyle(color: Colors.deepOrange)),
                                          Text(')', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('                    ', style: TextStyle(color: Colors.blue[700])),
                                          Text(')', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('          ', style: TextStyle(color: Colors.blue[700])),
                                          Text(');', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('   }', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('}', style: TextStyle(color: Colors.black87)),
                                        ]),
                                      ])
                                    )
                                  ]
                                )
                              ),
                            ),
                            
                            
                            Text("Create a controller", textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                            Card(
                              margin: EdgeInsets.only(bottom: 20, top: 10),
                              color: Colors.grey[850],
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20, top: 20),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: <Widget>[
                                          Text(' haranov@bixterprise', style: TextStyle(color: Colors.green, fontWeight: FontWeight.w500)),
                                          Text(':', style: TextStyle(color: Colors.grey)),
                                          Text('~\$ ', style: TextStyle(color: Colors.lightBlue, fontWeight: FontWeight.bold)),
                                          Text('kari generate controller auth/Login', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400))
                                        ],
                                      ),
                                    )
                                  ]
                                )
                              ),
                            ),
                            Text("output: controller/auth/LoginController.dart", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
                            Card(
                              margin: EdgeInsets.only(bottom: 20, top: 10),
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20, top: 20, left: 10),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                                      child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [
                                        Row(children: <Widget>[
                                          Text('@Controller', style: TextStyle(color: Colors.blue[700])),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('class ', style: TextStyle(color: Colors.blue[700])),
                                          Text('LoginController ', style: TextStyle(color: Colors.teal)),
                                          Text('{', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('   dynamic ', style: TextStyle(color: Colors.teal)),
                                          Text('index ', style: TextStyle(color: Colors.orange[600])),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                          Text("BuildContext ", style: TextStyle(color: Colors.teal)),
                                          Text('context ) {', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('          ', style: TextStyle(color: Colors.teal)),
                                          Text('screen', style: TextStyle(color: Colors.orange[600])),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                          Text("'login'", style: TextStyle(color: Colors.deepOrange)),
                                          Text(', ', style: TextStyle(color: Colors.black87)),
                                          Text("RouteMode", style: TextStyle(color: Colors.teal)),
                                          Text('.', style: TextStyle(color: Colors.black87)),
                                          Text("PUSH", style: TextStyle(color: Colors.teal)),
                                          Text(', context: context );', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('   }', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('}', style: TextStyle(color: Colors.black87)),
                                        ]),
                                      ])
                                    )
                                  ]
                                )
                              ),
                            ),
                            
                            Text("Add route to your new Screen", textAlign: TextAlign.left, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),),
                            Text("open and edit file routes/Routes.dart", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
                            
                            Card(
                              margin: EdgeInsets.only(bottom: 20, top: 10),
                              color: Colors.white,
                              child: Container(
                                padding: EdgeInsets.only(bottom: 20, top: 20, left: 10),
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SingleChildScrollView(scrollDirection: Axis.horizontal,
                                      child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [
                                        Row(children: <Widget>[
                                          Text('   void ', style: TextStyle(color: Colors.blue[700])),
                                          Text('registeredRoute ', style: TextStyle(color: Colors.orange[600])),
                                          Text('() {', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('          ', style: TextStyle(color: Colors.teal)),
                                          Text('Route', style: TextStyle(color: Colors.orange[600])),
                                          Text('.', style: TextStyle(color: Colors.black87)),
                                          Text('on ', style: TextStyle(color: Colors.purple[600])),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                          Text('"/"', style: TextStyle(color: Colors.deepOrange)),
                                          Text(', ', style: TextStyle(color: Colors.black87)),
                                          Text('"HomeController@index"', style: TextStyle(color: Colors.deepOrange)),
                                          Text(');', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('          // Add your own routes', style: TextStyle(color: Colors.teal)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('          ', style: TextStyle(color: Colors.teal)),
                                          Text('Route', style: TextStyle(color: Colors.orange[600])),
                                          Text('.', style: TextStyle(color: Colors.black87)),
                                          Text('on ', style: TextStyle(color: Colors.purple[600])),
                                          Text('(', style: TextStyle(color: Colors.black87)),
                                          Text('"/login"', style: TextStyle(color: Colors.deepOrange)),
                                          Text(', ', style: TextStyle(color: Colors.black87)),
                                          Text('"LoginController@index"', style: TextStyle(color: Colors.deepOrange)),
                                          Text(');', style: TextStyle(color: Colors.black87)),
                                        ]),
                                        Row(children: <Widget>[
                                          Text('   }', style: TextStyle(color: Colors.black87)),
                                        ]),
                                      ])
                                    )
                                  ]
                                )
                              ),
                            ),
                          ],
                        ),
                      )
                )
              
          ) ,
      //   ],
       //),
       onWillPop: () async => false,
     );
   }

}
