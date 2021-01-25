part of models;

abstract class ProductDatasheets implements Built<ProductDatasheets, ProductDatasheetsBuilder> {
  factory ProductDatasheets([void Function(ProductDatasheetsBuilder b) updates]) = _$ProductDatasheets;

  factory ProductDatasheets.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  ProductDatasheets._();

  String get type;

  String get description;

  String get url;

  static Serializer<ProductDatasheets> get serializer => _$productDatasheetsSerializer;
}
