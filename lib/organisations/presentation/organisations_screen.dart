import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatisneeded/custom_widgets/facebook_button.dart';

import 'organisations_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrganisationsScreen extends StatelessWidget {
  const OrganisationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).appName),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Image.asset(
              'assets/icons/pl-flag.png',
              width: 30.0,
              height: 30.0,
            ),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
        elevation: 5,
        shadowColor: Theme.of(context).colorScheme.shadow,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(8),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: const <Widget>[
          OrganisationsHeader(),
          Expanded(child: OrganisationsList()),
          // Spacer(),
          FacebookButton(),
        ],
      ),
    );
  }
}

class OrganisationsHeader extends StatelessWidget {
  const OrganisationsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 20.0),
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => {},
                icon: SvgPicture.asset(
                  'assets/icons/marker.svg',
                  width: 30.0,
                  height: 30.0,
                ),
              ),
              const Text(
                'Kraków',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  AppLocalizations.of(context).lastUpdate,
                  style: const TextStyle(
                    color: Color(0xFF858585),
                    fontSize: 11,
                  ),
                ),
                const Text(
                  'Jul 12, 2022 1:17 PM',
                  style: TextStyle(
                    color: Color(0xFF858585),
                    fontSize: 16,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
