import 'professor.dart';
import 'utils.dart';
import 'aluno.dart';

class Disciplina {
  String _nome;
  String _codigo;
  String _semestre;
  Professor _professor;
  List<Aluno> _discentes = [];

  Disciplina(this._nome, this._codigo, this._semestre, this._professor);

  get nome => this._nome;
  get codigo => this._codigo;
  get semestre => this._semestre;
  get professor => this._professor;

  // Utilizada no processo de matricula
  void inserirDiscente(Aluno aluno) {
    this._discentes.add(aluno);
  }

  void excluirDiscente(Aluno aluno) {
    this._discentes.remove(aluno);
  }

  void listar() {
    listarNome();
    listarCodigo();
    listarSemestre();
    listarProfessor();
    listarAlunosMatriculados();
  }

  void listarNome() {
    pularLinha();
    print("Nome: " + _nome);
  }

  void listarCodigo() {
    print("Codigo: " + _codigo);
  }

  void listarSemestre() {
    print("Semestre: " + _semestre);
  }

  void listarProfessor() {
    print("Professor: " + _professor.nome);
  }

  void listarAlunosMatriculados() {
    for (int i = 0; i < _discentes.length; i++) _discentes[i].listar();
  }
}
