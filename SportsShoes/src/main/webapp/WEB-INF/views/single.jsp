<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Sport A Ecommerce Category Flat Bootstarp Resposive Website Template | Home :: w3layouts</title>
<link href="resource/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="resource/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Sport Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!--//fonts-->
<link rel="stylesheet" href="resource/css/etalage.css">
<script src="resource/js/jquery.etalage.min.js"></script>
		<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>

</head>
<body> 
<!--header-->
	<%@include file = "header.jsp" %>
	<!---->	
	<div class="container">
<div class="single">
				<div class="col-md-9 top-in-single">
					<div class="col-md-5 single-top">	
						<ul id="etalage">
							<li>
								<a href="optionallink.html">
									<img class="etalage_thumb_image img-responsive" src="resource/images/si1.jpg" alt="" >
									<img class="etalage_source_image img-responsive" src="resource/images/s2.jpg" alt="" >
								</a>
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="resource/images/si2.jpg" alt="" >
								<img class="etalage_source_image img-responsive" src="resource/images/s3.jpg" alt="" >
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="resource/images/si.jpg" alt=""  >
								<img class="etalage_source_image img-responsive" src="resource/images/s1.jpg" alt="" >
							</li>
						    <li>
								<img class="etalage_thumb_image img-responsive" src="resource/images/si3.jpg"  alt="" >
								<img class="etalage_source_image img-responsive" src="resource/images/s4.jpg" alt="" >
							</li>
						</ul>

					</div>	
					<div class="col-md-7 single-top-in">
						<div class="single-para">
							<h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h4>
							<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>
							<div class="star">
								<ul>
									<li><i> </i></li>
									<li><i> </i></li>
									<li><i> </i></li>
									<li><i> </i></li>
									<li><i> </i></li>
								</ul>
								<div class="review">
									<a href="#"> 3 reviews </a>/
									<a href="#">  Write a review</a>
								</div>
							<div class="clearfix"> </div>
							</div>
							
								<label  class="add-to">$32.8</label>
							
							<div class="available">
								<h6>Available Options :</h6>
								<ul>
									
								<li>Size:<select>
									<option>Large</option>
									<option>Medium</option>
									<option>small</option>
									<option>Large</option>
									<option>small</option>
								</select></li>
								<li>Cost:
										<select>
										<option>U.S.Dollar</option>
										<option>Euro</option>
									</select></li>
							</ul>
						</div>
							
								<a href="#" class="cart ">More details</a>
							
						</div>
					</div>
				<div class="clearfix"> </div>
				<div class="product-top">
		<div class="col-md-4 grid-product-in">	
		<div class=" product-grid">	
			<a href="single"><img class="img-responsive " src="resource/images/sh2.png" alt=""></a>		
			<div class="shoe-in">
				<h6><a href="single">Lorem Ipsum is simply</a></h6>
				<label>$67.99</label>
				<a href="single" class="store">FIND A STORE</a>
			</div>
			
			<b class="plus-on">+</b>
		</div>	
		</div>
		<div class="col-md-4 grid-product-in">	
		<div class=" product-grid">	
			<a href="single.html"><img class="img-responsive " src="resource/images/pr1.png" alt=""></a>
			<div class="shoe-in">
				<h6><a href="single">Lorem Ipsum is simply</a></h6>
				<label>$67.99</label>
				<a href="single" class="store">FIND A STORE</a>
			</div>
		
			<b class="plus-on">+</b>
		</div>
		</div>
		<div class="col-md-4 grid-product-in">	
		<div class=" product-grid">	
			<a href="single.html"><img class="img-responsive " src="resource/images/pr.png" alt=""></a>
			<div class="shoe-in">
				<h6><a href="single">Lorem Ipsum is simply </a></h6>
				<label>$67.99</label>
				<a href="single" class="store">FIND A STORE</a>
			</div>
			
			<b class="plus-on">+</b>
		</div>
		</div>
	<div class="clearfix"> </div>
	</div>
				</div>
				<div class="col-md-3">
					<div class="single-bottom">
						<h4>Brands</h4>
						<ul>
						<li>
							<input type="checkbox"  id="brand" value="">
							<label for="brand"><span></span> Contrary belief</label>
						</li>
						<li>
							<input type="checkbox"  id="brand1" value="">
							<label for="brand1"><span></span> Lorem Ipsum</label>
						</li>
						<li>
							<input type="checkbox"  id="brand2" value="">
							<label for="brand2"><span></span> Fusce feugiat</label>
						</li>
						<li>
							<input type="checkbox"  id="brand3" value="">
							<label for="brand3"><span></span> Contrary belief</label>
						</li>
						<li>
							<input type="checkbox"  id="brand4" value="">
							<label for="brand4"><span></span>Injected humour</label>
						</li>
						</ul>
					</div>
					<div class="single-bottom">
						<h4>Colors</h4>
						<ul>
						<li>
							<input type="checkbox"  id="color" value="">
							<label for="color"><span></span> Red</label>
						</li>
						<li>
							<input type="checkbox"  id="color1" value="">
							<label for="color1"><span></span> Blue</label>
						</li>
						<li>
							<input type="checkbox"  id="color2" value="">
							<label for="color2"><span></span> Black</label>
						</li>
						<li>
							<input type="checkbox"  id="color3" value="">
							<label for="color3"><span></span> White</label>
						</li>
						<li>
							<input type="checkbox"  id="color4" value="">
							<label for="color4"><span></span>Green</label>
						</li>
						</ul>
					</div>
					<div class="single-bottom">
						<h4>Product Categories</h4>
							<div class="product-go">
								<img class="img-responsive fashion" src="resource/images/sh.png" alt="">
							<div class="grid-product">
								<a href="#" class="elit">Consectetuer adipiscing elit</a>
								<span class=" price-in"><small>$500.00</small> $400.00</span>
							</div>
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
								<img class="img-responsive fashion" src="resource/images/sh1.png" alt="">
							<div class="grid-product">
								<a href="#" class="elit">Consectetuer adipiscing elit</a>
								<span class=" price-in"><small>$500.00</small> $400.00</span>
							</div>
							<div class="clearfix"> </div>
							</div>
							<div class="product-go">
								<img class="img-responsive fashion" src="resource/images/sh2.png" alt="">
							<div class="grid-product">
								<a href="#" class="elit">Consectetuer adipiscing elit</a>
								<span class=" price-in"><small>$500.00</small> $400.00</span>
							</div>
							<div class="clearfix"> </div>
							</div>
				</div>
				</div>
				<div class="clearfix"> </div>		
		</div>
	</div>

	<!---->
<!--footer-->
	<%@include file = "footer.jsp" %>
</body>
</html>