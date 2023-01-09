import Foundation

struct Question: Identifiable, Equatable {
    
    let id: UUID = UUID()
    let text: String
    let correctOption: String
    let hint: String
    let options: [String]
    
}

var all_questions_default: [Question] = [
question001,
question002,
question003,
question004,
question005,
question006,
question007,
question008,
question009,
question010,
question011,
question012,
question013,
question014,
question015,
question016,
question017,
question018,
question019,
question020,
question021,
question022,
question023,
question024,
question025,
question026,
question027,
question028,
question029,
question030
]

class Questions: ObservableObject {
    @Published var all_questions: [Question] = all_questions_default
}

let questions = Questions()

let question001 = Question(
    text: "Normalmente, quantos litros de sangue uma pessoa tem? E em média, quantos são retirados numa doação de sangue?",
    correctOption: "Tem entre 4 a 6 litros. São retirados 450 mililitros",
    hint: "Por questões de Segurança, é proibido ultrapassar de 500ml de Sangue doados",
    options: [
        "Entre 2 a 4 litros. São retirados 450 mililitros",
        "Entre 4 a 6 litros. São retirados 450 mililitros",
        "10 litros. São retirados 2 litros",
        "7 litros. São retirados 1,5 litros",
        "0,5 litros. São retirados 0,5 litros"
    ]
)

let question002 = Question(
    text: "De quem é a famosa frase\n“Penso, logo existo”?",
    correctOption: "Descartes",
    hint: "Nascido na França",
    options: [
        "Platão",
        "Galileu Galilei",
        "Sócrates",
        "Descartes",
        "Francis Bacon"
    ]
)

let question003 = Question(
    text: "De onde é a invenção do chuveiro elétrico?",
    correctOption: "Brasil",
    hint: "Um dos propósitos do Chuveiro Elétrico, foi ser possível de realizar uma fácil instalação em casas populares",
    options: [
        "Brasil",
        "Estados Unidos",
        "França",
        "Alemanha",
        "Nova Zelândia"
    ]
)

let question004 = Question(
    text: "Quais o menor e o maior país do mundo?",
    correctOption: "Vaticano e Rússia",
    hint: "O Presidente do maior país do mundo o governa desde a renúncia de Boris Iéltsin, em 1999",
    options: [
        "Brasil e México",
        "Mônaco e Canadá",
        "Nauru e China",
        "Malta e Estados Unidos",
        "Vaticano e Rússia"
    ]
)

let question005 = Question(
    text: "Qual o nome do presidente do Brasil que ficou conhecido como Jango?",
    correctOption: "João Goulart",
    hint: "Antes de seu título, exercia profissão de Advogado",
    options: [
        "Jânio Quadros",
        "Jacinto Anjos",
        "Getúlio Vargas",
        "João Figueiredo",
        "João Goulart"
    ]
)

let question006 = Question(
    text: "Em qual grupo, uma das palavras está escrita de forma incorreta?",
    correctOption: "Lâmpada e Obcessão",
    hint: "A Palavra incorreta possui oito letras",
    options: [
        "Profissão e Hospital",
        "Telhado e Comestível",
        "Lâmpada e Obcessão",
        "Magnífico e Inteligente",
        "Travesseiro e Confortável"
    ]
)

let question007 = Question(
    text: "Atualmente, quantos elementos químicos a tabela periódica possui?",
    correctOption: "118",
    hint: "100 + 18",
    options: [
        "118",
        "109",
        "102",
        "110"
    ]
)

let question008 = Question(
    text: "O que a palavra \"legend\" significa em português?",
    correctOption: "Lenda",
    hint: "Existe um motivo para o título do Jogo ser ”The Legend of Zelda”",
    options: [
        "Lenda",
        "Legenda"
    ]
)

let question009 = Question(
    text: "Qual o número mínimo de jogadores em cada time numa partida de futebol?",
    correctOption: "7",
    hint: "28 ÷ 4 = ?",
    options: [
        "10",
        "7",
        "6",
        "8",
        "5"
    ]
)

