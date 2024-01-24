import 'package:flutter/material.dart';

//onde a execução do programa começa - pricipal
void main() {
  runApp(const Aplicativo()); //roda aplicativo
}

//classe aplicativo(contém caracteristicas, variaveis e funções)
//extends - extende- Herda caracteristicas do widet stateless
//stateless - tuda interface é imutavel após a criação
class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  //builde - método que reconstroi a tela
  @override
  Widget build(BuildContext context) {
    //widget responsavél pelo design da aplicação
    // ignore: prefer_const_constructors
    return MaterialApp(
      //home - tela principal - Scaffold fornece layout basico
      // ignore: prefer_const_constructors
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Flutter é divertido',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          //child representa qu eé filho do widget Center -SizeBoz - CaixaComTamanho
          child: SizedBox(
            child: const Text(
                'Flutter foi criado pelo Google, usa a linguagem DART'),
            height: 200,
            width: 200,
          ),
        ),
      
    
  






//------- botão flutuante no canto direito abaixo
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green, //alterar cor botão
          child: Icon(Icons.add), //icone do botão
          onPressed: () {}, //ação quando clicar
        ),
      

  //------ barra de navegação inferior--------abaixo de floating action button

        //BottomNavigationBarItem - é o item da barra de navegação
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Principal'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Negócios'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Escola'),
        ]),

        //---- barra lateral do aplicativo
        drawer: Drawer(
          backgroundColor: Colors.white,

          //lista dos itens do menu
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  'Menu App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                //item do menu
                leading: const Icon(Icons.home), //icone do item do menu
                title: const Text('Pagina Inicial'), //titulo do item do menu
                onTap: () {}, //ação que o botão irá executar
              ),
              ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text('configurações'),
                  onTap: () {}),
              ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('Perfil'),
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}