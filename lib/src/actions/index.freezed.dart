// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GetProductsTearOff {
  const _$GetProductsTearOff();

// ignore: unused_element
  GetProductsStart start() {
    return const GetProductsStart();
  }

// ignore: unused_element
  GetProductsSuccessful successful(List<Product> products) {
    return GetProductsSuccessful(
      products,
    );
  }

// ignore: unused_element
  GetProductsError error(dynamic error) {
    return GetProductsError(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GetProducts = _$GetProductsTearOff();

/// @nodoc
mixin _$GetProducts {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result successful(List<Product> products),
    @required Result error(dynamic error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result successful(List<Product> products),
    Result error(dynamic error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetProductsStart value),
    @required Result successful(GetProductsSuccessful value),
    @required Result error(GetProductsError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetProductsStart value),
    Result successful(GetProductsSuccessful value),
    Result error(GetProductsError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GetProductsCopyWith<$Res> {
  factory $GetProductsCopyWith(GetProducts value, $Res Function(GetProducts) then) = _$GetProductsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductsCopyWithImpl<$Res> implements $GetProductsCopyWith<$Res> {
  _$GetProductsCopyWithImpl(this._value, this._then);

  final GetProducts _value;
  // ignore: unused_field
  final $Res Function(GetProducts) _then;
}

/// @nodoc
abstract class $GetProductsStartCopyWith<$Res> {
  factory $GetProductsStartCopyWith(GetProductsStart value, $Res Function(GetProductsStart) then) =
      _$GetProductsStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetProductsStartCopyWithImpl<$Res> extends _$GetProductsCopyWithImpl<$Res>
    implements $GetProductsStartCopyWith<$Res> {
  _$GetProductsStartCopyWithImpl(GetProductsStart _value, $Res Function(GetProductsStart) _then)
      : super(_value, (v) => _then(v as GetProductsStart));

  @override
  GetProductsStart get _value => super._value as GetProductsStart;
}

/// @nodoc
class _$GetProductsStart implements GetProductsStart {
  const _$GetProductsStart();

  @override
  String toString() {
    return 'GetProducts.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetProductsStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result successful(List<Product> products),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result successful(List<Product> products),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetProductsStart value),
    @required Result successful(GetProductsSuccessful value),
    @required Result error(GetProductsError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return start(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetProductsStart value),
    Result successful(GetProductsSuccessful value),
    Result error(GetProductsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetProductsStart implements GetProducts {
  const factory GetProductsStart() = _$GetProductsStart;
}

/// @nodoc
abstract class $GetProductsSuccessfulCopyWith<$Res> {
  factory $GetProductsSuccessfulCopyWith(GetProductsSuccessful value, $Res Function(GetProductsSuccessful) then) =
      _$GetProductsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class _$GetProductsSuccessfulCopyWithImpl<$Res> extends _$GetProductsCopyWithImpl<$Res>
    implements $GetProductsSuccessfulCopyWith<$Res> {
  _$GetProductsSuccessfulCopyWithImpl(GetProductsSuccessful _value, $Res Function(GetProductsSuccessful) _then)
      : super(_value, (v) => _then(v as GetProductsSuccessful));

  @override
  GetProductsSuccessful get _value => super._value as GetProductsSuccessful;

  @override
  $Res call({
    Object products = freezed,
  }) {
    return _then(GetProductsSuccessful(
      products == freezed ? _value.products : products as List<Product>,
    ));
  }
}

/// @nodoc
class _$GetProductsSuccessful implements GetProductsSuccessful {
  const _$GetProductsSuccessful(this.products) : assert(products != null);

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'GetProducts.successful(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProductsSuccessful &&
            (identical(other.products, products) || const DeepCollectionEquality().equals(other.products, products)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(products);

  @override
  $GetProductsSuccessfulCopyWith<GetProductsSuccessful> get copyWith =>
      _$GetProductsSuccessfulCopyWithImpl<GetProductsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result successful(List<Product> products),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(products);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result successful(List<Product> products),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetProductsStart value),
    @required Result successful(GetProductsSuccessful value),
    @required Result error(GetProductsError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return successful(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetProductsStart value),
    Result successful(GetProductsSuccessful value),
    Result error(GetProductsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetProductsSuccessful implements GetProducts {
  const factory GetProductsSuccessful(List<Product> products) = _$GetProductsSuccessful;

  List<Product> get products;
  $GetProductsSuccessfulCopyWith<GetProductsSuccessful> get copyWith;
}

/// @nodoc
abstract class $GetProductsErrorCopyWith<$Res> {
  factory $GetProductsErrorCopyWith(GetProductsError value, $Res Function(GetProductsError) then) =
      _$GetProductsErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$GetProductsErrorCopyWithImpl<$Res> extends _$GetProductsCopyWithImpl<$Res>
    implements $GetProductsErrorCopyWith<$Res> {
  _$GetProductsErrorCopyWithImpl(GetProductsError _value, $Res Function(GetProductsError) _then)
      : super(_value, (v) => _then(v as GetProductsError));

  @override
  GetProductsError get _value => super._value as GetProductsError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GetProductsError(
      error == freezed ? _value.error : error as dynamic,
    ));
  }
}

/// @nodoc
class _$GetProductsError implements GetProductsError {
  const _$GetProductsError(this.error) : assert(error != null);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'GetProducts.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetProductsError &&
            (identical(other.error, error) || const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $GetProductsErrorCopyWith<GetProductsError> get copyWith =>
      _$GetProductsErrorCopyWithImpl<GetProductsError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result start(),
    @required Result successful(List<Product> products),
    @required Result error(dynamic error),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result start(),
    Result successful(List<Product> products),
    Result error(dynamic error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result start(GetProductsStart value),
    @required Result successful(GetProductsSuccessful value),
    @required Result error(GetProductsError value),
  }) {
    assert(start != null);
    assert(successful != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result start(GetProductsStart value),
    Result successful(GetProductsSuccessful value),
    Result error(GetProductsError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetProductsError implements GetProducts {
  const factory GetProductsError(dynamic error) = _$GetProductsError;

  dynamic get error;
  $GetProductsErrorCopyWith<GetProductsError> get copyWith;
}

/// @nodoc
class _$ChangeOffsetTearOff {
  const _$ChangeOffsetTearOff();

// ignore: unused_element
  _ChangeOffset call(int offset) {
    return _ChangeOffset(
      offset,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangeOffset = _$ChangeOffsetTearOff();

/// @nodoc
mixin _$ChangeOffset {
  int get offset;

  $ChangeOffsetCopyWith<ChangeOffset> get copyWith;
}

/// @nodoc
abstract class $ChangeOffsetCopyWith<$Res> {
  factory $ChangeOffsetCopyWith(ChangeOffset value, $Res Function(ChangeOffset) then) =
      _$ChangeOffsetCopyWithImpl<$Res>;
  $Res call({int offset});
}

/// @nodoc
class _$ChangeOffsetCopyWithImpl<$Res> implements $ChangeOffsetCopyWith<$Res> {
  _$ChangeOffsetCopyWithImpl(this._value, this._then);

  final ChangeOffset _value;
  // ignore: unused_field
  final $Res Function(ChangeOffset) _then;

  @override
  $Res call({
    Object offset = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
abstract class _$ChangeOffsetCopyWith<$Res> implements $ChangeOffsetCopyWith<$Res> {
  factory _$ChangeOffsetCopyWith(_ChangeOffset value, $Res Function(_ChangeOffset) then) =
      __$ChangeOffsetCopyWithImpl<$Res>;
  @override
  $Res call({int offset});
}

/// @nodoc
class __$ChangeOffsetCopyWithImpl<$Res> extends _$ChangeOffsetCopyWithImpl<$Res>
    implements _$ChangeOffsetCopyWith<$Res> {
  __$ChangeOffsetCopyWithImpl(_ChangeOffset _value, $Res Function(_ChangeOffset) _then)
      : super(_value, (v) => _then(v as _ChangeOffset));

  @override
  _ChangeOffset get _value => super._value as _ChangeOffset;

  @override
  $Res call({
    Object offset = freezed,
  }) {
    return _then(_ChangeOffset(
      offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
class _$_ChangeOffset implements _ChangeOffset {
  const _$_ChangeOffset(this.offset) : assert(offset != null);

  @override
  final int offset;

  @override
  String toString() {
    return 'ChangeOffset(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeOffset &&
            (identical(other.offset, offset) || const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(offset);

  @override
  _$ChangeOffsetCopyWith<_ChangeOffset> get copyWith => __$ChangeOffsetCopyWithImpl<_ChangeOffset>(this, _$identity);
}

abstract class _ChangeOffset implements ChangeOffset {
  const factory _ChangeOffset(int offset) = _$_ChangeOffset;

  @override
  int get offset;
  @override
  _$ChangeOffsetCopyWith<_ChangeOffset> get copyWith;
}

/// @nodoc
class _$ChangePerPageTearOff {
  const _$ChangePerPageTearOff();

// ignore: unused_element
  _ChangePerPage call(int offset) {
    return _ChangePerPage(
      offset,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ChangePerPage = _$ChangePerPageTearOff();

/// @nodoc
mixin _$ChangePerPage {
  int get offset;

  $ChangePerPageCopyWith<ChangePerPage> get copyWith;
}

/// @nodoc
abstract class $ChangePerPageCopyWith<$Res> {
  factory $ChangePerPageCopyWith(ChangePerPage value, $Res Function(ChangePerPage) then) =
      _$ChangePerPageCopyWithImpl<$Res>;
  $Res call({int offset});
}

/// @nodoc
class _$ChangePerPageCopyWithImpl<$Res> implements $ChangePerPageCopyWith<$Res> {
  _$ChangePerPageCopyWithImpl(this._value, this._then);

  final ChangePerPage _value;
  // ignore: unused_field
  final $Res Function(ChangePerPage) _then;

  @override
  $Res call({
    Object offset = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
abstract class _$ChangePerPageCopyWith<$Res> implements $ChangePerPageCopyWith<$Res> {
  factory _$ChangePerPageCopyWith(_ChangePerPage value, $Res Function(_ChangePerPage) then) =
      __$ChangePerPageCopyWithImpl<$Res>;
  @override
  $Res call({int offset});
}

/// @nodoc
class __$ChangePerPageCopyWithImpl<$Res> extends _$ChangePerPageCopyWithImpl<$Res>
    implements _$ChangePerPageCopyWith<$Res> {
  __$ChangePerPageCopyWithImpl(_ChangePerPage _value, $Res Function(_ChangePerPage) _then)
      : super(_value, (v) => _then(v as _ChangePerPage));

  @override
  _ChangePerPage get _value => super._value as _ChangePerPage;

  @override
  $Res call({
    Object offset = freezed,
  }) {
    return _then(_ChangePerPage(
      offset == freezed ? _value.offset : offset as int,
    ));
  }
}

/// @nodoc
class _$_ChangePerPage implements _ChangePerPage {
  const _$_ChangePerPage(this.offset) : assert(offset != null);

  @override
  final int offset;

  @override
  String toString() {
    return 'ChangePerPage(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePerPage &&
            (identical(other.offset, offset) || const DeepCollectionEquality().equals(other.offset, offset)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(offset);

  @override
  _$ChangePerPageCopyWith<_ChangePerPage> get copyWith =>
      __$ChangePerPageCopyWithImpl<_ChangePerPage>(this, _$identity);
}

abstract class _ChangePerPage implements ChangePerPage {
  const factory _ChangePerPage(int offset) = _$_ChangePerPage;

  @override
  int get offset;
  @override
  _$ChangePerPageCopyWith<_ChangePerPage> get copyWith;
}

/// @nodoc
class _$SearchTermTearOff {
  const _$SearchTermTearOff();

// ignore: unused_element
  _SearchTerm call(String term) {
    return _SearchTerm(
      term,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchTerm = _$SearchTermTearOff();

/// @nodoc
mixin _$SearchTerm {
  String get term;

  $SearchTermCopyWith<SearchTerm> get copyWith;
}

/// @nodoc
abstract class $SearchTermCopyWith<$Res> {
  factory $SearchTermCopyWith(SearchTerm value, $Res Function(SearchTerm) then) = _$SearchTermCopyWithImpl<$Res>;
  $Res call({String term});
}

/// @nodoc
class _$SearchTermCopyWithImpl<$Res> implements $SearchTermCopyWith<$Res> {
  _$SearchTermCopyWithImpl(this._value, this._then);

  final SearchTerm _value;
  // ignore: unused_field
  final $Res Function(SearchTerm) _then;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(_value.copyWith(
      term: term == freezed ? _value.term : term as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchTermCopyWith<$Res> implements $SearchTermCopyWith<$Res> {
  factory _$SearchTermCopyWith(_SearchTerm value, $Res Function(_SearchTerm) then) = __$SearchTermCopyWithImpl<$Res>;
  @override
  $Res call({String term});
}

/// @nodoc
class __$SearchTermCopyWithImpl<$Res> extends _$SearchTermCopyWithImpl<$Res> implements _$SearchTermCopyWith<$Res> {
  __$SearchTermCopyWithImpl(_SearchTerm _value, $Res Function(_SearchTerm) _then)
      : super(_value, (v) => _then(v as _SearchTerm));

  @override
  _SearchTerm get _value => super._value as _SearchTerm;

  @override
  $Res call({
    Object term = freezed,
  }) {
    return _then(_SearchTerm(
      term == freezed ? _value.term : term as String,
    ));
  }
}

/// @nodoc
class _$_SearchTerm implements _SearchTerm {
  const _$_SearchTerm(this.term) : assert(term != null);

  @override
  final String term;

  @override
  String toString() {
    return 'SearchTerm(term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchTerm &&
            (identical(other.term, term) || const DeepCollectionEquality().equals(other.term, term)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ const DeepCollectionEquality().hash(term);

  @override
  _$SearchTermCopyWith<_SearchTerm> get copyWith => __$SearchTermCopyWithImpl<_SearchTerm>(this, _$identity);
}

abstract class _SearchTerm implements SearchTerm {
  const factory _SearchTerm(String term) = _$_SearchTerm;

  @override
  String get term;
  @override
  _$SearchTermCopyWith<_SearchTerm> get copyWith;
}