let question010 = Question(
    text: "Quem pintou\n\"Guernica\"?",
    correctOption: "Pablo Picasso",
    hint: "Foi um pintor Espanhol",
    options: [
        "Paul Cézanne",
        "Pablo Picasso",
        "Diego Rivera",
        "Tarsila do Amaral",
        "Salvador Dalí"
    ]
)

let question011 = Question(
    text: "Desenvolvedores da Franquia de Jogos\n\"Bayonetta\"",
    correctOption: "Platinum Games",
    hint: "Desenvolvedora do Jogo \"Astral Chain\"",
    options: [
        "Platinum Games",
        "Nintendo",
        "Sega",
        "Rockstar Games",
        "Xbox Game Studios"
    ]
)

let question012 = Question(
    text: "Linguagem de Programação desenvolvida e utilizada pela Apple",
    correctOption: "Swift",
    hint: "Das linguagens citadas, é a mais recente",
    options: [
        "C",
        "Java",
        "Python",
        "Swift",
        "Kotlin",
        "Portugol"
    ]
)

let question013 = Question(
    text: "Criptomoeda mais utilizada mundialmente até o presente momento\n(2023)",
    correctOption: "Bitcoin",
    hint: "Foi a primeira criptomoeda criada",
    options: [
        "Dogecoin",
        "Bitcoin",
        "Ethereum",
        "Luna",
        "Squid",
        "Litecoin"
    ]
)

let question014 = Question(
    text: "Franquia de Jogos com mais jogos publicados",
    correctOption: "Mario",
    hint: "Personagem clássico, conhecido mundialmente pelos seus jogos",
    options: [
        "Grand Theft Auto",
        "Minecraft",
        "Sonic",
        "Metroid",
        "Mario",
        "God of War"
    ]
)

let question015 = Question(
    text: "Questiona a existência da Realidade",
    correctOption: "Matrix",
    hint: "Você pode escolher entre duas pílulas diferentes, a Azul, ou a Vermelha",
    options: [
        "Matrix",
        "Indiana Jones",
        "O Poderoso Chefão",
        "O Senhor dos Anéis",
        "Free Guy",
        "Star Wars"
    ]
)

let question016 = Question(
    text: "Venceu a Copa no Qatar, em 2022",
    correctOption: "Argentina",
    hint: "Faz fronteira com o Brasil",
    options: [
        "Argentina",
        "Brasil",
        "França",
        "Qatar",
        "Polônia",
        "Estados Unidos"
    ]
)

let question017 = Question(
    text: "Moeda legalmente utilizada na Suíça",
    correctOption: "Franco Suíço",
    hint: "A Suíca não utiliza a mesma moeda da Europa",
    options: [
        "Euro",
        "Franco Suíço",
        "Dólar",
        "Bitcoin",
        "Peso Suíço",
        "Real"
    ]
)

let question018 = Question(
    text: "Criadora do primeiro console portátil a utilizar duas Telas",
    correctOption: "Nintendo",
    hint: "Criadora da série de Jogos \"Kirby\"",
    options: [
        "Nintendo",
        "SEGA",
        "Microsoft",
        "Playstation",
        "Gradiente",
        "Nokia"
    ]
)

let question019 = Question(
    text: "Apoiou financeiramente o desenvolvimento do JOGO e SÉRIE\n\"Cuphead\"",
    correctOption: "Microsoft e Netflix",
    hint: "A Criadora da série de Jogos \"Forza\" ajudou no Desenvolvimento",
    options: [
        "Microsoft e Netflix",
        "Ubisoft e Amazon",
        "Nintendo e Netflix",
        "Luna e Netflix",
        "Georgia e HBO",
        "\"Disney\" para ambas alternativas"
    ]
)

