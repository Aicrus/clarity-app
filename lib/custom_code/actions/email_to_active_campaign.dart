// Automatic FlutterFlow imports
// Imports other custom actions
// Imports custom functions
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

String apiToken =
    '897eaa7304edcb23cefa1b2fcd14065f0f055e28c539f9439f00f36433a6e8148e92da64';

Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Api-Token': apiToken
};

Future emailToActiveCampaign(String email) async {
  // Création du contact chez ActiveCampaign
  var url = Uri.parse(
      'https://sviluppopersonalescientifico.api-us1.com/api/3/contacts');
  var responseFromCreatedContact = await http.post(url,
      headers: headers,
      body: json.encode({
        'contact': {
          'email': email,
          // Ajout d'autres champs si nécessaire
        }
      }));

  if (responseFromCreatedContact.statusCode == 201) {
    // Décodage du response.body
    final decodedResponse = json.decode(responseFromCreatedContact.body);

    // Extraction de l'id créé par ActiveCampaign
    final String id = decodedResponse['contact']['id'];

    // Ajout de l'id dans la liste de contacts 168 (LM - CLARITY)
    url = Uri.parse(
        'https://sviluppopersonalescientifico.api-us1.com/api/3/contactLists');

    var responseFromCreatedContactToList = await http.post(url,
        headers: headers,
        body: json.encode({
          "contactList": {"list": "168", "contact": id, "status": "1"}
        }));

    if (responseFromCreatedContactToList.statusCode == 201) {
      print('User added to ActiveCampaign and in list 168');
    } else {
      print('Failed to add user in list 168');
    }
  } else {
    print(
        'Failed to add user to ActiveCampaign: ${responseFromCreatedContact.body}');
  }
}

Future deleteEmailFromActiveCampaign(String email) async {
  // Suppression du contact chez ActiveCampaign
  // Récupération de l'id ActiveCampaign pour cet email
  // Encodage de l'email pur éviter les problèmes de caractères d'alias
  final encodedEmail = Uri.encodeComponent(email);
  var url = Uri.parse(
      'https://sviluppopersonalescientifico.api-us1.com/api/3/contacts?email=$encodedEmail');

  var responseFromIdWithThisEmail = await http.get(
    url,
    headers: headers,
  );

  if (responseFromIdWithThisEmail.statusCode == 200) {
    // Décodage du response.body
    final decodedResponse = json.decode(responseFromIdWithThisEmail.body);

    // Extraction de l'id créé par ActiveCampaign
    final contacts = decodedResponse['contacts'];

    if (contacts != null && contacts.isNotEmpty) {
      final String id = contacts[0]['id'];

      // Suppression du contact
      var deleteUrl = Uri.parse(
          'https://sviluppopersonalescientifico.api-us1.com/api/3/contacts/$id');

      var deleteResponse = await http.delete(
        deleteUrl,
        headers: headers,
      );

      if (deleteResponse.statusCode == 200) {
        print('Contact with id $id successfully deleted');
      } else {
        print(
            'Failed to delete user with id $id: ${deleteResponse.statusCode}');
      }
    } else {
      print('No contact found with this email');
    }
  } else {
    print('Failed to delete user ');
  }
}


// Future unsubscribeEmailFromActiveCampaignList(String email) async {
//   // Désinscription du contact de la liste 168 chez ActiveCampaign
//   // Récupération de l'id ActiveCampaign pour cet email
//   // Encodage de l'email pur éviter les problèmes de caractères d'alias
//   final encodedEmail = Uri.encodeComponent(email);
//   var url = Uri.parse(
//       'https://sviluppopersonalescientifico.api-us1.com/api/3/contacts?email=$encodedEmail');

//   var responseFromIdWithThisEmail = await http.get(
//     url,
//     headers: headers,
//   );

//   if (responseFromIdWithThisEmail.statusCode == 200) {
//     // Décodage du response.body
//     final decodedResponse = json.decode(responseFromIdWithThisEmail.body);

//     // Extraction de l'id créé par ActiveCampaign
//     final contacts = decodedResponse['contacts'];

//     if (contacts != null && contacts.isNotEmpty) {
//       final String id = contacts[0]['id'];

//       // Suppression du contact
//       var unsubscribeFromList = Uri.parse(
//           'https://sviluppopersonalescientifico.api-us1.com/api/3/contactLists');

//       var unsubscribeFromListResponse = await http.post(
//         unsubscribeFromList,
//         headers: headers,
//         body: json.encode({
//           "contactList": {"list": "168", "contact": id, "status": "2"}
//         }),
//       );

//       if (unsubscribeFromListResponse.statusCode == 200) {
//         print('Contact with id $id successfully unsubscribed from list 148');
//       } else {
//         print(
//             'Failed to unsubscribe user with id $id from list 168: ${unsubscribeFromListResponse.statusCode}');
//       }
//     } else {
//       print('No contact found with this email');
//     }
//   } else {
//     print('Failed to delete user ');
//   }
// }
