import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'organisations_model.dart';

class OrganisationsDataSource {
  final json = """{
      "organisations": [
        {
          "name": "Zupa dla Ukrainy",
          "address": "ul. Szeroka 16, Kraków 31-419",
          "needs": 1
        },
        {
          "name": "Nazwa Organizacji",
          "address": "ul. Długa 16, Kraków 31-419",
          "needs": 3
        },
        {
          "name": "Jkl;",
          "address": "ul. Ciasna 16, Kraków 31-419",
          "needs": 5
        },
         {
          "name": "Nazwa Organizacji",
          "address": "ul. Długa 16, Kraków 31-419",
          "needs": 3
        },
         {
          "name": "Nazwa Organizacji",
          "address": "ul. Długa 16, Kraków 31-419",
          "needs": 3
        },
         {
          "name": "Nazwa Organizacji",
          "address": "ul. Długa 16, Kraków 31-419",
          "needs": 3
        },
         {
          "name": "Nazwa Organizacji",
          "address": "ul. Długa 16, Kraków 31-419",
          "needs": 3
        },
         {
          "name": "Nazwa Organizacji",
          "address": "ul. Długa 16, Kraków 31-419",
          "needs": 3
        },
         {
          "name": "Nazwa Organizacji",
          "address": "ul. Długa 16, Kraków 31-419",
          "needs": 3
        }
      ]
    }""";

  Future<Organisations> fetchOrganisations() async {
    return await compute(parseOrganisations, json);
  }

  Organisations parseOrganisations(String json) {
    Map<String, dynamic> decodedJson = jsonDecode(json);
    return Organisations.fromJson(decodedJson);
  }
}