let question020 = Question(
    text: "Quem pintou o quadro Mona Lisa?",
    correctOption: "Leonardo Da Vinci",
    hint: "O Pintor era Italiano",
    options: [
        "Leonardo Da Vinci",
        "Pablo Picasso",
        "Claude Monet",
        "Tarsila do Amaral",
        "Luciano Hang",
        "Paul Cézanne"
    ]
)

let question021 = Question(
    text: "Qual é o nome agente secreto da ficção conhecido pelo número 007?",
    correctOption: "James Bond",
    hint: "conhecido pelo código 007, é um agente secreto fictício do serviço de espionagem britânico MI-6, criado pelo escritor Ian Fleming",
    options: [
        "Ian Fleming",
        "Indiana Jones",
        "Keanu Reeves",
        "James Bond",
        "The Rock",
        "Jair Bolsonaro"
    ]
)

let question022 = Question(
    text: "Qual é o país mais populoso do mundo?",
    correctOption: "China",
    hint: "Em 2020, tinha 1.439.323.776 de habitantes, de acordo com a Organização das Nações Unidas",
    options: [
        "China",
        "India",
        "Irã",
        "Venezuela",
        "Rússia",
        "França"
    ]
)

let question023 = Question(
    text: "Qual oceano separa a América da África e da Europa?",
    correctOption: "Oceano Atlântico",
    hint: "O segundo maior oceano em extensão, com uma área de aproximadamente 106 400 000 km², cerca de um quinto da superfície da Terra",
    options: [
        "Oceano Atlântico",
        "Oceano Índico",
        "Oceano Pacífico",
        "Oceano Ártico",
        "Nenhum destes"
    ]
)

let question024 = Question(
    text: "Quando é verão no Brasil, qual é a estação do ano na Europa?",
    correctOption: "Inverno",
    hint: "O Brasil fica no hemisfério Sul, enquanto a Europa, no hemisfério Norte",
    options: [
        "Inverno",
        "Verão, do mesmo jeito",
        "Outono",
        "Primavera",
        "A Europa não possui estações do Ano"
    ]
)

let question025 = Question(
    text: "Em quantas regiões o Brasil é dividido?",
    correctOption: "5",
    hint: "Norte, Nordeste, Sudeste, Sul e Centro-Oeste",
    options: [
        "4",
        "7",
        "6",
        "5"
    ]
)

let question026 = Question(
    text: "Quantos fusos horários existem no Brasil?",
    correctOption: "4",
    hint: "Horário de Fernando de Noronha (UTC-02:00), Horário de Brasília (UTC-03:00), Horário da Amazônia (UTC-04:00) e Horário do Acre (UTC-05:00)",
    options: [
        "4",
        "7",
        "6",
        "5"
    ]
)

let question027 = Question(
    text: "Quais são as cores da bandeira da Espanha?",
    correctOption: "Vermelho e Amarelo",
    hint: "As mesmas cores da Logo do Mc Donalds",
    options: [
        "Azul e Vermelho",
        "Laranja e Amarelo",
        "Roxo e Azul",
        "Branco e Azul",
        "Vermelho e Amarelo"
    ]
)

let question028 = Question(
    text: "Qual é estado brasileiro pelo qual passa o Rio Tietê?",
    correctOption: "São Paulo",
    hint: "Possui o Parque Ibirapuera",
    options: [
        "São Paulo",
        "Santa Catarina",
        "Bahia",
        "Sergipe",
        "Brasília"
    ]
)

let question029 = Question(
    text: "Quantas patas tem uma aranha?",
    correctOption: "8",
    hint: "Possui quatro patas de cada lado",
    options: [
        "4",
        "5",
        "6",
        "7",
        "8",
        "9"
    ]
)

let question030 = Question(
    text: "Qual é o planeta mais próximo do sol?",
    correctOption: "Mercúrio",
    hint: "Mesmo estando próximo do Sol, sondas espaciais encontraram gelo em sua Superfície.",
    options: [
        "Vênus",
        "Marte",
        "Júpiter",
        "Mercúrio",
        "Urano"
    ]
)



