<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<% String APP_ROOT = request.getContextPath(); %>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width = device-width, initial-scale = 1">
	<title>Galsen Photo</title>
	<link rel="shortcut icon" href="https://www.pngmart.com/files/3/Star-PNG-Clipart.png" type="image/png">
	<!-- Bootstrap CDN down below --> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.css"/>
	<link rel="stylesheet" href="css/gallery.css">
</head>
<body>

	<!-- Navbar --> 
	<nav class="navbar navbar-default navbar-fixed-top"> 
		<div class="container">
			<div class="navbar-header"> 
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-nav-demo" aria-expanded="false">
					<span class="sr-only"> Toggle navigation </span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">
					<!-- <img src="https://www.pngmart.com/files/3/Star-PNG-Clipart.png" /> -->
					<span class="glyphicon glyphicon-fire" aria-hidden="true"></span> 
					Galsen Photo</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-nav-demo"> 
				<ul class="nav navbar-nav">
					<li><a href="#">About</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<%= APP_ROOT %>/user/create">Sign Up</a></li>
					<li><a href="<%= APP_ROOT %>/user/connect">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1><i class="fa fa-camera-retro"></i> My Image Gallary</h1>
			<p>Just a Gallary Full of Beautiful Images <span class="glyphicon glyphicon-th"></span></p>
		</div>
	</div>
	
<!-- 	// -->
<!-- <section>
  <div class="container gal-container">
    <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#1">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/1.jpg">
        </a>
        <div class="modal fade" id="1" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/1.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the first one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#2">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/2.jpg">
        </a>
        <div class="modal fade" id="2" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/2.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the second one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#3">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/3.jpg">
        </a>
        <div class="modal fade" id="3" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/3.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the third one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#4">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/4.jpg">
        </a>
        <div class="modal fade" id="4" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/4.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the fourth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#5">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/5.jpg">
        </a>
        <div class="modal fade" id="5" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/5.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the fifth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#6">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/6.jpg">
        </a>
        <div class="modal fade" id="6" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/6.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the sixth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#7">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/7.jpg">
        </a>
        <div class="modal fade" id="7" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/7.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the seventh one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#8">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/8.jpg">
        </a>
        <div class="modal fade" id="8" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/8.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the eighth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#9">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/9.jpg">
        </a>
        <div class="modal fade" id="9" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/9.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the ninth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#10">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/10.jpg">
        </a>
        <div class="modal fade" id="10" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/10.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the tenth one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#11">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/11.jpg">
        </a>
        <div class="modal fade" id="11" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/11.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the leventh one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#12">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/12.jpg">
        </a>
        <div class="modal fade" id="12" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/12.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 12th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#13">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/13.jpg">
        </a>
        <div class="modal fade" id="13" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/13.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 13th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#14">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/14.jpg">
        </a>
        <div class="modal fade" id="14" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/14.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 14th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#15">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/15.jpg">
        </a>
        <div class="modal fade" id="15" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/15.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 15th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
      <div class="box">
        <a href="#" data-toggle="modal" data-target="#16">
          <img src="http://nabeel.co.in/files/bootsnipp/gallery/16.jpg">
        </a>
        <div class="modal fade" id="16" tabindex="-1" role="dialog">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
              <div class="modal-body">
                <img src="http://nabeel.co.in/files/bootsnipp/gallery/16.jpg">
              </div>
                <div class="col-md-12 description">
                  <h4>This is the 16th one on my Gallery</h4>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<footer>
    <div class="container">
        <div class="col-md-10 col-md-offset-1 text-center">
            
            <h6>Coded with <i class="fa fa-heart red"></i> by <a href="http://www.nabeel.co.in" target="_blank">Nabeel Kondotty</a></h6>
        </div>   
    </div>
</footer>
 --><!-- 	// -->
