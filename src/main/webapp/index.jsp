<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LUXE Store</title>
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@300;400;600&family=DM+Sans:wght@300;400;500&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box}
body{font-family:'DM Sans',sans-serif;background:#0a0a0a;color:#f0ede8;min-height:100vh}
nav{display:flex;justify-content:space-between;align-items:center;padding:20px 40px;border-bottom:1px solid #222;position:sticky;top:0;background:#0a0a0a;z-index:100}
.logo{font-family:'Cormorant Garamond',serif;font-size:28px;font-weight:300;letter-spacing:6px;color:#c9a96e}
.nav-links{display:flex;gap:30px;list-style:none}
.nav-links a{color:#999;text-decoration:none;font-size:13px;letter-spacing:2px;text-transform:uppercase;transition:color .3s}
.nav-links a:hover{color:#c9a96e}
.cart-btn{background:#c9a96e;color:#0a0a0a;border:none;padding:10px 20px;font-size:12px;letter-spacing:2px;cursor:pointer;font-family:'DM Sans',sans-serif;font-weight:500}
.hero{display:grid;grid-template-columns:1fr 1fr;min-height:80vh;overflow:hidden}
.hero-text{display:flex;flex-direction:column;justify-content:center;padding:80px;background:linear-gradient(135deg,#0a0a0a 0%,#111 100%)}
.hero-label{font-size:11px;letter-spacing:4px;color:#c9a96e;text-transform:uppercase;margin-bottom:20px}
.hero-title{font-family:'Cormorant Garamond',serif;font-size:72px;font-weight:300;line-height:1.1;margin-bottom:30px}
.hero-title span{color:#c9a96e;font-style:italic}
.hero-desc{color:#888;line-height:1.8;margin-bottom:40px;font-size:14px;max-width:400px}
.hero-btns{display:flex;gap:15px}
.btn-primary{background:#c9a96e;color:#0a0a0a;border:none;padding:16px 40px;font-size:12px;letter-spacing:3px;cursor:pointer;text-transform:uppercase;font-family:'DM Sans',sans-serif;transition:all .3s}
.btn-primary:hover{background:#b8935a}
.btn-secondary{background:transparent;color:#f0ede8;border:1px solid #444;padding:16px 40px;font-size:12px;letter-spacing:3px;cursor:pointer;text-transform:uppercase;font-family:'DM Sans',sans-serif;transition:all .3s}
.btn-secondary:hover{border-color:#c9a96e;color:#c9a96e}
.hero-image{background:linear-gradient(135deg,#1a1a1a,#2a2520);display:flex;align-items:center;justify-content:center;position:relative;overflow:hidden}
.hero-image::before{content:'';position:absolute;width:300px;height:300px;background:radial-gradient(circle,#c9a96e22,transparent);border-radius:50%}
.hero-img-text{font-family:'Cormorant Garamond',serif;font-size:120px;font-weight:300;color:#ffffff08;position:absolute}
.hero-product{width:200px;height:280px;background:linear-gradient(135deg,#2a2520,#3a342c);border:1px solid #333;display:flex;align-items:center;justify-content:center;position:relative;z-index:1;font-size:80px}
.hero-product::after{content:'NEW ARRIVAL';position:absolute;top:-12px;right:-12px;background:#c9a96e;color:#0a0a0a;font-size:9px;letter-spacing:2px;padding:6px 10px;font-weight:500}
.section{padding:80px 40px}
.section-header{display:flex;justify-content:space-between;align-items:flex-end;margin-bottom:50px}
.section-title{font-family:'Cormorant Garamond',serif;font-size:48px;font-weight:300}
.section-title span{color:#c9a96e;font-style:italic}
.view-all{color:#c9a96e;text-decoration:none;font-size:12px;letter-spacing:2px;border-bottom:1px solid #c9a96e;padding-bottom:2px}
.products{display:grid;grid-template-columns:repeat(4,1fr);gap:25px}
.product-card{background:#111;border:1px solid #1a1a1a;overflow:hidden;transition:all .4s;cursor:pointer;position:relative}
.product-card:hover{transform:translateY(-8px);border-color:#333}
.product-card:hover .product-actions{opacity:1;transform:translateY(0)}
.product-img{height:280px;display:flex;align-items:center;justify-content:center;background:linear-gradient(135deg,#161616,#1e1e1e);position:relative;overflow:hidden;font-size:70px}
.product-badge{position:absolute;top:15px;left:15px;background:#c9a96e;color:#0a0a0a;font-size:9px;letter-spacing:2px;padding:5px 10px;font-weight:500}
.product-actions{position:absolute;bottom:0;left:0;right:0;background:#c9a96e;padding:14px;display:flex;justify-content:center;opacity:0;transform:translateY(10px);transition:all .3s}
.product-actions span{color:#0a0a0a;font-size:11px;letter-spacing:2px;text-transform:uppercase;font-weight:500}
.product-info{padding:20px}
.product-category{font-size:10px;letter-spacing:3px;color:#c9a96e;text-transform:uppercase;margin-bottom:8px}
.product-name{font-family:'Cormorant Garamond',serif;font-size:20px;font-weight:400;margin-bottom:8px}
.product-price{display:flex;gap:12px;align-items:center}
.price{font-size:18px;color:#f0ede8;font-weight:500}
.price-old{font-size:14px;color:#555;text-decoration:line-through}
.banner{margin:0 40px 80px;background:linear-gradient(135deg,#1a150e,#2a2015);border:1px solid #333;padding:60px;display:flex;justify-content:space-between;align-items:center}
.banner-text h2{font-family:'Cormorant Garamond',serif;font-size:52px;font-weight:300;margin-bottom:15px}
.banner-text h2 span{color:#c9a96e;font-style:italic}
.banner-text p{color:#888;font-size:14px;max-width:400px;line-height:1.8}
.offer-circle{width:150px;height:150px;border:1px solid #c9a96e;border-radius:50%;display:flex;flex-direction:column;align-items:center;justify-content:center}
.offer-pct{font-family:'Cormorant Garamond',serif;font-size:48px;color:#c9a96e;font-weight:300;line-height:1}
.offer-off{font-size:11px;letter-spacing:3px;color:#c9a96e}
footer{background:#060606;border-top:1px solid #1a1a1a;padding:60px 40px 30px;display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px}
.footer-brand p{color:#555;font-size:13px;line-height:1.8;max-width:250px;margin-top:15px}
.footer-col h4{font-size:11px;letter-spacing:3px;color:#c9a96e;text-transform:uppercase;margin-bottom:20px}
.footer-col ul{list-style:none}
.footer-col ul li{margin-bottom:10px}
.footer-col ul li a{color:#555;text-decoration:none;font-size:13px;transition:color .3s}
.footer-col ul li a:hover{color:#c9a96e}
.footer-bottom{background:#060606;border-top:1px solid #1a1a1a;padding:20px 40px;display:flex;justify-content:space-between}
.footer-bottom p{color:#444;font-size:12px}
</style>
</head>
<body>
<nav>
  <div class="logo">LUX</div>
  <ul class="nav-links">
    <li><a href="#">Home</a></li>
    <li><a href="#">Shop</a></li>
    <li><a href="#">Collections</a></li>
    <li><a href="#">About</a></li>
  </ul>
  <button class="cart-btn">Cart (0)</button>
</nav>

<div class="hero">
  <div class="hero-text">
    <div class="hero-label">New Collection 2025</div>
    <h1 class="hero-title">Redefine<br>Your <span>Style</span></h1>
    <p class="hero-desc">Discover our curated collection of premium fashion and lifestyle products crafted for the discerning individual.</p>
    <div class="hero-btns">
      <button class="btn-primary">Shop Now</button>
      <button class="btn-secondary">Explore</button>
    </div>
  </div>
  <div class="hero-image">
    <div class="hero-img-text">L</div>
    <div class="hero-product">👜</div>
  </div>
</div>

<div class="section">
  <div class="section-header">
    <h2 class="section-title">Featured <span>Products</span></h2>
    <a href="#" class="view-all">View All</a>
  </div>
  <div class="products">
    <div class="product-card">
      <div class="product-img">👟<div class="product-badge">NEW</div><div class="product-actions"><span>Add to Cart</span></div></div>
      <div class="product-info"><div class="product-category">Footwear</div><div class="product-name">Premium Sneakers</div><div class="product-price"><span class="price">&#8377;4,999</span><span class="price-old">&#8377;7,999</span></div></div>
    </div>
    <div class="product-card">
      <div class="product-img">👜<div class="product-badge">HOT</div><div class="product-actions"><span>Add to Cart</span></div></div>
      <div class="product-info"><div class="product-category">Accessories</div><div class="product-name">Luxury Handbag</div><div class="product-price"><span class="price">&#8377;12,999</span><span class="price-old">&#8377;18,999</span></div></div>
    </div>
    <div class="product-card">
      <div class="product-img">⌚<div class="product-actions"><span>Add to Cart</span></div></div>
      <div class="product-info"><div class="product-category">Watches</div><div class="product-name">Classic Timepiece</div><div class="product-price"><span class="price">&#8377;8,499</span><span class="price-old">&#8377;11,999</span></div></div>
    </div>
    <div class="product-card">
      <div class="product-img">🕶️<div class="product-badge">SALE</div><div class="product-actions"><span>Add to Cart</span></div></div>
      <div class="product-info"><div class="product-category">Eyewear</div><div class="product-name">Designer Sunglasses</div><div class="product-price"><span class="price">&#8377;3,299</span><span class="price-old">&#8377;5,499</span></div></div>
    </div>
  </div>
</div>

<div class="banner">
  <div class="banner-text">
    <h2>Season End <span>Sale</span></h2>
    <p>Limited time offer on our premium collections. Shop now before stocks run out.</p>
    <button class="btn-primary" style="margin-top:30px">Shop the Sale</button>
  </div>
  <div class="banner-offer">
    <div class="offer-circle">
      <div class="offer-pct">50%</div>
      <div class="offer-off">OFF</div>
    </div>
  </div>
</div>

<footer>
  <div class="footer-brand">
    <div class="logo">LUXE</div>
    <p>Premium fashion and lifestyle products for the modern individual.</p>
  </div>
  <div class="footer-col"><h4>Shop</h4><ul><li><a href="#">New Arrivals</a></li><li><a href="#">Best Sellers</a></li><li><a href="#">Sale</a></li></ul></div>
  <div class="footer-col"><h4>Help</h4><ul><li><a href="#">FAQ</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
  <div class="footer-col"><h4>Company</h4><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Contact</a></li></ul></div>
</footer>
<div class="footer-bottom"><p>&#169; 2025 LUXE Store. All rights reserved.</p><p>Made with &#10084;</p></div>
</body>
</html>
