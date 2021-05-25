import 'dart:convert';
import 'package:vendeta/src/models/index.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class FarnellApi {
  const FarnellApi({@required Client client, @required int productsLimit, @required String apiKey})
      : assert(client != null),
        assert(productsLimit != null),
        assert(apiKey != null),
        _client = client,
        _productsLimit = productsLimit,
        _apiKey = apiKey;

  final Client _client;
  final int _productsLimit;
  final String _apiKey;

  Future<List<Product>> getProducts(int offset, String term) async {
    final Uri url = Uri.parse('https://api.element14.com//catalog/products').replace(
      queryParameters: <String, String>{
        'term': 'any:$term',
        'storeInfo.id': 'uk.farnell.com',
        'resultsSettings.offset': '$offset',
        'resultsSettings.numberOfResults': '$_productsLimit',
        'resultsSettings.responseGroup': 'large',
        'callInfo.omitXmlSchema': 'false',
        'callInfo.callback': '',
        'callInfo.responseDataFormat': 'json',
        'callInfo.apiKey': _apiKey
      },
    );

    final Response response = await _client.get(url);

    final List<dynamic> data = jsonDecode(response.body)['keywordSearchReturn']['products'];
    return data.map((dynamic json) => Product.fromJson(json)).toList();
  }
}
