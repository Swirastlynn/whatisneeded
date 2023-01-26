import 'organisations_data_source.dart';
import 'organisations_model.dart';

class OrganisationsRepository {
  const OrganisationsRepository({required this.dataSource});

  final OrganisationsDataSource dataSource;

  Future<Organisations> getOrganisations() => dataSource.fetchOrganisations();
}
