import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/core/errors/exceptions.dart';
import 'package:weather_app/features/auth/domain/entites/user_entity.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and code is ${e.code}");
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
            message: 'The email address is already in use. Please sign in.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
            message: 'Please check your internet connection.');
      } else {
        throw CustomException(message: 'An error occurred. Please try again.');
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}");

      throw CustomException(message: '${e.toString()}');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and code is ${e.code}");
      if (e.code == 'user-not-found') {
        throw CustomException(message: 'The email or password is incorrect.');
      } else if (e.code == 'wrong-password') {
        throw CustomException(message: 'The email or password is incorrect.');
      } else if (e.code == 'invalid-credential') {
        throw CustomException(message: 'The email or password is incorrect.');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
            message: 'Please check your internet connection.');
      } else {
        throw CustomException(message: 'An error occurred. Please try again.');
      }
    } catch (e) {
      log("Exception in FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}");

      throw CustomException(message: 'An error occurred. Please try again.');
    }
  }
}
