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

class Point {
  double? x;
  double? y;
  Point.fromJson(Map data) {
    x = data['x'];
    y = data['y'];
    print('(x: $x, y: $y)');
  }
}

class Funcionario{
  String nome;
  int idade;
  String funcao;
  String? hobby;

  //Outro tipo de construtors
  Funcionario(this.nome, this.idade, this.funcao, this.hobby);
  //Sobrecarga de construtores
  Funcionario.semHobby(this.nome, this.idade, this.funcao);

}

// Parâmetros em construtores

// Obrigatório Nomeado
class Bolo1{
  String massa;
  String recheio;

  // Massa e recheio obrigatórios nomeados
  Bolo1({required this.massa, required this.recheio});
}

// Opicional Nomeado
class Bolo2{
  String massa;
  String? recheio;

  // Massa obrigatório e recheio opcional nomeado
  Bolo2(this.massa, {this.recheio});
}

// Obrigatório Posicional
class Bolo3{
  String massa;
  String recheio;

  // Massa e recheio Obrigatórios Posicionais
  Bolo3(this.massa, this.recheio);
}

// Opcional Posicionado
class Bolo4{
  String massa;
  String? recheio;

  // Massa Obrigatório e recheio Opcional Posicionado
  Bolo4(this.massa, [this.recheio]);
}

// Construtor Constante
class FuncionarioConstante{
  final String nome;
  final int idade;
  final String funcao;
  final String hobby;

  // Definição do construtor
  const FuncionarioConstante(this.nome, this.idade, this.funcao, this.hobby);
}

class Funcionarios{
  String nome;
  int idade;
  String hobby;

  Funcionarios(this.nome, this.idade, this.hobby);

  factory Funcionarios.criar(String nome, int idade, String hobby, {String funcao = ""}){
    switch(funcao){
      case "Gerente":
      return Gerente(nome, idade, hobby);
      case "Vendedor":
      return Vendedor(nome, idade, hobby);
      default:
      return Funcionarios(nome, idade, hobby);
    }
  }
}

// Construtor de fábrica
class Gerente extends Funcionarios{
  Gerente(super.nome, super.idade, super.hobby);
}

class Vendedor extends Funcionarios{
  Vendedor(super.nome, super.idade, super.hobby);
}

// Composição
class Motor{
  void ligarMotor(){
    print("Motor ligado!");
  }
}

class Carro{
  final Motor motor = Motor();

  void acelerar(){
    motor.ligarMotor();
    print("Carro acelerando!");
  }
}

// Classes sem atributos
class Caluladora{
  // Contém apenas métodos para executar cálculos

  double somar(double a, double b){
    return a+b;
  }

  double subtrair(double a, double b){
    return a-b;
  }

  double multiplicar(double a, double b){
    return a*b;
  }

  double dividir( double a, double b){
    if(b == 0){
      throw Exception("Divisão por zero não é permitida!");
    }else{
      return a/b;
    }
  }
}

// Modificadores de acesso
class Exemplo{
  // Atributos Públicos e privados
  String senha; // Público - acessado de qualquer parte do código
  String _senha2; // Privado - acessado apenas dentro da própria classe
  Exemplo(this.senha, this._senha2);

  // Métodos Públicos e Privados
  void metodoPublico(){
    print("Acessando métodos Privados de fora da classe!");
    print("Método privado!");
    _metodoPrivado();
    print("Senha 2 = ${_senha2}");
  }
  void _metodoPrivado(){
    print("Método Privado!");
  }
}

void main() {
  /*
  Pessoa pessoa = Pessoa('Eduardo', 30);
  pessoa.saudacao();
  */
  print("\nPASSANDO MAP COMO PARÂMETRO DE UM MÉTODO DE CLASSE\n");
  Map<String, dynamic> data = {'x': 2.0, 'y': 5.0, 'raio': 10.0};
  Point ponto = Point.fromJson(data);

  Funcionario funcionario1 = Funcionario("Fulano", 50, "Programador", "Futebol");
  // Funcionário sem hobby 'Sobrecarga de constutores'
  Funcionario funcionario2 = Funcionario.semHobby("Fulano", 30, "Design");
  print("\n-----SOBRECARGA DE CONSTRUTORES-----\n");
  print("Funcionário 1:\nNome: ${funcionario1.nome}\nIdade: ${funcionario1.idade}\nFunção: ${funcionario1.funcao}\nHobby: ${funcionario1.hobby}\n");

  print("\n-----CONSTRUTOR DE FÁBRICA-----\n");
  Funcionarios gerente = Funcionarios.criar("Paulo", 45, "Improviso", funcao: "Gerente");
  Funcionarios vendedor = Funcionarios.criar("Pedro", 45, "Improviso", funcao: "Vendedor");
  print("Gerente: ${gerente.nome}");
  print("Vendedor: ${vendedor.nome}\n");

  print("Funcionário 2:\nNome: ${funcionario2.nome}\nIdade: ${funcionario2.idade}\nFunção: ${funcionario2.funcao}\n");

  // Construtor Constante
  FuncionarioConstante funcionarioConstante = const FuncionarioConstante("João", 40, "Gerente Regional", "Improviso");
  print("\n-----CONSTRUTOR CONSTANTE-----\n");
  print("Nome: ${funcionarioConstante.nome}\nIdade: ${funcionarioConstante.idade}\nFunção: ${funcionarioConstante.funcao}\nHobby: ${funcionarioConstante.hobby}\n");

  //lista de objetos do tipo funcionário
  Funcionario func1 = Funcionario("Fulano", 30, "Motorista", "Futebol");
  Funcionario func2 = Funcionario("Fulano", 30, "Motorista", "Futebol");
  List<Funcionario> ListaFuncionarios = [];
  ListaFuncionarios.add(func1);
  ListaFuncionarios.add(func2);
  print("\n-----LISTA DE FUNCIONÁRIOS-----\n");
  for(var funcionario in ListaFuncionarios){
    print("Nome: ${funcionario.nome}\nIdade: ${funcionario.idade}\nCargo: ${funcionario.funcao} \nHobby: ${funcionario.hobby}\n");
  }

  //Map de objetos do tipo funcionário
  Map<String, Funcionario> mapFuncionarios = {
    'func1':func1,
    'func2':func2
  };
  print("\n-----MAP DE FUNCIONÁRIOS-----\n");
  var funcionario = mapFuncionarios['func1'];
  print("Nome: ${funcionario?.nome}\nIdade: ${funcionario?.idade}\nCargo: ${funcionario?.funcao}\nHobby: ${funcionario?.hobby}");

  // Composição
  print("\nComposição Classe Carro e Motor\n");
  var carro = Carro();
  carro.acelerar();

  // Classes sem atributos
  var calculadora = Caluladora();
  print("\nCLASSES SEM ATRIBUTOS\n");
  print("Soma = ${calculadora.somar(5, 7)}\n");
  print("Subtração = ${calculadora.subtrair(10, 3)}\n");
  print("Multiplicação = ${calculadora.multiplicar(3, 7)}\n");
  print("Divisão = ${calculadora.dividir(6, 2)}");

  //Modificadores de acesso
  print("\nMODIFICADORES DE ACESSO!\n");
  Exemplo exemplo = Exemplo("123", "password");
  exemplo.metodoPublico();
}
