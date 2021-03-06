import 'package:firebase_auth/firebase_auth.dart';
import 'package:nocia/domain/auth/value/email_address.dart';
import 'package:nocia/domain/auth/value/password.dart';

abstract class FirebaseAuthRepositoryBase {
  Future<UserCredential> registerWithEmailAndPassword({required EmailAddress email, required Password password});
  Future<UserCredential> signInWithEmailAndPassword({required EmailAddress email, required Password password});
  Future<void> sendPasswordResetEmail({required EmailAddress email});
  User? getSignedInUser();
  Future<void> signOut();
}