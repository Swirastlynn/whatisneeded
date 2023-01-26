import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            AppLocalizations.of(context).shareCollection,
            style: const TextStyle(
              color: Color(0xFF858585),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 13.0, top: 8.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff0942a6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context).share,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    const SizedBox(
                      height: 50,
                      width: 20,
                    ),
                    SvgPicture.asset(
                      'assets/icons/facebook.svg',
                      width: 28.0,
                      height: 28.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
