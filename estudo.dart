import 'dart:io';

void main() {
  //tipagem();
  //tipoDadosBasicos();
  //estruturasDeControle();

  /*
  int a = 5;
  int b = 2;
  print(soma(a, b));
  print("$a");
  print("$b");
  */

  //print(mensagem(false));
  //print(retornaLista());
  //print(quadrado(9));

  /*
  List<int> lista = [];
  adicionaInLista(lista, 5);
  print(lista);
  */

  //print(fibonacci(10));
  //boasVindas();
  //tabuada();
  //guardaNota();

  //print(multiplica(a:8, b:7));

  /*
  saudacao("Eduardo");
  saudacao("Eduardo", "Laurentino");
  */

  //print(obterValoresMultiplos(5, 8));
  //print(valoresMultiplosMap("Eduardo", 23));

  /*
  valoresMultiplos valores = obterValores(10, 20);
  int primeiroValor = valores.valor1;
  int segundoValor = valores.valor2;
  print("primeiro valor = $primeiroValor");
  print("Segudo Valor = $segundoValor");
  */
  //executaOperacao(5, 9, subtracao);
  //print(numerosDobrados);
  //tipoLista();
  //tiposAnulaveis();
  //listasComTipoNull();
  //tipoSet();
  //conjuntoTipoSet();
  //tipoMap();

  /*
  for (int i = 0; i <= 5; i++) {
    listaMap('Eduardo', 'Laurentino', 23, 65.0, 1.65, 'Caxias', 'MA',
        '65604840', '99984553895');
  }
  */

  //mostraMinhaListaMap();
  //mostraPessoasMap();
}

void tipagem() {
  //Tipagem estática
  String nome = 'Eduardo';
  int idade = 23;

  //Tipagem dinâmica
  var nome1 = 'Eduardo';
  var idade1 = 23;

  print('Variáveis tipagem estática');
  print(nome);
  print(idade);
  print('\nVariáveis tipagem dinâmica');
  print(nome1);
  print(idade1);
}

void tipoDadosBasicos() {
  //Em Dart, o tipo de dados Null é usado para representar a ausência de um valor ou para indicar que uma variável não tem um valor atribuído. No entanto, diferentemente de algumas outras linguagens de programação, em Dart, Null não é um tipo de dados que você pode atribuir diretamente a uma variável. Em vez disso, o valor null é atribuído a variáveis de outros tipos quando não há um valor real presente.

  String? name; //Variável 'name' pode conter 'null'
  if (name != null) {
    print("A variável name é nula!");
    print(name);
  } else {
    // O operador ?? fornece um valor padrão caso name seja nula
    String nameNaoNulo = name ?? 'Valor atribuido para variável nula name';
    print("$nameNaoNulo");
  }

  String? possivelNome; // Variável 'possivelNome' pode conter 'null'
  // '?' -> Indica que a vartiável pode ser nula
  //possivelNome = "valor atribuido a variável nula possivelNome";
  String nomeNaoNulo = possivelNome!;
  // '!' -> Indica com certeza que a variável não é nula
  print("$nomeNaoNulo\n");

  //Dynamic : Variáveis ​​​​dynamic podem armazenar qualquer tipo de dado e podem ser alteradas dinamicamente para diferentes tipos.

  //Permite que o tipo da variável seja inferido pelo compilador com base no valor atribuído a ela.
  print("Variáveis Dinâmicas!");
  dynamic variaveldinamica;
  variaveldinamica = 30;
  print("$variaveldinamica\n");

  variaveldinamica = true;
  print("$variaveldinamica\n");

  variaveldinamica = "Hello World!";
  print("$variaveldinamica\n");

  variaveldinamica = 2.75;
  print("$variaveldinamica\n");

  print("Váriáveis tipo Var!");
  var qualquerTipo = true;
  print("$qualquerTipo\n");

  //Ao usar o tipo num, você não terá acesso a métodos ou propriedades específicos de int ou double.
  print("Variáveis tipo Num!");
  num numero1 = 40;
  num numero2 = 3.15;
  print(numero1);
  print("$numero2\n");

  print("Variáveis tipos básicos!");
  int idade = 25;
  double altura = 1.75;
  String nome = 'Eduardo';
  bool solteiro = true;
  print(idade);
  print(altura);
  print(nome);
  print(solteiro);
}

