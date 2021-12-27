import 'utils.dart';
import 'dart:io';

class Academico {
  String _matricula;
  String _nome;
  String _sexo;
  String _dtNasc;
  String _cpf;

  Academico(this._matricula, this._nome, this._sexo, this._dtNasc, this._cpf);

  get matricula => this._matricula;
  get nome => this._nome;
  get sexo => this._sexo;
  get dtNasc => this._dtNasc;
  get cpf => this._cpf;

  String criaNovaInfo() {
    String novaInfo;
    print("Qual o novo valor ? ");
    var capt = stdin.readLineSync();

    return (capt.toString());
  }

  void listar() {
    exibirNome();
    exibirMatricula();
    exibirSexo();
    exibirDtNasc();
    exibirCpf();
  }

  void exibirNome() {
    pularLinha();
    print("Nome: " + _nome);
  }

  void exibirMatricula() {
    print("Matricula: " + _matricula);
  }

  void exibirSexo() {
    print("Sexo: " + _sexo);
  }

  void exibirDtNasc() {
    print("Data de nascimento: " + _dtNasc);
  }

  void exibirCpf() {
    print("CPF: " + _cpf);
  }
}
