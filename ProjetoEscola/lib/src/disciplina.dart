import 'professor.dart';
import 'utils.dart';

class Disciplina {
  String _nome;
  String _codigo;
  String _semestre;
  Professor _professor;

  Disciplina(this._nome, this._codigo, this._semestre, this._professor);

  get nome => this._nome;
  get codigo => this._codigo;
  get semestre => this._semestre;
  get professor => this._professor;

  void listar() {
    exibirNome();
    exibirCodigo();
    exibirSemestre();
    exibirProfessor();
  }

  void exibirNome() {
    pularLinha();
    print("Nome: " + _nome);
  }

  void exibirCodigo() {
    print("Codigo: " + _codigo);
  }

  void exibirSemestre() {
    print("Semestre: " + _semestre);
  }

  void exibirProfessor() {
    print("Professor: " + _professor.nome);
  }
}
