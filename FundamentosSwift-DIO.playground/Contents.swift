import SwiftUI
//Criar um projeto no playground usando o Xcode

let steve = "Steve"
//Definir uma constante com o valor incial "Steve"

var jobs: String? = "Jobs"
//Definir uma variável do tipos String opcional e com valor inicial "Jobs"

if jobs != nil {
    print("\(steve) \(jobs ?? "Wozniak")")
}
//Escrever um print fazendo interpolação com a constante e variável, defindo um valor default para a variável opcinal como "Wozniak"

if let SteveJobs = jobs {
    print("A variavel retorna Steve \(SteveJobs)")
}else {
    print("A String está vazia")
}
//Fazer um Optional Binding na variável e dento da condição fazer outro print com interpolação entre a constante e variável que foi desembrulhada.


