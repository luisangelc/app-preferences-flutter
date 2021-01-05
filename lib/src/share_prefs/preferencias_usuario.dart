import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  // Implementar el patron singleton.
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET y SET del Genero
  get genero {
    return this._prefs.getInt('genero') ?? 1;
  }

  set genero(int value) {
    this._prefs.setInt('genero', value);
  }

  // GET y SET del _colorSecundario
  get colorSecundario {
    return this._prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    this._prefs.setBool('colorSecundario', value);
  }

  // GET y SET del nombre
  get nombreUsuario {
    return this._prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value) {
    this._prefs.setString('nombreUsuario', value);
  }

  // GET y SET del ultima pagina
  get ultimaPagina {
    return this._prefs.getString('ultimaPagina') ?? 'home';
  }

  set ultimaPagina(String value) {
    this._prefs.setString('ultimaPagina', value);
  }
}
