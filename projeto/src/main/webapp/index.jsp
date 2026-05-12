<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>StudyIn</title>

    <link rel="stylesheet"
          href="css/style.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">

</head>

<body>

    <!-- CONTAINER PRINCIPAL -->
    <div class="container-main">

        <!-- HEADER -->
        <header class="header">

            <!-- LOGO -->
            <div class="logo">

                <img src="img/logo da barra.png"
                     alt="StudyIn Logo">

            </div>

            <!-- MENU -->
            <nav class="nav">

                <a href="#sobre">
                    Sobre nós
                </a>

                <a href="#">
                    Recursos
                </a>

                <a href="#">
                    Suporte
                </a>

                <!-- CADASTRO -->
                <a href="cadastro.jsp">

                    <button class="btn primary">

                        Cadastre-se

                    </button>

                </a>

                <!-- USUÁRIO -->
                <div class="user-icon">

                    <img src="img/user.png"
                         alt="Usuário">

                </div>

            </nav>

            <!-- MENU MOBILE -->
            <div class="menu-toggle"
                 onclick="toggleMenu()">

                ☰

            </div>

        </header>

        <!-- MOBILE MENU -->
        <div class="mobile-menu"
             id="mobileMenu">

            <a href="#">
                Sobre nós
            </a>

            <a href="#">
                Recursos
            </a>

            <a href="#">
                Suporte
            </a>

            <a href="cadastro.jsp">

                <button class="btn primary">

                    Cadastre-se

                </button>

            </a>

        </div>

        <!-- HERO -->
        <section class="hero">

            <!-- TEXTO -->
            <div class="hero-text">

                <h1>

                    Transforme tarefas em conquistas
                    e veja seu progresso evoluir cada vez

                    <span>
                        mais a cada dia
                    </span>

                </h1>

                <p>

                    O StudyIn tem tudo o que você precisa
                    para estudar melhor, manter o foco
                    e evoluir com leveza e consistência

                </p>

                <!-- BOTÕES -->
                <div class="buttons">

                    <a href="cadastro.jsp">

                        <button class="btn primary">

                            Cadastre-se já

                        </button>

                    </a>

                    <a href="login.jsp">

                        <button class="btn secondary">

                            Entrar

                        </button>

                    </a>

                </div>

            </div>

            <!-- IMAGEM -->
            <div class="hero-image">

                <img src="img/logo.png"
                     alt="Ilustração StudyIn">

            </div>

        </section>

        <!-- CARDS -->
        <div class="bottom-box">

            <!-- CARD 1 -->
            <div class="feature">

                <img src="img/livro.png"
                     alt="Livro">

                <h3>
                    Organize suas matérias
                </h3>

                <p>
                    Tenha tudo no lugar e encontre facilmente.
                </p>

            </div>

            <!-- CARD 2 -->
            <div class="feature">

                <img src="img/corte1.png"
                     alt="Foco">

                <h3>
                    Mantenha o foco
                </h3>

                <p>
                    Ferramentas feitas para aumentar sua concentração.
                </p>

            </div>

            <!-- CARD 3 -->
            <div class="feature">

                <img src="img/corte2.png"
                     alt="Progresso">

                <h3>
                    Acompanhe seu progresso
                </h3>

                <p>
                    Visualize sua evolução e celebre conquistas.
                </p>

            </div>

            <!-- CARD 4 -->
            <div class="feature">

                <img src="img/corte3.png"
                     alt="Objetivos">

                <h3>
                    Alcance seus objetivos
                </h3>

                <p>
                    Planos personalizados para ir mais longe.
                </p>

            </div>

        </div>

    </div>

    <!-- SCRIPT -->
    <script src="js/script.js"></script>
    
            <!-- SOBRE -->
        <section id="sobre" class="sobre-section">

            <!-- BLOCO 1 -->
            <div class="sobre-box">

                <!-- TEXTO -->
                <div class="sobre-text">

                    <h2>
                        SOBRE NÓS
                    </h2>

                    <p>
                        O StudyIn é um projeto desenvolvido com o objetivo de transformar a maneira como os estudantes organizam sua rotina, acompanham seu desempenho e evoluem nos estudos.
                    </p>

                </div>

                <!-- IMAGEM -->
                <div class="sobre-img">

                    <img src="img/sobre.png"
                         alt="Estudos">

                </div>

            </div>

            <!-- BLOCO 2 ZIG-ZAG -->
            <div class="sobre-box reverse">

                <!-- IMAGEM -->
                <div class="sobre-img">

                    <img src="img/estudos.png"
                         alt="Estudos">

                </div>

                <!-- TEXTO -->
                <div class="sobre-text">

                    <h2>
                        DE ESTUDANTE PARA ESTUDANTE
                    </h2>

                    <p>
                        O StudyIn foi desenvolvido por estudantes que entendem as dificuldades da rotina acadêmica. A plataforma foi criada para ajudar alunos a manterem foco, organização e motivação de forma simples e eficiente.
                    </p>

                </div>

            </div>

        </section>

</body>

</html>