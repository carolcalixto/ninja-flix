#language: pt

Funcionalidade: Cadastro de Filmes
    Para que eu possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo Filmes

    Cenario: Filme disponível
        Dado que "Vingadores Ultimato" é um novo Filme
        E o status deste filme é "Disponível"
        E o ano de lançamento é "2019"
        E a data de estréia é "24/04/2019"
        E os atores são "Robert Downey Jr, Chris Evans, Brie Larson, Scarlett Johansson"
        E a sinopse do filme é "Após Thanos eliminar metade do universo, os vingadores terão que resolver esta treta."
        E escolhi uma capa muito bonita
        Quando eu faço o cadastro deste filme
        Então devo ver o novo filme na lista

    Cenario: Filme em pré venda
        Dado que "Homem Aranha Longe de Cada" é um novo Filme
        E o status deste filme é "Pré Venda"
        E o ano de lançamento é "2019"
        E a data de estréia é "04/07/2019"
        E os atores são "Tom Holland, Samule L. Jackson, Marisa Tomei"
        E a sinopse do filme é "Peter Parker está em uma viagem pela Europa e é convocado por Nick Fury para uma missão."
        E escolhi uma capa muito bonita
        Quando eu faço o cadastro deste filme
        Então devo ver o novo filme na lista

    Cenario: Filme em breve
        Dado que "Coringa" é um novo Filme
        E o status deste filme é "Em breve"
        E o ano de lançamento é "2019"
        E os atores são "Joaquin Phoenix"
        E a sinopse do filme é "O comediante falido Arthur Fleck encontra violentos bandidos pelas ruas de Gotham City."
        Quando eu faço o cadastro deste filme
        Então devo ver o novo filme na lista

    Cenario: Sem nome
        Quando eu tento cadastrar um filme sem o nome
        Então devo ver a notificação "Oops - Filme sem titulo. Pode isso Arnaldo?"

    Cenario: Sem status
        Quando eu tento cadastrar um filme sem o status
        Então devo ver a notificação "Oops - O status deve ser informado!"

    Cenario: Ano de lançamento não informado
        Quando eu tento cadastrar um filme sem o ano de lançamento
        Então devo ver a notificação "Oops - Faltou o ano de lançamento também!"

    Cenario: Data de estréia não informada
        Quando eu tento cadastrar um filme sem a data de estréia
        Então devo ver a notificação "Oops - Quase lá, só falta a data de estréia!"

    Cenario: Duplicado
        Dado que "Deadpool 2" já foi cadastrado
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação "Oops - Este titulo já existe no NinjaFlix."


