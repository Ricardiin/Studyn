<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String erro =
    request.getParameter("erro");

%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Login - StudyIn</title>

    <link rel="stylesheet"
          href="css/login.css">

</head>

<body class="login-body">

    <div class="login-container">

        <!-- LADO ESQUERDO -->
<div class="login-left">

    <!-- LOGO -->
    <img src="img/logo da barra.png"
         alt="StudyIn"
         class="logo-left">

    <!-- TITULO -->
    <h1 class="left-title">

        Transforme tarefas em
        conquistas e veja seu
        progresso evoluir cada vez

        <span>mais a cada dia</span>

    </h1>

    <!-- TEXTO -->
    <p class="left-description">

        O StudyIn tem tudo o que você precisa para
        estudar melhor, manter o foco e evoluir
        com leveza e consistência.

    </p>

    <!-- IMAGEM -->
    <img src="img/estudos.png"
         alt="Estudos"
         class="study-image">

</div>

        <!-- FORMULÁRIO -->
        <div class="login-box">

            <h2>
                Seja Bem-Vindo(a)!
            </h2>

            <p>
                Conecte-se para continuar seus estudos
            </p>

            <!-- ERRO LOGIN -->
            <% if(erro != null){ %>

                <p style="
                    color:red;
                    margin-bottom:15px;
                    font-size:14px;
                    font-weight:bold;
                ">

                    Email ou senha inválidos

                </p>

            <% } %>

            <!-- FORM -->
            <form action="LoginUsuario"
                  method="post">

                <!-- EMAIL -->
                <label>E-mail:</label>

                <div class="input-group">

                    <img src="img/mail.png"
                         alt="Email">

                    <input type="email"
                           name="email"
                           placeholder="Digite seu e-mail"
                           required>

                </div>

                <!-- SENHA -->
                <label>Senha:</label>

                <div class="input-group">

                    <img src="img/cadeado.png"
                         alt="Senha">

                    <input type="password"
                           id="senha"
                           name="senha"
                           placeholder="Digite sua senha"
                           required>

                    <img src="img/olho.png"
                         class="eye"
                         alt="Mostrar senha"
                         onclick="toggleSenha()">

                </div>

                <!-- ESQUECEU -->
                <a href="#"
                   class="forgot">

                    Esqueceu a senha?

                </a>

                <!-- BOTÃO -->
                <button type="submit"
                        class="btn primary full">

                    ENTRAR

                </button>

            </form>

            <!-- DIVISOR -->
            <div class="divider">

                ou continue com

            </div>

            <!-- SOCIAL -->
            <div class="social">

                <button type="button">

                    <img src="img/google.png"
                         alt="Google">

                    Google

                </button>

                <button type="button">

                    <img src="img/apple.png"
                         alt="Apple">

                    Apple

                </button>

            </div>

            <!-- CADASTRO -->
            <p class="signup">

                Não tem uma conta?

                <a href="cadastro.jsp">
                    Cadastre-se
                </a>

            </p>

        </div>

    </div>

    <script>

        function toggleSenha() {

            const input =
                document.getElementById("senha");

            input.type =
                input.type === "password"
                ? "text"
                : "password";
        }

    </script>

</body>

</html>