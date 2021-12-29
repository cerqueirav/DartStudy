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

  void listarAlunoPorSexo(String sexo) {
    int indice = 0;
    while (indice < _discentes.length) {
      if (_discentes[indice].sexo == sexo) {
        _discentes[indice].listar();
      }
      indice++;
    }
  }

  void listarAlunosPorOrdem(String parametro) {
    List<Aluno> alunos = (ordenarAlunos(parametro));

    for (int i = 0; i < alunos.length; i++) {
      alunos[i].listar();
    }
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

  void listarProfessorPorSexo(String sexo) {
    int indice = 0;
    while (indice < _docentes.length) {
      if (_docentes[indice].sexo == sexo) {
        _docentes[indice].listar();
      }
      indice++;
    }
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