void tiposAnulaveis() {
  // Declaraçã de variáveis anuláveis
  String? nome;
  int? idade;

  // Atribuindo valores as variáveis
  //nome = "Eduardo";
  //idade = 23;

  if (nome != null) {
    print("Nome: $nome");
  } else {
    print("Nome não foi definido!");
  }

  if (idade != null) {
    print("Idade: $idade");
  } else {
    print("Idade não foi definido!");
  }
}

void tipoLista() {
  // Existe duas maneiras de criar Listas
  // Sintaxe de colchetes []
  List<int> numeros = [1, 5, 8];
  numeros.add(1);
  numeros.add(2);
  print("Lista Números = $numeros");
  print(numeros.length);
  print(numeros.reversed);
  print("\n");

  List<String> nomes = [];
  nomes.add("Eduardo");
  nomes.add("Maria");
  nomes.add("Ana");
  nomes.add("Mariana");
  print(nomes);
  print(nomes.length);
  print(nomes.reversed);

  // Acessando elementos da lista
  print("Acessando elementos da lista!");
  print(numeros[3]);
  print(nomes[1]);
  print("\n");

  // Removendo um elemento da lista
  print("Removendo elementos da lista!");
  numeros.remove(8);
  nomes.remove('Ana');
  print("Lista depois de remover elementos!");
  print(numeros);
  print(nomes);

  // Atualizando elementos da lista
  print("Atualizando elementos da lista!");
  numeros[3] = 10;
  nomes[1] = "João";
  print("\nLista depois de atualizar elementos!");
  print(numeros);
  print(nomes);

  // Verificando a existência de um elemento na lista
  print("\nVerificando a existência de elemento na lista!");
  int numeroAverificar = 100;
  bool contemNumero = numeros.contains(numeroAverificar);

  if (contemNumero == true) {
    print("O número $numeroAverificar está na lista");
  } else {
    print("O numero $numeroAverificar não está na lista");
  }

  String nomeAverificar = "Natália";
  bool contemNome = nomes.contains(nomeAverificar);

  if (contemNome == true) {
    print("O nome $nomeAverificar está na lista");
  } else {
    print("O nome $nomeAverificar não está na lista");
  }
  // Usando a classe List
}

void listasComTipoNull() {
  // Uma lista pode ser nula ou receber valores ou não nula com valores nulos
  List<String?>? listaComNull = ['a', null, 'b', null];
  print(listaComNull);

  // Adicionando valores nulos a lista
  listaComNull.add(null);
  print(listaComNull);
}

void estruturasDeControle() {
  // Exemplos da estrutura condicional if
  int idade = 18;
  if (idade >= 18) {
    print("Você é maior de idade!");
  }

  if (idade >= 18) {
    print("Você é maior de idade!");
  } else {
    print("Você é menor de idade!");
  }

  int pontuacao = 15;
  if (pontuacao > 10) {
    print("Pontuação inválida!");
  } else if (pontuacao >= 9) {
    print("ÓTIMO!");
  } else if (pontuacao >= 8) {
    print("BOM!");
  } else if (pontuacao >= 7) {
    print("REGULAR!");
  } else {
    print("RUIM!");
  }

  // Operador ternário (?)
  String statusIdade = (idade >= 18) ? 'Maior de idade' : 'Menor de idade';
  print(statusIdade);

  // Exemplos da estrutura de repetição for
  for (int i = 0; i <= 10; i++) {
    // Este loop também pode ser decrescente
    print("Número $i");
  }

  List<String> frutas = ['laranja', 'melanca', 'abacate', 'melão', 'uva'];
  for (String fruta in frutas) {
    print("Eu gosto de $fruta");
  }

  // Loop infinito
  for (;;) {
    print("Este é um loop infinito!");
    break; // O break interrompe o loop para que não execute o for eternamente
  }

  // Exemplos com forEach
  // Iterando por uma lista
  frutas.forEach((fruta) {
    print("Eu gosto de $fruta");
  });

  //Iterando por um Map
  Map<String, int> idades = {'Ana': 25, 'Maria': 18, 'Mariana': 35};
  idades.forEach((nome, idade) {
    print("$nome tem $idade anos");
  });

  // Exemplo de um switch
  String diaDaSemana = "segunda";
  switch (diaDaSemana) {
    case 'segunda':
      print("Hoje é segunda-feira!");
      break;
    case 'terça':
      print("Hoje é terça-feira!");
      break;
    case 'quarta':
      print("Hoje é quarta-feira!");
      break;
    case 'quinta':
      print("Hoje é quinta-feira!");
      break;
    case 'sexta':
      print("Hoje é sexta-feira!");
      break;
    case 'sábado':
      print("Hoje é sábado!");
      break;
    case 'domingo':
      print("Hoje é domingo!");
      break;
    default:
      print('Dia da semana inválido!');
  }

  // Outros tipos de switch
  double notas = 10.0;
  switch (notas) {
    case (>= 9.0) && (<= 10.0):
      print("ÓTIMO!");
      break;
    case (>= 8.0) && (<= 10.0):
      print("BOM!");
      break;
    case (>= 7.0) && (<= 10.0):
      print("REGULAR!");
      break;
    case (> 0.0) && (< 7.0):
      print("RUIM!");
      break;
    default:
      print("Nota Inválida!");
  }

  // while
  print("While e do-While com o mesmo contador e condição");
  int contador = 0;
  while (contador <= 5) {
    print("Contagem $contador");
    contador++;
  }

  // do-While
  print("Fim do While");
  do {
    print("Contagem:$contador");
  } while (contador <= 5);

  // Where
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  // Filtrar apenas números pares
  // Usando notação de funções anônimas
  List<int> numerosPares = numeros.where((numero) => numero % 2 == 0).toList();
  print(numerosPares);
}

