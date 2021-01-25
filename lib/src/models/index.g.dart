// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Product> _$productSerializer = new _$ProductSerializer();
Serializer<ProductImage> _$productImageSerializer = new _$ProductImageSerializer();
Serializer<ProductDatasheets> _$productDatasheetsSerializer = new _$ProductDatasheetsSerializer();

class _$ProductSerializer implements StructuredSerializer<Product> {
  @override
  final Iterable<Type> types = const [Product, _$Product];
  @override
  final String wireName = 'Product';

  @override
  Iterable<Object> serialize(Serializers serializers, Product object, {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'displayName',
      serializers.serialize(object.displayName, specifiedType: const FullType(String)),
      'brandName',
      serializers.serialize(object.brandName, specifiedType: const FullType(String)),
      'image',
      serializers.serialize(object.productImage, specifiedType: const FullType(ProductImage)),
      'datasheets',
      serializers.serialize(object.productDatasheets,
          specifiedType: const FullType(BuiltList, const [const FullType(ProductDatasheets)])),
    ];

    return result;
  }

  @override
  Product deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'displayName':
          result.displayName = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'brandName':
          result.brandName = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.productImage
              .replace(serializers.deserialize(value, specifiedType: const FullType(ProductImage)) as ProductImage);
          break;
        case 'datasheets':
          result.productDatasheets.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(ProductDatasheets)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductImageSerializer implements StructuredSerializer<ProductImage> {
  @override
  final Iterable<Type> types = const [ProductImage, _$ProductImage];
  @override
  final String wireName = 'ProductImage';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'baseName',
      serializers.serialize(object.baseName, specifiedType: const FullType(String)),
      'vrntPath',
      serializers.serialize(object.vrntPath, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ProductImage deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'baseName':
          result.baseName = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'vrntPath':
          result.vrntPath = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDatasheetsSerializer implements StructuredSerializer<ProductDatasheets> {
  @override
  final Iterable<Type> types = const [ProductDatasheets, _$ProductDatasheets];
  @override
  final String wireName = 'ProductDatasheets';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductDatasheets object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description, specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ProductDatasheets deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDatasheetsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppState extends AppState {
  @override
  final BuiltList<Product> products;
  @override
  final BuiltList<ProductDatasheets> productDatasheets;
  @override
  final int perPage;
  @override
  final int offset;
  @override
  final String term;
  @override
  final bool isLoading;

  factory _$AppState([void Function(AppStateBuilder) updates]) => (new AppStateBuilder()..update(updates)).build();

  _$AppState._({this.products, this.productDatasheets, this.perPage, this.offset, this.term, this.isLoading})
      : super._() {
    if (products == null) {
      throw new BuiltValueNullFieldError('AppState', 'products');
    }
    if (productDatasheets == null) {
      throw new BuiltValueNullFieldError('AppState', 'productDatasheets');
    }
    if (perPage == null) {
      throw new BuiltValueNullFieldError('AppState', 'perPage');
    }
    if (offset == null) {
      throw new BuiltValueNullFieldError('AppState', 'offset');
    }
    if (term == null) {
      throw new BuiltValueNullFieldError('AppState', 'term');
    }
    if (isLoading == null) {
      throw new BuiltValueNullFieldError('AppState', 'isLoading');
    }
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        products == other.products &&
        productDatasheets == other.productDatasheets &&
        perPage == other.perPage &&
        offset == other.offset &&
        term == other.term &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc($jc(0, products.hashCode), productDatasheets.hashCode), perPage.hashCode), offset.hashCode),
            term.hashCode),
        isLoading.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('products', products)
          ..add('productDatasheets', productDatasheets)
          ..add('perPage', perPage)
          ..add('offset', offset)
          ..add('term', term)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState _$v;

  ListBuilder<Product> _products;
  ListBuilder<Product> get products => _$this._products ??= new ListBuilder<Product>();
  set products(ListBuilder<Product> products) => _$this._products = products;

  ListBuilder<ProductDatasheets> _productDatasheets;
  ListBuilder<ProductDatasheets> get productDatasheets =>
      _$this._productDatasheets ??= new ListBuilder<ProductDatasheets>();
  set productDatasheets(ListBuilder<ProductDatasheets> productDatasheets) =>
      _$this._productDatasheets = productDatasheets;

  int _perPage;
  int get perPage => _$this._perPage;
  set perPage(int perPage) => _$this._perPage = perPage;

  int _offset;
  int get offset => _$this._offset;
  set offset(int offset) => _$this._offset = offset;

  String _term;
  String get term => _$this._term;
  set term(String term) => _$this._term = term;

  bool _isLoading;
  bool get isLoading => _$this._isLoading;
  set isLoading(bool isLoading) => _$this._isLoading = isLoading;

  AppStateBuilder();

  AppStateBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products?.toBuilder();
      _productDatasheets = _$v.productDatasheets?.toBuilder();
      _perPage = _$v.perPage;
      _offset = _$v.offset;
      _term = _$v.term;
      _isLoading = _$v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              products: products.build(),
              productDatasheets: productDatasheets.build(),
              perPage: perPage,
              offset: offset,
              term: term,
              isLoading: isLoading);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
        _$failedField = 'productDatasheets';
        productDatasheets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Product extends Product {
  @override
  final String displayName;
  @override
  final String brandName;
  @override
  final ProductImage productImage;
  @override
  final BuiltList<ProductDatasheets> productDatasheets;

  factory _$Product([void Function(ProductBuilder) updates]) => (new ProductBuilder()..update(updates)).build();

  _$Product._({this.displayName, this.brandName, this.productImage, this.productDatasheets}) : super._() {
    if (displayName == null) {
      throw new BuiltValueNullFieldError('Product', 'displayName');
    }
    if (brandName == null) {
      throw new BuiltValueNullFieldError('Product', 'brandName');
    }
    if (productImage == null) {
      throw new BuiltValueNullFieldError('Product', 'productImage');
    }
    if (productDatasheets == null) {
      throw new BuiltValueNullFieldError('Product', 'productDatasheets');
    }
  }

  @override
  Product rebuild(void Function(ProductBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  ProductBuilder toBuilder() => new ProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        displayName == other.displayName &&
        brandName == other.brandName &&
        productImage == other.productImage &&
        productDatasheets == other.productDatasheets;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, displayName.hashCode), brandName.hashCode), productImage.hashCode), productDatasheets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Product')
          ..add('displayName', displayName)
          ..add('brandName', brandName)
          ..add('productImage', productImage)
          ..add('productDatasheets', productDatasheets))
        .toString();
  }
}

