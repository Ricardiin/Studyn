<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String usuario =
    (String) session.getAttribute(
        "usuario"
    );

if(usuario == null){

    response.sendRedirect(
        "login.jsp"
    );

    return;
}

%>

<!DOCTYPE html>
<html lang="pt-BR">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Perfil - StudyIn</title>

    <link rel="stylesheet"
          href="css/perfil.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">

</head>

<body>

    <div class="perfil-container">

        <!-- BOX -->
        <div class="perfil-box">

            <h1>

                Complete seu perfil 🚀

            </h1>

            <p>

                Adicione suas informações
                para personalizar sua experiência

            </p>

            <!-- FORM -->
            <form action="SalvarPerfil"
                  method="post"
                  enctype="multipart/form-data">

                <!-- FOTO -->
                <div class="foto-area">

                    <img src="img/user.png"
                         class="preview"
                         id="previewFoto">

                    <input type="file"
                           name="foto"
                           id="foto"
                           accept="image/*"
                           onchange="previewImagem(event)">

                </div>

                <!-- NOME -->
                <label>

                    Nome:

                </label>

                <input type="text"
                       name="nome"
                       placeholder="Digite seu nome"
                       required>

                <!-- BIO -->
                <label>

                    Bio:

                </label>

                <textarea name="bio"
                          placeholder="Fale um pouco sobre você"></textarea>

                <!-- CURSO -->
                <label>

                    Curso:

                </label>

                <input type="text"
                       name="curso"
                       placeholder="Digite seu curso">

                <!-- TELEFONE -->
                <label>

                    Telefone:

                </label>

                <input type="text"
                       name="telefone"
                       placeholder="(11) 99999-9999">

                <!-- BOTÃO -->
                <button type="submit"
                        class="btn-salvar">

                    Salvar Perfil

                </button>

            </form>

        </div>

    </div>

    <!-- SCRIPT -->
    <script>

        function previewImagem(event){

            const imagem =
                document.getElementById(
                    "previewFoto"
                );

            imagem.src =
                URL.createObjectURL(
                    event.target.files[0]
                );
        }

    </script>

</body>

</html>