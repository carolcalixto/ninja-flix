#language: pt

@login
Funcionalidade: Cadastro de Filmes
    Para que eu possa disponibilizar novos títulos no catálogo
    Sendo um gestor de catálogo
    Posso cadastrar um novo Filmes

    @new_movie
    Esquema do Cenario: Novo filme
        O gestor de catálogo cadastra um novo filme através do formulário,
        e um novo registro é inserido no catálogo NinjaFlix.

        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver o novo filme na lista 

        Exemplos:
            | codigo    |
            | "endgame" |
            | "spider"  |
            | "joker"   |

    @attempt_movie
    Esquema do Cenario: Campos obrigatórios
        O gestor de catálogo tenta cadastrar um novo filme, mas esquece
        de preencher um dos campos que são obrigatórios, em sequida, o sistema
        exibe uma notificação para o usuário.

        Dado que <codigo> é um novo filme
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação <texto>

        Exemplos:
            | codigo            | texto                                          |
            | "no_title"        | "Oops - Filme sem titulo. Pode isso Arnaldo?"  |
            | "no_status"       | "Oops - O status deve ser informado!"          |
            | "no_year"         | "Oops - Faltou o ano de lançamento também!"    |
            | "no_release_date" | "Oops - Quase lá, só falta a data de estréia!" |

    @dup_movie
    Cenario: Duplicado
        O gestor de catálogo tenta cadastrar um filme, porém o título 
        já foi cadastrado em outro momento e o sistema notifica
        o usuário informando que o título já existe.

        Dado que "deadpool2" é um novo filme
        Mas este filme já existe no catálogo
        Quando eu faço o cadastro deste filme
        Então devo ver a notificação "Oops - Este titulo já existe no Ninjaflix."