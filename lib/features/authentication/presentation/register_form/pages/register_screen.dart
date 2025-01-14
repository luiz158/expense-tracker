import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/authentication/domain/entities/form_value.dart';
import 'package:expense_tracker/features/authentication/presentation/register_form/cubit/register_form_cubit.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';

class RegisterProvider extends StatelessWidget {
  const RegisterProvider({super.key});
  static const routeName = '/register';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RegisterFormCubit>(),
      child: const RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Sign up'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            Spacer(),
            _NameInputField(),
            SizedBox(height: 24),
            _EmailInputField(),
            SizedBox(height: 24),
            _PasswordInputField(),
            SizedBox(height: 16),
            _TermAgreementField(),
            SizedBox(height: 24),
            _RegisterButton(),
            SizedBox(height: 16),
            _MoveToLoginButton(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class _TermAgreementField extends StatelessWidget {
  const _TermAgreementField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Widget? error;
    final termAgreementField =
        context.watch<RegisterFormCubit>().state.termsAgreement;
    if (termAgreementField.invalid) {
      error = (termAgreementField.error == null)
          ? const SizedBox.shrink()
          : Text(
              termAgreementField.error!,
              style: theme.textTheme.caption?.copyWith(
                color: theme.colorScheme.error,
              ),
            );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const _TermAgreementCheckbox(),
            const SizedBox(width: 10),
            Expanded(
              child: Text.rich(
                TextSpan(
                  text: 'By signing up, you agree to the ',
                  children: [
                    TextSpan(
                      text: 'Terms of Service and Privacy Policy',
                      style: TextStyle(color: theme.primaryColor),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.only(left: 42),
          child: error ?? const SizedBox.shrink(),
        ),
      ],
    );
  }
}

class _MoveToLoginButton extends StatelessWidget {
  const _MoveToLoginButton();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme.bodyText1;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already has account? ',
          style: textTheme?.copyWith(color: theme.colorScheme.outline),
        ),
        TextButton(
          key: const Key('registerScreen_moveToLogin_textButton'),
          onPressed: () => context.go('/login'),
          child: Text(
            'Sign in',
            style: textTheme?.copyWith(color: theme.colorScheme.primary),
          ),
        ),
      ],
    );
  }
}

class _RegisterButton extends StatelessWidget {
  const _RegisterButton();

  @override
  Widget build(BuildContext context) {
    final isValid = context.watch<RegisterFormCubit>().state.status.isValidated;
    return ElevatedButton(
      key: const Key('register_button'),
      onPressed:
          isValid ? context.read<RegisterFormCubit>().onButtonClicked : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(context.l10n.signUp)],
      ),
    );
  }
}

class _NameInputField extends StatelessWidget {
  const _NameInputField();

  @override
  Widget build(BuildContext context) {
    final nameField = context.watch<RegisterFormCubit>().state.name;

    String? errorText;

    if (nameField.invalid) {
      switch (nameField.error) {
        case NormalTextError.empty:
          errorText = "Name can't be empty";
          break;
        case NormalTextError.invalid:
          errorText = 'Invalid name';
          break;
        case null:
          errorText = null;
          break;
      }
    }

    return TextField(
      key: const Key('name_input_field'),
      onChanged: (v) => context.read<RegisterFormCubit>().onNameChanged(v),
      decoration: InputDecoration(hintText: 'Name', errorText: errorText),
    );
  }
}

class _EmailInputField extends StatelessWidget {
  const _EmailInputField();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: const Key('email_input_field'),
      onChanged: (v) => context.read<RegisterFormCubit>().onEmailChanged(v),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        errorText: context.watch<RegisterFormCubit>().state.email.invalid
            ? context.watch<RegisterFormCubit>().state.email.error
            : null,
      ),
      autocorrect: false,
    );
  }
}

class _PasswordInputField extends StatelessWidget {
  const _PasswordInputField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormCubit, RegisterState>(
      builder: (_, state) {
        return TextFormField(
          key: const Key('pw_input_field'),
          onChanged: (v) =>
              context.read<RegisterFormCubit>().onPasswordChanged(v),
          autocorrect: false,
          decoration: InputDecoration(
            hintText: 'Password',
            errorText: state.password.invalid ? state.password.error : null,
            suffixIcon: IconButton(
              icon: const Icon(Icons.visibility_off),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}

class _TermAgreementCheckbox extends StatelessWidget {
  const _TermAgreementCheckbox();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterFormCubit, RegisterState>(
      builder: (_, state) => InkWell(
        onTap: context.read<RegisterFormCubit>().onTermAgreementCheck,
        splashFactory: NoSplash.splashFactory,
        child: state.termsAgreement.value
            ? Assets.icons.checkbox.svg()
            : Assets.icons.checkboxBlank.svg(),
      ),
    );
  }
}
