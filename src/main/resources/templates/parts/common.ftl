<#macro page>
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <title>springsite</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" href="/static/fonts">
        <style>
            @font-face {
                font-family: Corner_Cyr; /* Гарнитура шрифта */
                src: url(/fonts/Corner_Cyr.ttf); /* Путь к файлу со шрифтом */
            }
        </style>

        <!-- Required meta tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
              crossorigin="anonymous">
    </head>
    <body>
        <!-- Social Share Kit JS -->

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
                crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
                crossorigin="anonymous"></script>

        <div class="container mt-5" style="font-family: 'Corner_Cyr',serif">
            <#nested>
        </div>

    </body>
    <footer>
        <div class="text-center mt-8">
            <a href="https://github.com/UncleTolya/thesignboard"><img src="https://img.icons8.com/windows/32/000000/github.png" class="rounded" alt="icon"></a>
            <a href="http://t.me/myhlv"><img src="https://img.icons8.com/windows/32/000000/telegram-app.png" class="rounded" alt="icon"></a>
        </div>
        <div class="text-center" style="font-family: 'Courier New',serif">_developed by tolymhlv</div>
    </footer>
</html>
</#macro>