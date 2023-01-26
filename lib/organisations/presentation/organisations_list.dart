import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:whatisneeded/organisations/cubit/organisations_cubit.dart';
import 'package:whatisneeded/organisations/data/organisations_model.dart';

class OrganisationsList extends StatelessWidget {
  const OrganisationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrganisationsCubit, OrganisationsState>(
      listener: (context, state) {
        // nothing
      },
      builder: (context, state) {
        return ListView.separated(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => ListItem(state.organisations.organisations[index]),
          itemCount: state.size(),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 15.0,
          ),
        );
      },
    );
  }
}

class ListItem extends StatelessWidget {
  final Organisation organisation;

  const ListItem(this.organisation, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(1, 0),
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  organisation.name,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  organisation.address,
                  style: const TextStyle(
                    fontSize: 11.0,
                    color: Color(0xFF8D99B2),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context).currentNeeds,
                  style: const TextStyle(fontSize: 12.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Needs(organisation.needs),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Needs extends StatelessWidget {
  const Needs(this.needs, {super.key});
  final int needs;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var i = 0; i < needs; i++)
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFC224F),
              ),
            ),
          ),
        for (var i = 0; i < 5 - needs; i++)
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFD9D7D7),
              ),
            ),
          ),
      ],
    );
  }
}