<section class="portfolio" id="portfolio">
	<div class="container-fluid">
		<div class="row">
			<div align="center">
				<a class="filter-button" data-filter="all">All</a>
				<a class="filter-button" data-filter="Designing">Designing</a>
				<a class="filter-button" data-filter="Development">Development</a>
				<a class="filter-button" data-filter="Graphics">Graphics</a>
				<a class="filter-button" data-filter="Mechanic">F1 Mobile</a>
			</div>
			
			<br/>

            <div class="gallery_product col-sm-3 col-xs-6 filter Designing">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=122">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=122" />
                    <div class='img-info'>
                        <h4>Image Title 1</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Development">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=526">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=526" />
                    <div class='img-info'>
                        <h4>Image Title 2</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Graphics">
                 <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=626">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=626" />
                    <div class='img-info'>
                        <h4>Image Title 3</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Designing">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=626">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=626" />
                    <div class='img-info'>
                        <h4>Image Title 4</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Development">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=486">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=486" />
                    <div class='img-info'>
                        <h4>Image Title 5</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Graphics">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=846">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=846" />
                    <div class='img-info'>
                        <h4>Image Title 6</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Designing">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=1066">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=1066" />
                    <div class='img-info'>
                        <h4>Image Title 7</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Development">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=506">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=506" />
                    <div class='img-info'>
                        <h4>Image Title 8</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Graphics">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=1026">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=1026" />
                    <div class='img-info'>
                        <h4>Image Title 9</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Designing">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=1077">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=1077" />
                    <div class='img-info'>
                        <h4>Image Title 10</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Development">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=102">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=102" />
                    <div class='img-info'>
                        <h4>Image Title 11</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>

            <div class="gallery_product col-sm-3 col-xs-6 filter Graphics">
                <a class="fancybox" rel="ligthbox" href="https://picsum.photos/400/250?image=106">
                    <img class="img-responsive" alt="" src="https://picsum.photos/400/250?image=106" />
                    <div class='img-info'>
                        <h4>Image Title 12</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>
			
			<div class="gallery_product col-sm-3 col-xs-6 filter Mechanic">
                <a class="fancybox" rel="ligthbox" href="https://f1only.fr/wp-content/uploads/2021/07/image-7.jpg">
                    <img class="img-responsive" alt="" src="https://f1only.fr/wp-content/uploads/2021/07/image-7.jpg" />
                    <div class='img-info'>
                        <h4>Image Title 12</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>
            
            <div class="gallery_product col-sm-3 col-xs-6 filter Mechanic">
                <a class="fancybox" rel="ligthbox" href="https://i.eurosport.com/2019/12/01/2728159-56385190-2560-1440.jpg">
                    <img class="img-responsive" alt="" src="https://i.eurosport.com/2019/12/01/2728159-56385190-2560-1440.jpg" />
                    <div class='img-info'>
                        <h4>Image Title 12</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>
            
            <div class="gallery_product col-sm-3 col-xs-6 filter Mechanic">
                <a class="fancybox" rel="ligthbox" href="https://www.formula1.com/content/dam/fom-website/manual/Misc/2021manual/2022-car-with-2021-liveries/F1_2022_McLaren_3_4_Left..jpg.transform/9col/image.jpg">
                    <img class="img-responsive" alt="" src="https://www.formula1.com/content/dam/fom-website/manual/Misc/2021manual/2022-car-with-2021-liveries/F1_2022_McLaren_3_4_Left..jpg.transform/9col/image.jpg" />
                    <div class='img-info'>
                        <h4>Image Title 12</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>
            
            <div class="gallery_product col-sm-3 col-xs-6 filter Mechanic">
                <a class="fancybox" rel="ligthbox" href="https://mir-s3-cdn-cf.behance.net/project_modules/fs/71832b98840293.5ee5440c97543.jpg">
                    <img class="img-responsive" alt="" src="https://mir-s3-cdn-cf.behance.net/project_modules/fs/71832b98840293.5ee5440c97543.jpg" />
                    <div class='img-info'>
                        <h4>Image Title 12</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                    </div>
                </a>
            </div>
		</div>
	</div>
</section>


	<!-- JQuery CDN --> 
	<script src="http://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.2.5/jquery.fancybox.min.js"></script>
	<script src="js/gallery.js"></script>
	<!-- JavaScript Bootstrap CDN --> 
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html>
