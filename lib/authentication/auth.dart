import 'package:firebase_auth/firebase_auth.dart';
import 'user.dart';
import 'expensesData.dart';

class Auth {

  FirebaseAuth _auth = FirebaseAuth.instance;
  
  Future<User> registerUser(email, password) async {
      AuthResult result =
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;

      await ExpensesDatabase(uid: user.uid).updateUserData('0', '0', '0', '0');
      return _userFromFirebase(user);
  }
  Future<User> loginUser(email, password) async {
    AuthResult result =
    await _auth.signInWithEmailAndPassword(email: email, password: password);
    FirebaseUser user = result.user;
    return _userFromFirebase(user);
  }

  User _userFromFirebase(FirebaseUser user){
    return User(email: user.email, uid: user.uid);
  }
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebase);
  }
}
