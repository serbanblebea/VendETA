part of actions;

@freezed
abstract class GetProducts with _$GetProducts {
  const factory GetProducts.start() = GetProductsStart;

  const factory GetProducts.successful(List<Product> products) = GetProductsSuccessful;

  const factory GetProducts.error(dynamic error) = GetProductsError;
}
