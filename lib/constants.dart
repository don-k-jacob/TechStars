import 'package:flutter/cupertino.dart';
import 'package:park_here/Networking/Networking.dart';
List <String> apis= <String> [];
List <String> status= <String> [];
int no=0;
void apicheck() async{
  final int ind=0;
  status[ind]= NetworkHelp(url: apis[ind]) as String ;
}