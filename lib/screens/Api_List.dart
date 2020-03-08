import 'package:flutter/material.dart';
import 'package:park_here/constants.dart';
class ApiList extends StatefulWidget {
  @override
  _ApiListState createState() => _ApiListState();
}

class _ApiListState extends State<ApiList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: apis.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 10,
          child: Container(
            padding: EdgeInsets.only( left: 21),
            height: 150,
            width: 330,
            decoration: BoxDecoration(

              shape: BoxShape.rectangle,

              color: Color(0xfF9F9F9),
              borderRadius: new BorderRadius.all(Radius.circular(20)),

            ),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Summary()),

                    );*/
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${apis[index]}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Open Sans',
                            fontSize: 24),
                      ),
                      Text(
                        '${status[0]}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Open Sans',
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),

                Column(

                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 30,
                      child: FlatButton(
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.close,
                          size: 15.62,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            apis.removeAt(index);
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
      const Divider(),
    );
  }
}
