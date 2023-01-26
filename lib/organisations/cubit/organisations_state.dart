part of 'organisations_cubit.dart';

class OrganisationsState extends Equatable{
  final Organisations organisations;
  final bool isLoading;

  const OrganisationsState({required this.organisations, required this.isLoading});

  int size() => organisations.organisations.length;
  
  @override
  List<Object> get props => [organisations, isLoading];
}
