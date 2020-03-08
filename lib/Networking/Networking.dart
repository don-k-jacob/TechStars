import 'package:http/http.dart'as http;


class NetworkHelp{
  NetworkHelp({this.url});
  final String url;
  Future getData()async {

    http.Response response = await http.get(url);
    if(response.statusCode==200) {
      return 'online';
    }
    else{
      return 'ofline';
    }
  }
}