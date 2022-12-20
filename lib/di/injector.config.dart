// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i8;
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:expense_tracker/common/cache/drift_database.dart' as _i12;
import 'package:expense_tracker/di/injector.dart' as _i14;
import 'package:expense_tracker/features/app/bloc/app_bloc.dart' as _i33;
import 'package:expense_tracker/features/app/data/app_settings.dart' as _i3;
import 'package:expense_tracker/features/authentication/domain/usecases/forgot_password_use_case.dart'
    as _i35;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_email_and_pw.dart'
    as _i9;
import 'package:expense_tracker/features/authentication/domain/usecases/login_with_google_account_use_case.dart'
    as _i10;
import 'package:expense_tracker/features/authentication/domain/usecases/register_with_email_and_pw.dart'
    as _i13;
import 'package:expense_tracker/features/authentication/presentation/bloc/authentication_bloc.dart'
    as _i20;
import 'package:expense_tracker/features/authentication/presentation/login_form/cubit/login_form_cubit.dart'
    as _i30;
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart'
    as _i31;
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart'
    as _i17;
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart'
    as _i19;
import 'package:expense_tracker/features/budget/domain/usecases/update_budget.dart'
    as _i16;
import 'package:expense_tracker/features/category/data/datasources/categories_dao.dart'
    as _i21;
import 'package:expense_tracker/features/category/data/repositories/local_category_repository.dart'
    as _i27;
import 'package:expense_tracker/features/category/domain/repositories/category_repository.dart'
    as _i26;
import 'package:expense_tracker/features/category/presentation/cubit/category_cubit.dart'
    as _i34;
import 'package:expense_tracker/features/transaction/data/datasources/transaction_dao.dart'
    as _i15;
import 'package:expense_tracker/features/transaction/data/repositories/fake_transaction_repository.dart'
    as _i11;
import 'package:expense_tracker/features/transaction/domain/entities/transaction.dart'
    as _i23;
import 'package:expense_tracker/features/transaction/domain/repositories/transaction_repository.dart'
    as _i28;
import 'package:expense_tracker/features/transaction/edit_transaction/presentation/cubit/edit_transaction_cubit.dart'
    as _i22;
import 'package:expense_tracker/features/transaction/edit_transaction/usecases/add_transaction_use_case.dart'
    as _i24;
import 'package:expense_tracker/features/transaction/transaction_overview/presentation/bloc/transaction_bloc.dart'
    as _i32;
import 'package:expense_tracker/features/transaction/transaction_overview/usecases/load_transactions.dart'
    as _i29;
import 'package:expense_tracker/user_preferences.dart' as _i18;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i25;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

