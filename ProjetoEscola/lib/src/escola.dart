import 'disciplina.dart';
import 'utils.dart';
import 'aluno.dart';
import 'academico.dart';
import 'professor.dart';

class Escola {
  String _nome;
  List<Aluno> _discentes = [];
  List<Professor> _docentes = [];
  List<Disciplina> _disciplinas = [];

  Escola(this._nome);

  // Metodos da entidade "Aluno"
  void cadastrarAluno(Aluno aluno) {
    _discentes.add(aluno);
  }

  void removerAluno(Aluno aluno) {
    _discentes.remove(aluno);
  }

  bool localizarAluno(Aluno aluno) {
    int indice = 0;
    while (indice < _discentes.length) {
      if (_discentes[indice].nome == aluno.nome) return true;

      indice++;
    }

    return false;
  }

  void listarAlunos() {
    int indice = 0;
    while (indice < _discentes.length) {
      _discentes[indice++].listar();
    }
    //Formatacao da impressão
    pularLinha();
  }

  // Metodos da entidade "Professor"
  void cadastrarProfessor(Professor professor) {
    _docentes.add(professor);
  }

  void removerProfessor(Professor professor) {
    _docentes.remove(professor);
  }

  bool localizarProfessor(Professor professor) {
    int indice = 0;
    while (indice < _docentes.length) {
      if (_docentes[indice].nome == professor.nome) return true;

      indice++;
    }

    return false;
  }

  void listarProfessores() {
    int indice = 0;
    while (indice < _docentes.length) {
      _docentes[indice++].listar();
    }
    //Formatacao da impressão
    pularLinha();
  }

  // Metodos da entidade "Disciplina"
  void cadastrarDisciplina(Disciplina disciplina) {
    _disciplinas.add(disciplina);
  }

  void removerDisciplina(Disciplina disciplina) {
    _disciplinas.remove(disciplina);
  }

  bool localizarDisciplina(Disciplina disciplina) {
    int indice = 0;
    while (indice < _disciplinas.length) {
      if (_disciplinas[indice].nome == disciplina.nome) return true;

      indice++;
    }

    return false;
  }

  void listarDisciplinas() {
    int indice = 0;
    while (indice < _disciplinas.length) {
      _disciplinas[indice++].listar();
    }
    //Formatacao da impressão
    pularLinha();
  }
}
