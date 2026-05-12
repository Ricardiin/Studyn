<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Cadastro - StudyIn</title>

    <link rel="stylesheet" href="css/cadastro.css">

</head>

<body class="login-body">

    <div class="login-container">

        <!-- LADO ESQUERDO -->
        <div class="login-left">

            <img src="img/logo.png"
                 alt="StudyIn"
                 class="logo">

            <h1>Crie sua conta 📚</h1>

            <p class="subtitle">
                Comece agora sua jornada de estudos
                com mais foco e organização
            </p>

            <ul class="benefits">

                <li>✅ Organize suas matérias</li>

                <li>📅 Planeje sua rotina</li>

                <li>📊 Acompanhe seu progresso</li>

                <li>🎯 Alcance seus objetivos</li>

            </ul>

        </div>

        <!-- FORMULÁRIO -->
        <div class="login-box">

            <h2>Cadastro</h2>

            <p>
                Preencha os dados para criar sua conta
            </p>

            <!-- FORM -->
            <form action="CadastrarUsuario"
                  method="post">

                <!-- NOME -->
                <label>Nome completo:</label>

                <div class="input-group">

                    <img src="img/user.png">

                    <input type="text"
                           name="nome"
                           placeholder="Digite seu nome"
                           required>

                </div>

                <!-- EMAIL -->
                <label>E-mail:</label>

                <div class="input-group">

                    <img src="img/mail.png">

                    <input type="email"
                           name="email"
                           placeholder="Digite seu e-mail"
                           required>

                </div>

                <!-- SENHA -->
                <label>Senha:</label>

                <div class="input-group">

                    <img src="img/cadeado.png">

                    <input type="password"
                           name="senha"
                           id="senha"
                           placeholder="Crie uma senha"
                           required>

                    <img src="img/olho.png"
                         class="eye"
                         onclick="toggleSenha('senha')">

                </div>

                <!-- CONFIRMAR SENHA -->
                <label>Confirmar senha:</label>

                <div class="input-group">

                    <img src="img/cadeado.png">

                    <input type="password"
                           name="confirmarSenha"
                           id="confirmarSenha"
                           placeholder="Confirme sua senha"
                           required>

                    <img src="img/olho.png"
                         class="eye"
                         onclick="toggleSenha('confirmarSenha')">

                </div>

                <!-- BOTÃO -->
                <button type="submit"
                        class="btn primary full">

                    CRIAR CONTA

                </button>

            </form>

            <!-- DIVISOR -->
            <div class="divider">

                ou continue com

            </div>

            <!-- SOCIAL -->
            <div class="social">

                <button type="button">

                    <img src="img/google.png">

                    Google

                </button>

                <button type="button">

                    <img src="img/apple.png">

                    Apple

                </button>

            </div>

            <!-- LOGIN -->
            <p class="signup">

                Já possui uma conta?

                <a href="login.jsp">
                    Entrar
                </a>

            </p>

        </div>

    </div>

    <script>

        function toggleSenha(id) {

            const input =
                document.getElementById(id);

            input.type =
                input.type === "password"
                ? "text"
                : "password";
        }

    </script>

</body>

</html>