// Funções
int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void boasVindas() {
  stdout.write("Digite seu nome: ");
  var nome = stdin.readLineSync();
  stdout.write("Digite M para sexo masculino ou F para feminino: ");
  var sexo = stdin.readLineSync();

  if (sexo == 'M') {
    print("Bem Vindo $nome");
  } else {
    print("Bem vinda $nome");
  }
}

void tabuada() {
  stdout.write("Digite um número entre 1 e 9: ");
  String? entrada = stdin.readLineSync();
  if (entrada != null) {
    double numero = double.parse(entrada);
    for (int i = 0; i <= 9; i++) {
      double multiplicacao = numero * i;
      print("$numero X $i = $multiplicacao");
    }
  }
}

void guardaNota() {
  var lista = [];
  for (int i = 1; i <= 10; i++) {
    stdout.write("Digite a nota do $i aluno: ");
    String? entrada = stdin.readLineSync();
    if (entrada != null) {
      double dados = double.parse(entrada);
      lista.add(dados);
    }
  }
  var maiorNota = lista[0];
  for (double numero in lista) {
    if (numero > maiorNota) {
      maiorNota = numero;
    }
  }

  var menorNota = lista[0];
  for (double numero in lista) {
    if (numero < menorNota) {
      menorNota = numero;
    }
  }

  double aux = 0;
  for (double numero in lista) {
    aux += numero;
  }
  double media = aux / lista.length;
  print(lista);
  print(maiorNota);
  print(menorNota);
  print(media);
}

void adicionaInLista(List<int> lista, int elemento) {
  // passagem de parâmetros por referência
// Qualquer alteração feita ao parâmetro dentro da função afetará a variável original fora da função.
  lista.add(elemento);
}

int soma(int a, int b) {
  // Passagem de parâmetros por valor
  //Qualquer alteração feita ao parâmetro dentro da função não afetará a variável original fora da função.
  return a + b;
}

int subtracao(int a, int b) {
  return a - b;
}

int multiplica({int a = 0, int b = 0}) {
  // Passagem de parâmetros por nome
  // permite que você passe os parâmetros fora de ordem
  return a * b;
}

void saudacao(String nome, [String? sobrenome]) {
  // Recebe parâmetros opcionais
  if (sobrenome != null) {
    print("Olá, $nome $sobrenome");
  } else {
    print("Olá $nome");
  }
}

String mensagem(bool estaChovendo) {
  if (estaChovendo) {
    return "Traga guarda-chuva!";
  } else {
    return "Aproveite o dia!";
  }
}

List<int> retornaLista() {
  List<int> minhaLista = [];
  for (int i = 0; i <= 10; i++) {
    minhaLista.add(i);
  }
  return minhaLista;
}

// Funções anônimas
var quadrado = (int x) => x * x;

List<int> numerosLista = [1, 2, 3, 4, 5];
var numerosDobrados = numerosLista.map((numero) => numero * 2).toList();

