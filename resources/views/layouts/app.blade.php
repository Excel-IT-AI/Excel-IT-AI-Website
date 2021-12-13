<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>EXCEL IT AI</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description">
        <meta content="Themesbrand" name="author">
        {{-- <link rel="stylesheet" href="{{asset('assets/css/all.min.css')}}"> --}}
          <!-- google fonts css -->
     <link href="https://fonts.googleapis.com/css2?family=Sarala:wght@400;700&display=swap" rel="stylesheet">
      <!-- App favicon -->
      <link rel="shortcut icon" href="{{asset('assets\images\logo/PPP.jpg')}}">

    <!-- for about company -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mulish&display=swap" rel="stylesheet">

  <!-- fontawesome js file -->

  <script src="{{asset('assets/js/all.min.js')}}"></script>

  <!-- for trusted company -->
  {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> --}}

  <!-- Our servics -->
  {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> --}}

  <style>
      body{
          background:#fff !important;
      }
  </style>
    </head>
    {{-- /**data-sidebar="dark" */ --}}
    <body>


        <div id="app"></div>

    <!-- jquery cdn js file -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!-- bootstrap cdn js file -->
<script src="{{asset('assets/js/bootstrap.bundle.min.js')}}"></script>


 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
    {{-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script> --}}
    {{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
    integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
    crossorigin="anonymous"></script> --}}

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
     integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
     crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
     integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
     crossorigin="anonymous"></script>


    <!-- iso top js file -->
    {{-- <script src="{{asset('assets/js/isotope.pkgd.min.js')}}"></script> --}}
    {{-- <script src="{{asset('assets/js/isotope.pkgd.min.js')}}"></script> --}}

    <!-- fancybox js cdn-->
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script> --}}
    <!-- swiper js file -->
    {{-- <script src="{{asset('assets/js/swiper-bundle.min.js')}}"></script> --}}

    <script type="text/javascript"
    src="https://cdn.jsdelivr.net/gh/GianlucaChiarani/AutoFilter@0.2/autofilter.js"></script>
    <script src="{{asset('assets/js/owl.carousel.min.js')}}"></script>
    {{-- <script src="{{asset('assets/js/custom.js')}}"></script> --}}
    <!-- auto filter js  -->
    {{-- <script type="text/javascript"
    src="https://cdn.jsdelivr.net/gh/GianlucaChiarani/AutoFilter@0.2/autofilter.js"></script> --}}


    <!-- bg js -->
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r121/three.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/vanta@latest/dist/vanta.dots.min.js"></script> --}}
    <!-- client review -->

   @yield('content')
    <script defer src="{{asset('js\app.js')}}"></script>

    </body>

</html>
