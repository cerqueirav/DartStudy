import 'aluno.dart';
import 'disciplina.dart';
import 'professor.dart';
import 'utils.dart';

class Curso {
  String _nome;
  List<Disciplina> _matriz_curicular = [];
  List<Aluno> _discentes = [];
  List<Professor> _docentes = [];

  Curso(this._nome);

  void exibirNome() {
    print("Nome: " + _nome);
  }

  void listar() {
    exibirNome();
    listarDiscentes();
    listarDocentes();
    listarDisciplinas();
  }

  void inserirDiscente(Aluno aluno) {
    this._discentes.add(aluno);
  }

  void inserirDocente(Professor docente) {
    this._docentes.add(docente);
  }

  void inserirDisciplina(Disciplina disciplina) {
    this._matriz_curicular.add(disciplina);
  }

  void excluirDiscente(Aluno aluno) {
    this._discentes.remove(aluno);
  }

  void excluirDocente(Professor docente) {
    this._docentes.remove(docente);
  }

  void excluirDisciplina(Disciplina disciplina) {
    this._matriz_curicular.remove(disciplina);
  }

  bool localizarDiscente(String aluno) {
    for (int indice = 0; indice < _discentes.length; indice++)
      if (_discentes[indice].nome == aluno) return true;

    return false;
  }

  bool localizarDocente(String professor) {
    for (int indice = 0; indice < _docentes.length; indice++)
      if (_docentes[indice].nome == professor) return true;

    return false;
  }

  bool localizarDisciplina(String disciplina) {
    for (int indice = 0; indice < _matriz_curicular.length; indice++)
      if (_matriz_curicular[indice].nome == disciplina) return true;

    return false;
  }

  void listarDiscentes() {
    int indice = 0;
    while (indice < this._discentes.length) {
      this._discentes[indice++].listar();
    }
    //Formatacao da impressão
    pularLinha();
  }

  void listarDocentes() {
    int indice = 0;
    while (indice < this._docentes.length) {
      this._docentes[indice++].listar();
    }
    //Formatacao da impressão
    pularLinha();
  }

  void listarDisciplinas() {
    int indice = 0;
    while (indice < this._matriz_curicular.length) {
      this._matriz_curicular[indice++].listar();
    }
    //Formatacao da impressão
    pularLinha();
  }

  void listarDiscentesPorSexo(String sexo) {
    for (int indice = 0; indice < _discentes.length; indice++)
      if (_discentes[indice].sexo == sexo) _discentes[indice].listar();
  }

  void listarDocentesPorSexo(String sexo) {
    for (int indice = 0; indice < _docentes.length; indice++)
      if (_docentes[indice].sexo == sexo) _docentes[indice].listar();
  }

  void listarAlunosPorOrdem(String parametro) {
    List<Aluno> alunos = (ordenarAlunos(parametro));

    for (int i = 0; i < alunos.length; i++) alunos[i].listar();
  }

  // Metodo responsável por ordenar, precisa refatorar
  List<Aluno> ordenarAlunos(String parametro) {
    List<String> alunos = [];
    List<Aluno> copia = [];

    for (int i = 0; i < _discentes.length; i++) {
      if (parametro == "nome")
        alunos.add(_discentes[i].nome);
      else if (parametro == "dtNasc")
        alunos.add(_discentes[i].dtNasc);
      else {
        print("parametro invalido!");
      }
    }

    alunos.sort();
    // Implementar ordenação de datas

    for (int i = 0; i < alunos.length; i++) {
      for (int j = 0; j < _discentes.length; j++) {
        if (parametro == "nome") {
          if (_discentes[j].nome == alunos[i]) copia.add(_discentes[j]);
        } else if (parametro == "dtNasc") {
          if (_discentes[j].dtNasc == alunos[i]) copia.add(_discentes[j]);
        }
      }
    }

    return copia;
  }

  void listarProfessoresPorOrdem(String parametro) {
    List<Professor> professores = (ordenarProfessores(parametro));

    for (int i = 0; i < professores.length; i++) {
      professores[i].listar();
    }
  }

  List<Professor> ordenarProfessores(String parametro) {
    List<String> docentes = [];
    List<Professor> copia = [];

    for (int i = 0; i < _docentes.length; i++) {
      if (parametro == "nome")
        docentes.add(_docentes[i].nome);
      else if (parametro == "dtNasc")
        docentes.add(_docentes[i].dtNasc);
      else {
        print("parametro invalido!");
      }
    }

    docentes.sort();
    // Implementar ordenação de datas

    for (int i = 0; i < docentes.length; i++) {
      for (int j = 0; j < docentes.length; j++) {
        if (parametro == "nome") {
          if (_docentes[j].nome == docentes[i]) copia.add(_docentes[j]);
        } else if (parametro == "dtNasc") {
          if (_docentes[j].dtNasc == docentes[i]) copia.add(_docentes[j]);
        }
      }
    }

    return copia;
  }

  void listarAniversariantes() {
    DateTime now = new DateTime.now();
    // Listagem de alunos aniversariantes
    for (int i = 0; i < _discentes.length; i++) {
      // TO DO -> criar funcao para separar a data do aluno
      if (_discentes[i].dtNasc == (now.month)) _discentes[i].listar();
    }

    // Listagem de professores aniversariantes
    for (int i = 0; i < _docentes.length; i++) {
      // TO DO -> criar funcao para separar a data do professor
      if (_docentes[i].dtNasc == (now.month)) _docentes[i].listar();
    }
  }
}
