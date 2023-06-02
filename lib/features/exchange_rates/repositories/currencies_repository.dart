import '../models/currency_model.dart';
import 'i_currencies_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CurrenciesRepository implements ICurrenciesRepository {
  DocumentSnapshot? _lastDocument;

  @override
  Future<CurrencyModel> fetchCurrency(String code) async {
    try {
      DocumentReference docRef = FirebaseFirestore.instance.collection('currencies').doc(code);
      DocumentSnapshot docSnapshot = await docRef.get();

      return CurrencyModel.fromJson(docSnapshot.data() as Map<String, dynamic>);
    } on Exception {
      rethrow;
    }
  }

  @override
  Future<List<CurrencyModel>> fetchCurrencies({required int limit}) async {
    try {
      CollectionReference collectionRef = FirebaseFirestore.instance.collection('currencies');

      Query query = collectionRef.orderBy('code').limit(limit);

      if (_lastDocument != null) {
        query = collectionRef.orderBy('code').limit(limit).startAfterDocument(_lastDocument!);
      }

      QuerySnapshot querySnapshot = await query.get();

      if (querySnapshot.docs.isNotEmpty) {
        _lastDocument = querySnapshot.docs.last;
      }
      return querySnapshot.docs.map((doc) {
        return CurrencyModel.fromJson(doc.data() as Map<String, dynamic>);
      }).toList();
    } on Exception {
      rethrow;
    }
  }
}
