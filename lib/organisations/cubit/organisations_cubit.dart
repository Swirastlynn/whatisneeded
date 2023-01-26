import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:whatisneeded/organisations/data/organisations_model.dart';
import 'package:whatisneeded/organisations/data/organisations_repository.dart';

part 'organisations_state.dart';

class OrganisationsCubit extends Cubit<OrganisationsState> {
  OrganisationsCubit({required this.organisationsRepository})
      : super(
          OrganisationsState(
            organisations: Organisations(
              organisations: List<Organisation>.empty(),
            ),
            isLoading: true,
          ),
        ) {
    fetch();
  }

  final OrganisationsRepository organisationsRepository;

  Future<void> fetch() async {
    Organisations? organisations = await organisationsRepository.getOrganisations();
    emit(
      OrganisationsState(organisations: organisations, isLoading: false),
    );
  }
}
