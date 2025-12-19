import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchItems() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  final res = await http.get(url);

  if (res.statusCode != 200) throw Exception('Failed');

  return jsonDecode(res.body); // List of maps
}

/*
FutureBuilder(
  future: fetchItems(),
  builder: (_, snap) {
    if (!snap.hasData) return const CircularProgressIndicator();
    final list = snap.data as List;
    return Text(list[0]['title']);
  },
)
 */