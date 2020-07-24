import 'package:better_banking/authentication/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'expensesModel.dart';

class ExpensesDatabase {

  final String uid;
  ExpensesDatabase({this.uid});

  final CollectionReference expensesCollection = Firestore.instance.collection('Expenses');

  Future updateUserData(String entertainment, String roomboard, String taxes, String loans) async  {
    return await expensesCollection.document(uid).setData({
      'Entertainment': entertainment,
      'Room & Board': roomboard,
      'Taxes': taxes,
      'Loans': loans,
    });
  }
  List<ExpensesModel> _expensesListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc){
      return ExpensesModel(
        entertainment: doc.data['Entertainment'] ?? '0',
        roomboard: doc.data['Room & Board'] ?? '0',
        taxes: doc.data['Taxes'] ?? '0',
        loans: doc.data['Loans'] ?? '0',
      );
    }).toList();
  }
  UserExpData _userExpDataFromSnapshot(DocumentSnapshot snapshot){
    return UserExpData(
      uid: uid,
      entertainment: snapshot.data['Entertainment'],
      roomboard: snapshot.data['Room & Board'],
      taxes: snapshot.data['Taxes'] ?? '0',
      loans: snapshot.data['Loans'] ?? '0',
    );
  }

  Stream<List<ExpensesModel>> get expenses {
    return expensesCollection.snapshots()
        .map(_expensesListFromSnapshot);
  }

  Stream<UserExpData> get userExpData {
    return expensesCollection.document(uid).snapshots()
        .map(_userExpDataFromSnapshot);
  }

}