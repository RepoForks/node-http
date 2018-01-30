import 'package:node_http/node_http.dart' as http;

main() async {
  // For one-off requests.
  final response1 = await http.get('https://example.com/');
  // To re-use socket connections:
  final client = new http.NodeClient();
  final response2 = await client.get('https://example.com/');
}
