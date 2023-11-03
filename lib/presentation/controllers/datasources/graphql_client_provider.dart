import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../app_settings.dart';

final graphQLClientProvider = Provider<GraphQLClient>(
  (ref) {
    return GraphQLClient(
      link: HttpLink(AppSettings.apiUrl),
      cache: GraphQLCache(),
    );
  },
);
