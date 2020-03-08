import 'package:flutter/material.dart';
import 'package:park_here/constants.dart';
import 'package:park_here/widgets/app_drawer.dart';
import 'Add_Api_Screen.dart';
import 'Api_List.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    /*if(no>0)
    apicheck();*/
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 30),
                  height: MediaQuery.of(context).size.height - 230.0,
                  child: ApiList(),
                ),
                Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      color: Colors.red[600],
                      icon: Icon(
                        Icons.menu,
                        size: 35.0,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
              ],
            ),
            Expanded(
              child: RaisedButton(onPressed: (){
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => SingleChildScrollView(
                        child:Container(
                          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: AddAPIScreen(),
                        )
                    )
                );
              },color: Colors.red[600],
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('ADD API'),
                    Icon(Icons.add,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),)
              
            )
          ],
        ),
      ),
    );
  }
}
