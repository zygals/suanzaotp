<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>{$seo->title}</title>
    <meta name="keywords" content="{$seo->keywords}">
    <meta name="description" content="{$seo->description}">
    <link rel="Shortcut Icon" href="__STATIC__img/favicon.ico">
    <link rel="stylesheet" type="text/css" href="__STATIC__css/reset.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__css/index.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__css/homepage.css"/>
    <link rel="stylesheet" href="__STATIC__css/swiper-3.4.2.min.css">
    <script src="__STATIC__js/jquery-2.0.3.js"></script>
    <script src="__STATIC__js/swiper-3.4.2.jquery.min.js"></script>
</head>
<body>
<div class="wrapper">
    {include file="layout/nav"}

    {__CONTENT__}


  {include file="layout/footer"}
</div>

</body>



</html>