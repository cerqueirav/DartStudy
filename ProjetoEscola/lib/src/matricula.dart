import 'disciplina.dart';

class Matricula {
  String _periodo;
  List<Disciplina> _disciplinas = [];

  get periodo => this._periodo;
  get disciplinas => this._disciplinas;

  Matricula(this._periodo);

  void inserirDisciplina(Disciplina disciplina) {
    this._disciplinas.add(disciplina);
  }

  void excluirDisciplina(Disciplina disciplina) {
    this._disciplinas.remove(disciplina);
  }

  void listar() {
    print("Periodo: ${this._periodo}");

    for (int i = 0; i < _disciplinas.length; i++) _disciplinas[i].listar();
  }

  void realizarMatricula(String periodo) {
    this._periodo = periodo;
  }
}
