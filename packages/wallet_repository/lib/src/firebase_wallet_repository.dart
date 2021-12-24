import 'package:authentication_repository/authentication_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart' as firestore;
import 'package:wallet_repository/src/wallet_repository.dart';

import 'entities/entities.dart';
import 'models/models.dart';

const key = 'wallet_cached_key';

class FirebaseWalletRepository implements WalletRepository {
  final Map<String, List<Wallet>> cachedWallet;

  final AuthenticationRepository authenticationRepository;
  final String userId;

  FirebaseWalletRepository({
    required this.cachedWallet,
    required this.authenticationRepository,
  }) : userId = authenticationRepository.currentUser.id;
  @override
  Future<void> addNewWallet(Wallet wallet) async {
    await authenticationRepository.user.first;

    final walletCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/wallets');
    return walletCollection.doc(wallet.id).set(wallet.toEntity().toDocument());
  }

  @override
  Future<void> deleteWallet(Wallet wallet) async {
    final walletCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/wallets');
    return walletCollection.doc(wallet.id).delete();
  }

  @override
  Stream<List<Wallet>> wallets() {
    final wC = firestore.FirebaseFirestore.instance
        .collection('users/$userId/wallets');
    return wC.snapshots().map((snapshot) {
      final wallets = snapshot.docs
          .map(
            (doc) => Wallet.fromEntity(
              WalletEntity.fromSnapshot(doc),
            ),
          )
          .toList();
      cachedWallet[key] = wallets;
      return wallets;
    });
  }

  @override
  Future<void> updateWallet(Wallet wallet) {
    final walletCollection = firestore.FirebaseFirestore.instance
        .collection('users/$userId/wallets');
    return walletCollection
        .doc(wallet.id)
        .update(wallet.toEntity().toDocument());
  }

  @override
  List<Wallet> get currentWallets {
    final value = cachedWallet[key];
    if (value is List<Wallet>) return value;
    return [];
  }

  @override
  double get totalAmount {
    final list = cachedWallet[key]?.map((e) => e.amount);
    if (list != null) {
      if (list.isNotEmpty) {
        return list.reduce((a, b) => a + b);
      } else {
        return 0;
      }
    } else {
      return 0;
    }
  }
}
