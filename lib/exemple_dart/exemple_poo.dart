//! nommination
// variable: nomDeEtudiant
// pakage module, lib: firebase_option.dart
// classe GestionEtduiant
class Etudiant {
  // att + methode+ const+ gettersetter
  int _code = 0;
  String nom = "";
  int age = 0;

  int get code => _code;
  set code(int c) => _code = c;
  Etudiant() {
    _code = 0;
    age = 0;
    nom = "";
  }
  Etudiant.avecparam(int a, int c, String n) {
    _code = c;
    age = a;
    nom = n;
  }
  Etudiant.avecparamoptimise(int c, int a, String n);
  Etudiant.avecparamoptimisenomme(
      {required int code, required int age, required String nom});
  Etudiant.avecparamoptimisenomme2(
      {required int code, required int age, String nom = ""});
}

/// ceci doit etre ecrit dans un new file

void main() {
  Etudiant e = new Etudiant();
  var e1 = new Etudiant();
  var e2 = Etudiant(); //! xxxxx
  var e3 = Etudiant.avecparam(1,2,"ee"); 
  var e4 = Etudiant.avecparamoptimisenomme(age:1,code:2,nom:"ee"); 
  var e5 = Etudiant.avecparamoptimisenomme(nom:"ee",age:1,code:3); //!xx
  var e6 = Etudiant.avecparamoptimisenomme2(age:1,code:3); //!xx


}
