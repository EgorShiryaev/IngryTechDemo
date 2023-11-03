import 'package:graphql_flutter/graphql_flutter.dart';

abstract class BaseGrapgQlDatasource {
  final GraphQLClient client;

  BaseGrapgQlDatasource({required this.client});

  Future<Map<String, dynamic>> request(
    String path,
    String query, [
    Map<String, dynamic> vars = const {},
  ]) async {
    final options = QueryOptions(document: gql(query), variables: vars);
    final result = await client.query(options);

    final exception = result.exception;
    if (exception != null) {
      throw exception;
    }

    return result.data?[path];
  }
}