const String _dev = 'dev';
const String _prod = 'prod';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final devAppLocalPackageModule = _$DevAppLocalPackageModule();
  final driftDatabase = _$DriftDatabase();
  gh.factory<_i3.AppSettingService>(
      () => _i3.AppSettingService(gh<_i4.SharedPreferences>()));
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => sharedPreferencesModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getDev(),
    registerFor: {_dev},
  );
  gh.lazySingleton<_i8.IAuthenticationRepository>(
    () => devAppLocalPackageModule.getProd(),
    registerFor: {_prod},
  );
  gh.factory<_i9.LoginWithEmailAndPwUseCase>(() =>
      _i9.LoginWithEmailAndPwUseCase(
          auth: gh<_i8.IAuthenticationRepository>()));
  gh.factory<_i10.LoginWithGoogleUseCase>(() =>
      _i10.LoginWithGoogleUseCase(auth: gh<_i8.IAuthenticationRepository>()));
  gh.factory<_i11.Mapper>(() => _i11.Mapper());
  gh.singleton<_i12.MyDatabase>(driftDatabase.myDatabase);
  gh.factory<_i13.RegisterWithEmailAndPwUseCase>(() =>
      _i13.RegisterWithEmailAndPwUseCase(
          auth: gh<_i8.IAuthenticationRepository>()));
  gh.singleton<_i14.AppConfigurations>(
    _i14.DevAppConfigurations(),
    registerFor: {
      _dev,
      _prod,
    },
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.devInitialLocation,
    instanceName: 'init_location',
    registerFor: {_dev},
  );
  gh.factory<String>(
    () => devAppLocalPackageModule.initialLocation,
    instanceName: 'init_location',
    registerFor: {_prod},
  );
  gh.factory<_i15.TransactionsDao>(
      () => _i15.TransactionsDao(gh<_i12.MyDatabase>()));
  gh.factory<_i16.UpdateBudget>(
      () => _i16.UpdateBudget(gh<_i17.IBudgetRepository>()));
  gh.singleton<_i18.UserPreferences>(
      _i18.UserPreferences(prefs: gh<_i4.SharedPreferences>()));
  gh.factory<bool>(
    () => sharedPreferencesModule.isOnboardingCompeted,
    instanceName: 'isOnboardingCompleted',
  );
  gh.factory<_i19.CreateBudget>(
      () => _i19.CreateBudget(gh<_i17.IBudgetRepository>()));
  gh.lazySingleton<_i20.AuthenticationBloc>(
      () => _i20.AuthenticationBloc(gh<_i8.IAuthenticationRepository>()));
  gh.factory<_i21.CategoriesDao>(
      () => _i21.CategoriesDao(gh<_i12.MyDatabase>()));
  gh.factoryParam<_i22.EditTransactionCubit, _i23.TransactionEntity?, dynamic>((
    initialTransaction,
    _,
  ) =>
      _i22.EditTransactionCubit(
        gh<_i24.AddTransactionUseCase>(),
        gh<_i24.DeleteTransactionUseCase>(),
        initialTransaction: initialTransaction,
      ));
  gh.lazySingleton<_i25.GoRouter>(() => devAppLocalPackageModule
      .appRouterDev(gh<String>(instanceName: 'init_location')));
  gh.factory<_i26.ICategoryRepository>(
      () => _i27.LocalCategoryRepository(gh<_i21.CategoriesDao>()));
  gh.factory<_i28.ITransactionRepository>(
    () => _i11.FakeTransactionRepository(
      gh<_i15.TransactionsDao>(),
      gh<_i11.Mapper>(),
    ),
    registerFor: {_dev},
  );
  gh.factory<_i29.LoadAllTransactions>(
      () => _i29.LoadAllTransactions(gh<_i28.ITransactionRepository>()));
  gh.factory<_i30.LoginFormCubit>(() => _i30.LoginFormCubit(
        loginWithGoogleUseCase: gh<_i10.LoginWithGoogleUseCase>(),
        loginWithEmailAndPwUseCase: gh<_i9.LoginWithEmailAndPwUseCase>(),
      ));
  gh.factory<_i31.RegisterFormCubit>(() => _i31.RegisterFormCubit(
      registerWithEmailAndPwUseCase: gh<_i13.RegisterWithEmailAndPwUseCase>()));
  gh.factory<_i32.TransactionBloc>(
      () => _i32.TransactionBloc(gh<_i28.ITransactionRepository>()));
  gh.factory<_i24.AddTransactionUseCase>(
      () => _i24.AddTransactionUseCase(gh<_i28.ITransactionRepository>()));
  gh.singleton<_i33.AppBloc>(
      _i33.AppBloc(appSettingService: gh<_i3.AppSettingService>()));
  gh.factory<_i34.CategoryCubit>(
      () => _i34.CategoryCubit(gh<_i26.ICategoryRepository>()));
  gh.factory<_i24.DeleteTransactionUseCase>(
      () => _i24.DeleteTransactionUseCase(gh<_i28.ITransactionRepository>()));
  gh.factory<_i35.ForgotPasswordUseCase>(() =>
      _i35.ForgotPasswordUseCase(auth: gh<_i8.IAuthenticationRepository>()));
  return getIt;
}

class _$SharedPreferencesModule extends _i14.SharedPreferencesModule {}

class _$FirebaseInjectableModule extends _i14.FirebaseInjectableModule {}

class _$DevAppLocalPackageModule extends _i14.DevAppLocalPackageModule {}

class _$DriftDatabase extends _i14.DriftDatabase {}
