import 'src/escola.dart';
import 'src/disciplina.dart';
import 'src/professor.dart';
import 'src/aluno.dart';
import 'src/curso.dart';

main(List<String> arguments) {
  Escola escola = Escola("IFBA");

  Curso ads = Curso("ADS");

  // Testes da Classe Escola
  escola.inserirCurso(ads);

  // Testes da Classe Aluno
  Aluno a1 = Aluno("201055", "Victor", "M", "30/09/14", "1593578524");

  // Adicionando um novo aluno
  ads.inserirDiscente(a1);

  // Removendo o aluno "a1" do curso ADS
  //ads.excluirDiscente(a1);

  // Localizando um aluno no curso de ADS
  String aluno = "Teste";

  if (ads.localizarDiscente(aluno))
    print("O aluno encontra-se cadastrado!");
  else
    print("Aluno nao localizado");

  // Testes da Classe Professor
  Professor p1 = Professor("12483", "Teacher", "M", "24/09/78", "123467");

  // Adicionando um novo docente
  ads.inserirDocente(p1);

  // Removendo o professor "p1" do curso ADS
  //ads.removerProfessor(p1);

  String professor = "Teste";

  if (ads.localizarDocente(professor))
    print("O professor encontra-se cadastrado!");
  else
    print("Professor nao localizado");

  // Testes da Classe Disciplina
  Disciplina d1 = Disciplina("Banco de Dados I", "INF007", "2º semestre", p1);
  // Adicionando uma nova disciplina
  ads.inserirDisciplina(d1);

  // Removendo a disciplina "d1" do curso ADS
  //ads.removerDisciplina(d1);
}
