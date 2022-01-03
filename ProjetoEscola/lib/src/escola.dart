import 'disciplina.dart';
import 'utils.dart';
import 'aluno.dart';
import 'academico.dart';
import 'professor.dart';
import 'curso.dart';

class Escola {
  String _nome;
  List<Curso> _cursos = [];

  Escola(this._nome);

  void inserirCurso(Curso curso) {
    this._cursos.add(curso);
  }

  void excluirCurso(Curso curso) {
    this._cursos.remove(curso);
  }

  void listarCursos() {
    for (int indice = 0; indice < _cursos.length; indice++)
      this._cursos[indice].listar();
  }
}
