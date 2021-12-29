import 'src/escola.dart';
import 'src/disciplina.dart';
import 'src/professor.dart';
import 'src/aluno.dart';

main(List<String> arguments) {
  Escola escola = Escola("IFBA");

  // Testes da Classe Aluno
  Aluno a1 =
      Aluno("2017554462", "Marcos Leite", "M", "30/09/2014", "1593578524");

  escola.cadastrarAluno(a1);

  Aluno a2 =
      Aluno("20116956", "Izabel Martins", "F", "22/04/2002", "44421111224");

  escola.cadastrarAluno(a2);

  Aluno a3 =
      Aluno("20116956", "Jorge Valente L.", "F", "31/04/2024", "11245554");

  escola.cadastrarAluno(a3);

  //escola.removerAluno(a1);

  //escola.listarAlunosPorOrdem("dtNasc");

  //escola.listarAlunoPorSexo("F");

  /*

  // Testes da Classe Professor
cls  Professor p1 =
      Professor("12487743", "Teacher.", "M", "24/09/78", "123467890");

  escola.cadastrarProfessor(p1);

  //escola.removerProfessor(p1);

  escola.listarProfessores();

  // Testes da Classe Disciplina
  Disciplina d1 = Disciplina("Banco de Dados I", "INF007", "2º semestre", p1);

  escola.cadastrarDisciplina(d1);

  //escola.removerDisciplina(d1);

  escola.listarDisciplinas();

  */
}
