class Pessoa {
  String nome;
  int idade;

  // Construtor
  Pessoa(this.nome, this.idade);

  // Método
  void saudacao() {
    print('Olá, meu nome é $nome e eu tenho $idade anos.');
  }
}

enum DiaSemana { segunda, terca, quarta, quinta, sexta, sabado, domingo }

void main() {
  //Pessoa pessoa = Pessoa('Eduardo', 30);
  //pessoa.saudacao();

  DiaSemana hoje = DiaSemana.quarta;
  print('Hoje é $hoje.');
}