// Funções que retornam múltiplos valores
// Usando listas
List<int> obterValoresMultiplos(int a, int b) {
  return [a, b];
}

Map<String, dynamic> valoresMultiplosMap(nome, idade) {
  return {'nome': nome, 'idade': idade};
}

// Retornando valores com Classes Personalizadas
class valoresMultiplos {
  int valor1;
  int valor2;

  valoresMultiplos(this.valor1, this.valor2);
}

valoresMultiplos obterValores(int valor1, int valor2) {
  int valor1 = 2;
  int valor2 = 3;
  return valoresMultiplos(valor1, valor2);
}

// Funções de alta ordem
// Você pode passar funções como argumentos para outras funções
void executaOperacao(int a, int b, Function operacao) {
  print(operacao(a, b));
}

Function operacao(String tipo) {
  if (tipo == 'soma') {
    return (int a, int b) => a + b;
  } else if (tipo == 'subtracao') {
    return (int a, int b) => a - b;
  }
  return operacao(tipo);
}

void tipoSet() {
  Set<String> frutas = Set.from(['maçã', 'banana', 'laranja']);

  print(frutas);

// Adicionando elementos ao Set
  frutas.add('uva');
  print(frutas);

//Removendo elementos do Set
  frutas.remove('banana');
  print(frutas);

//Verificando a existência de um elemento no Set
  bool contemUva = frutas.contains('uva');
  print(contemUva);

//Verificando o tanho do set
  print(frutas.length);

//Iterando pelos elementos do Set
  for (var fruta in frutas) {
    print(fruta);
  }
}

//Operações de conjuntos com Set
void conjuntoTipoSet() {
  //Operações de conjuntos com Set
  Set<String> conjuntoA = Set.from(['a', 'b', 'c']);
  Set<String> conjuntoB = Set.from(['b', 'c', 'd']);

  Set<String> uniao = conjuntoA.union(conjuntoB); // União
  Set<String> intersecao = conjuntoA.intersection(conjuntoB); // Interseção
  Set<String> diferenca = conjuntoA.difference(conjuntoB); // Diferença

  bool eSubconjunto =
      conjuntoA.containsAll(conjuntoB); // Verificação de subconjunto

  print(uniao);
  print(intersecao);
  print(diferenca);
  print(eSubconjunto);
}

void tipoMap() {
  Map<String, dynamic> pessoa = {
    "nome": "Eduardo",
    "idade": 23,
    "solteiro": true
  };
  // Adicionando dados ao Map
  print("Dados Adicionados!");
  pessoa['nome'] = 'Maria';
  pessoa['idade'] = 20;
  pessoa['solteiro'] = true;
  print(pessoa);
  print("\n");

  // Recuperando valores por chave
  print("Recuperando valores do map pela chave!");
  int idademaria = pessoa['idade'];
  print("Idade de Maria = $idademaria");

  // Verificando a existência de uma chave
  if (pessoa.containsKey('telefone')) {
    print("O Map Pessoa tem a chave Telefone.");
  } else {
    print("O Map Pessoa não tem a chave Telefone");
  }
  print("\n");

  // Removendo pares chave-valor
  print("Removendo pares Chave-valor!");
  pessoa.remove('nome');
  print(pessoa);

  // Iterando em um Map
  print("Iterando em um Map");
  for (var chave in pessoa.keys) {
    var valor = pessoa[chave];
    print("$chave: $valor");
  }

  // Recuperando o tamanho de um Map
  int tamanhoMap = pessoa.length;
  print("Tamanho do Map = $tamanhoMap");
  print("\n");
}

List<Map> minhaListaMap = [];
void listaMap(String nome, String sobrenome, int idade, double peso,
    double altura, String cidade, String estado, String cep, String telefone) {
  Map<String, dynamic> meuMap = {
    'nome': nome,
    'sobrenome': sobrenome,
    'idade': idade,
    'peso': peso,
    'altura': altura,
    'cidade': cidade,
    'estado': estado,
    'cep': cep,
    'telefone': telefone
  };
  minhaListaMap.add(meuMap);
}

void mostraMinhaListaMap() {
  print(minhaListaMap);
}

void mostraPessoasMap() {
  for (var dados in minhaListaMap) {
    print(dados['nome']);
  }
}
