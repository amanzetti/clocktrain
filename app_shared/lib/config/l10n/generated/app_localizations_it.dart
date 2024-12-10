import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get helloWorld => 'Ciao Mondo';

  @override
  String get save => 'Salva';

  @override
  String get cancel => 'Annulla';

  @override
  String get next => 'Avanti';

  @override
  String get back => 'Indietro';

  @override
  String get done => 'Fatto';

  @override
  String get addShort => 'Ins';

  @override
  String get genericError => 'Qualcosa è andato storto';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Conferma Password';

  @override
  String get forgotPassword => 'Password dimenticata?';

  @override
  String get name => 'Nome';

  @override
  String get surname => 'Cognome';

  @override
  String get age => 'Età';

  @override
  String get weight => 'Peso';

  @override
  String get height => 'Altezza';

  @override
  String get birthDate => 'Data di Nascita';

  @override
  String get noAccount => 'Non hai un account?';

  @override
  String get alreadyHaveAccount => 'Hai già un account?';

  @override
  String get register => 'Registrati';

  @override
  String get login => 'Accedi';

  @override
  String get logout => 'Esci';

  @override
  String get home => 'Home';

  @override
  String get profile => 'Profilo';

  @override
  String get settings => 'Impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get theme => 'Tema';

  @override
  String get exerciseEditorTitle => 'Editor Esercizi';

  @override
  String get exerciseName => 'Nome Esercizio';

  @override
  String continueName(String name) {
    return 'Continua $name';
  }

  @override
  String get createAccount => 'Crea Account';

  @override
  String get apple => 'apple';

  @override
  String get google => 'google';
}
