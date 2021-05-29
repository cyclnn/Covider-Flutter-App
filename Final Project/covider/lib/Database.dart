import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Database {
  static FirebaseAuth auth = FirebaseAuth.instance;

  static CollectionReference koleksi =
      FirebaseFirestore.instance.collection('users');

  static Future<void> createOrupdate(String id,
      {String namadep, String namabel, String alamat, String nope}) async {
    await koleksi.doc(auth.currentUser.uid).set({
      'namadep': namadep,
      'namabel': namabel,
      'alamat': alamat,
      'nope': nope,
    });
  }

  static Future<DocumentSnapshot> getData(String id) async {
    return await koleksi.doc(id).get();
  }

  static Future<String> uploadImages(File image) async {
    String filename = basename(image.path);

    Reference ref = FirebaseStorage.instance.ref().child(filename);
    Task task = ref.putFile(image);
    TaskSnapshot hasil = await task.whenComplete(() => null);

    return await hasil.ref.getDownloadURL();
  }
}
