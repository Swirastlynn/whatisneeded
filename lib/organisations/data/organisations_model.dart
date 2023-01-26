import 'package:equatable/equatable.dart';

class Organisations extends Equatable {
  final List<Organisation> organisations;

  const Organisations({required this.organisations});

  factory Organisations.fromJson(Map<String, dynamic> json) {
    final organisationsData = json['organisations'] as List<dynamic>?;
    final parsedOrganisations = organisationsData != null
        ? organisationsData
            .map(
              (organisation) => Organisation.fromJson(organisation),
            )
            .toList()
        : <Organisation>[];
    return Organisations(organisations: parsedOrganisations);
  }

  Map<String, dynamic> toJson() => {
        'organisations': organisations
            .map(
              (organisation) => organisation.toJson(),
            )
            .toList(),
      };

  @override
  List<Object> get props => [organisations];
}

class Organisation extends Equatable {
  final String name;
  final String address;
  final int needs; // 1-5

  const Organisation({required this.name, required this.address, required this.needs});

  factory Organisation.fromJson(Map<String, dynamic> json) => Organisation(
        name: json['name'],
        address: json['address'],
        needs: json['needs'],
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'address': address,
        'needs': needs,
      };

  @override
  List<Object> get props => [name, address, needs];
}
