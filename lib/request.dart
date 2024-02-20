import "package:http/http.dart";

Future getData(url) async{
  Response response = await get(rul);
  return response.body;
}