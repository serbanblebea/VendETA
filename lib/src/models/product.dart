part of models;

abstract class Product implements Built<Product, ProductBuilder> {
  factory Product([void Function(ProductBuilder b) updates]) = _$Product;

  factory Product.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  Product._();

  String get displayName;

  String get brandName;

  @BuiltValueField(wireName: 'image')
  ProductImage get productImage;

  @BuiltValueField(wireName: 'datasheets')
  BuiltList<ProductDatasheets> get productDatasheets;

  static Serializer<Product> get serializer => _$productSerializer;
}
