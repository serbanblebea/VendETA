part of models;

abstract class ProductImage implements Built<ProductImage, ProductImageBuilder> {
  factory ProductImage([void Function(ProductImageBuilder b) updates]) = _$ProductImage;

  factory ProductImage.fromJson(dynamic json) => serializers.deserializeWith(serializer, json);

  ProductImage._();

  String get baseName;

  String get vrntPath;

  static Serializer<ProductImage> get serializer => _$productImageSerializer;
}
