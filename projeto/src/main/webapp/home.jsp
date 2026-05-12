<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%

String usuario =
(String) session.getAttribute("usuario");

if(usuario == null){

    response.sendRedirect("login.jsp");
    return;
}

%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

<meta charset="UTF-8">

<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>Home - StudyIn</title>

<link rel="stylesheet"
href="css/home.css">

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
rel="stylesheet">

</head>

<body>

<div class="container-main">

    <!-- HEADER -->
    <header class="header">

        <!-- LOGO -->
        <div class="logo">

            <img src="img/logo da barra.png"
            alt="StudyIn Logo">

        </div>

        <!-- MENU WEB -->
        <nav class="nav">

            <a href="#">
                Sobre nós
            </a>

            <a href="#">
                Recursos
            </a>

            <a href="#">
                Suporte
            </a>

            <!-- FOTO PERFIL -->
            <div class="user-menu">

                <div class="user-icon"
                onclick="toggleUserMenu()">

                    <img src="MostrarFoto?email=<%= usuario %>"
                    alt="Usuário">

                </div>

                <!-- DROPDOWN WEB -->
                <div class="dropdown-menu"
                id="dropdownMenu">

                    <p class="user-email">

                        Logado como:
                        <br>

                        <span class="welcome-user">

                            <%= usuario %>

                        </span>

                    </p>

                    <a href="/projeto/perfil.jsp">
                        Editar Perfil
                    </a>

                    <a href="#">
                        Configurações
                    </a>

                    <a href="LogoutUsuario">
                        Sair
                    </a>

                </div>

            </div>

        </nav>

        <!-- BOTÃO MOBILE -->
        <div class="menu-toggle"
        onclick="toggleMenu()">

            ☰

        </div>

    </header>

    <!-- MENU MOBILE -->
<div class="mobile-menu"
id="mobileMenu">

    <!-- BOTÃO FECHAR -->
    <div class="close-menu"
    onclick="toggleMenu()">

        ✕

    </div>

    <a href="#">
        Sobre nós
    </a>

    <a href="#">
        Recursos
    </a>

    <a href="#">
        Suporte
    </a>

    <a href="/projeto/perfil.jsp">
        Editar Perfil
    </a>

    <a href="#">
        Configurações
    </a>

    <a href="LogoutUsuario">
        Sair
    </a>

</div>

    <!-- HERO -->
    <section class="hero">

        <div class="hero-text">

            <h1>

                Bem-vindo ao StudyIn 🚀

                <br><br>

                <span>

                    <%= usuario %>

                </span>

            </h1>

            <p>

                Continue organizando seus estudos
                e acompanhando sua evolução
                todos os dias.

            </p>

        </div>

        <div class="hero-image">

            <img src="img/logo.png"
            alt="StudyIn">

        </div>

    </section>

    <!-- CARDS -->
    <div class="bottom-box">

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

<script>

/* MENU MOBILE */
function toggleMenu(){

    const menu =
    document.getElementById(
    "mobileMenu"
    );

    menu.classList.toggle(
    "active"
    );
}

/* MENU WEB FOTO */
function toggleUserMenu(){

    if(window.innerWidth <= 768){
        return;
    }

    const menu =
    document.getElementById(
    "dropdownMenu"
    );

    menu.classList.toggle(
    "show"
    );
}

/* FECHAR MENU */
window.onclick = function(event){

    if(!event.target.closest('.user-menu')){

        const menu =
        document.getElementById(
        "dropdownMenu"
        );

        if(menu.classList.contains("show")){

            menu.classList.remove(
            "show"
            );
        }
    }
}

</script>

</body>
</html>