class ProductBuilder implements Builder<Product, ProductBuilder> {
  _$Product _$v;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _brandName;
  String get brandName => _$this._brandName;
  set brandName(String brandName) => _$this._brandName = brandName;

  ProductImageBuilder _productImage;
  ProductImageBuilder get productImage => _$this._productImage ??= new ProductImageBuilder();
  set productImage(ProductImageBuilder productImage) => _$this._productImage = productImage;

  ListBuilder<ProductDatasheets> _productDatasheets;
  ListBuilder<ProductDatasheets> get productDatasheets =>
      _$this._productDatasheets ??= new ListBuilder<ProductDatasheets>();
  set productDatasheets(ListBuilder<ProductDatasheets> productDatasheets) =>
      _$this._productDatasheets = productDatasheets;

  ProductBuilder();

  ProductBuilder get _$this {
    if (_$v != null) {
      _displayName = _$v.displayName;
      _brandName = _$v.brandName;
      _productImage = _$v.productImage?.toBuilder();
      _productDatasheets = _$v.productDatasheets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Product other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Product;
  }

  @override
  void update(void Function(ProductBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Product build() {
    _$Product _$result;
    try {
      _$result = _$v ??
          new _$Product._(
              displayName: displayName,
              brandName: brandName,
              productImage: productImage.build(),
              productDatasheets: productDatasheets.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'productImage';
        productImage.build();
        _$failedField = 'productDatasheets';
        productDatasheets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Product', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ProductImage extends ProductImage {
  @override
  final String baseName;
  @override
  final String vrntPath;

  factory _$ProductImage([void Function(ProductImageBuilder) updates]) =>
      (new ProductImageBuilder()..update(updates)).build();

  _$ProductImage._({this.baseName, this.vrntPath}) : super._() {
    if (baseName == null) {
      throw new BuiltValueNullFieldError('ProductImage', 'baseName');
    }
    if (vrntPath == null) {
      throw new BuiltValueNullFieldError('ProductImage', 'vrntPath');
    }
  }

  @override
  ProductImage rebuild(void Function(ProductImageBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  ProductImageBuilder toBuilder() => new ProductImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductImage && baseName == other.baseName && vrntPath == other.vrntPath;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, baseName.hashCode), vrntPath.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductImage')..add('baseName', baseName)..add('vrntPath', vrntPath))
        .toString();
  }
}

class ProductImageBuilder implements Builder<ProductImage, ProductImageBuilder> {
  _$ProductImage _$v;

  String _baseName;
  String get baseName => _$this._baseName;
  set baseName(String baseName) => _$this._baseName = baseName;

  String _vrntPath;
  String get vrntPath => _$this._vrntPath;
  set vrntPath(String vrntPath) => _$this._vrntPath = vrntPath;

  ProductImageBuilder();

  ProductImageBuilder get _$this {
    if (_$v != null) {
      _baseName = _$v.baseName;
      _vrntPath = _$v.vrntPath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductImage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductImage;
  }

  @override
  void update(void Function(ProductImageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductImage build() {
    final _$result = _$v ?? new _$ProductImage._(baseName: baseName, vrntPath: vrntPath);
    replace(_$result);
    return _$result;
  }
}

class _$ProductDatasheets extends ProductDatasheets {
  @override
  final String type;
  @override
  final String description;
  @override
  final String url;

  factory _$ProductDatasheets([void Function(ProductDatasheetsBuilder) updates]) =>
      (new ProductDatasheetsBuilder()..update(updates)).build();

  _$ProductDatasheets._({this.type, this.description, this.url}) : super._() {
    if (type == null) {
      throw new BuiltValueNullFieldError('ProductDatasheets', 'type');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('ProductDatasheets', 'description');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('ProductDatasheets', 'url');
    }
  }

  @override
  ProductDatasheets rebuild(void Function(ProductDatasheetsBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  ProductDatasheetsBuilder toBuilder() => new ProductDatasheetsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDatasheets && type == other.type && description == other.description && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, type.hashCode), description.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDatasheets')
          ..add('type', type)
          ..add('description', description)
          ..add('url', url))
        .toString();
  }
}

class ProductDatasheetsBuilder implements Builder<ProductDatasheets, ProductDatasheetsBuilder> {
  _$ProductDatasheets _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ProductDatasheetsBuilder();

  ProductDatasheetsBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _description = _$v.description;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDatasheets other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDatasheets;
  }

  @override
  void update(void Function(ProductDatasheetsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDatasheets build() {
    final _$result = _$v ?? new _$ProductDatasheets._(type: type, description: description, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
