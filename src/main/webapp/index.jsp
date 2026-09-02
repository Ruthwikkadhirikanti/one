<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>NexusShop — Modern Store</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root {
  --bg:#f7f8fb; --surface:#fff; --surface-2:#f1f4f8; --text:#172033;
  --muted:#687386; --primary:#18263d; --accent:#2563eb; --border:#e5e9f0;
  --success:#16a34a; --danger:#ef4444; --shadow:0 10px 30px rgba(23,32,51,.08);
  --radius:16px; --container:1240px;
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{margin:0;font-family:Inter,system-ui,sans-serif;background:var(--bg);color:var(--text);line-height:1.5}
body.no-scroll{overflow:hidden}
button,input,select{font:inherit}
button{cursor:pointer}
a{color:inherit;text-decoration:none}
.container{width:min(100% - 32px,var(--container));margin:auto}

header{position:sticky;top:0;z-index:100;background:rgba(255,255,255,.95);backdrop-filter:blur(14px);border-bottom:1px solid var(--border)}
.header-main{min-height:72px;display:flex;align-items:center;gap:20px}
.brand{font:700 22px Poppins,sans-serif;white-space:nowrap}
.brand span{color:var(--accent)}
.desktop-nav{display:flex;gap:4px;margin-right:auto}
.nav-link{padding:10px 12px;border-radius:10px;font-weight:600;color:#4b5565;border:0;background:transparent}
.nav-link:hover,.nav-link.active{background:#eef4ff;color:var(--accent)}
.search{display:flex;align-items:center;width:min(360px,30vw);height:42px;background:var(--surface-2);border:1px solid transparent;border-radius:12px;padding:0 10px;gap:8px}
.search:focus-within{background:#fff;border-color:#b9cdf8;box-shadow:0 0 0 3px #eaf1ff}
.search input{width:100%;border:0;outline:0;background:transparent;color:var(--text)}
.search button,.icon-btn{border:0;background:transparent;color:#435067;width:38px;height:38px;border-radius:10px}
.search button:hover,.icon-btn:hover{background:var(--surface-2);color:var(--accent)}
.header-actions{display:flex;align-items:center;gap:3px}
.cart-btn{position:relative}
.cart-count{position:absolute;top:1px;right:0;min-width:18px;height:18px;padding:0 5px;border-radius:99px;background:var(--accent);color:#fff;font-size:10px;font-weight:700;display:grid;place-items:center}
.mobile-toggle{display:none;border:0;background:transparent;width:40px;height:40px;font-size:19px}

.hero{margin-top:22px;border-radius:24px;min-height:450px;padding:64px;display:flex;align-items:center;color:#fff;overflow:hidden;background:linear-gradient(90deg,rgba(9,18,35,.86),rgba(9,18,35,.38)),url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85') center/cover}
.hero-content{max-width:680px}
.eyebrow{display:inline-flex;align-items:center;gap:7px;background:rgba(255,255,255,.12);border:1px solid rgba(255,255,255,.2);padding:7px 11px;border-radius:99px;font-size:13px;font-weight:700;margin-bottom:15px}
.hero h1{font:700 clamp(34px,5vw,58px)/1.05 Poppins,sans-serif;margin:0 0 18px;letter-spacing:-1.5px}
.hero p{font-size:17px;color:#e8edf5;max-width:600px;margin:0 0 28px}
.actions{display:flex;gap:12px;flex-wrap:wrap}
.btn{border:0;border-radius:11px;padding:12px 18px;font-weight:700;display:inline-flex;align-items:center;justify-content:center;gap:9px;transition:.2s}
.btn:hover{transform:translateY(-1px)}
.btn-primary{background:var(--accent);color:#fff}
.btn-primary:hover{background:#1d4ed8}
.btn-light{background:#fff;color:var(--primary)}
.btn-outline{background:#fff;border:1px solid var(--border);color:var(--text)}
.btn-outline:hover{border-color:#b9cdf8;background:#f5f8ff}
.btn:disabled{opacity:.55;cursor:not-allowed;transform:none}

.section{padding:62px 0 0}
.section-head{display:flex;align-items:end;justify-content:space-between;gap:20px;margin-bottom:22px}
.section-head h2{font:700 26px Poppins;margin:0 0 5px}
.section-head p{margin:0;color:var(--muted)}
.categories{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
.cat-card{border:1px solid var(--border);background:#fff;border-radius:15px;padding:22px 12px;text-align:center;transition:.2s;box-shadow:0 4px 15px rgba(23,32,51,.03)}
.cat-card:hover,.cat-card.selected{border-color:#b9cdf8;background:#f7faff;transform:translateY(-3px)}
.cat-icon{width:52px;height:52px;margin:0 auto 12px;border-radius:14px;background:#edf4ff;color:var(--accent);display:grid;place-items:center;font-size:21px}
.cat-card h3{font-size:14px;margin:0 0 3px}
.cat-card small{color:var(--muted)}

.toolbar{display:flex;justify-content:space-between;align-items:center;gap:12px;margin-bottom:18px;flex-wrap:wrap}
.results{color:var(--muted);font-size:14px}
.select{border:1px solid var(--border);background:#fff;border-radius:10px;padding:9px 12px;color:var(--text);outline:none}

.products{display:grid;grid-template-columns:repeat(4,1fr);gap:18px}
.product{background:#fff;border:1px solid var(--border);border-radius:16px;overflow:hidden;position:relative;transition:.2s;display:flex;flex-direction:column}
.product:hover{transform:translateY(-4px);box-shadow:var(--shadow)}
.product-image{position:relative;background:#f4f6f8;aspect-ratio:1/1;overflow:hidden}
.product-image img{width:100%;height:100%;object-fit:cover;display:block;transition:.3s}
.product:hover .product-image img{transform:scale(1.035)}
.badge{position:absolute;left:12px;top:12px;padding:5px 8px;border-radius:7px;background:var(--success);color:#fff;font-size:11px;font-weight:800;z-index:1}
.badge.sale{background:var(--danger)}
.wish-btn{position:absolute;right:12px;top:12px;width:36px;height:36px;border:0;border-radius:50%;background:rgba(255,255,255,.92);color:#536074;box-shadow:0 3px 12px rgba(0,0,0,.08);z-index:1}
.wish-btn.active{color:var(--danger)}
.product-body{padding:16px;display:flex;flex-direction:column;gap:8px;flex:1}
.product-category{font-size:12px;color:var(--muted);text-transform:capitalize}
.product h3{font-size:15px;margin:0;line-height:1.35}
.rating{font-size:12px;color:#f59e0b}
.rating span{color:var(--muted);margin-left:3px}
.price-row{display:flex;align-items:center;justify-content:space-between;gap:8px;margin-top:auto;padding-top:5px}
.price{font-size:18px;font-weight:800}
.old-price{color:#98a1af;text-decoration:line-through;font-size:12px;margin-left:5px}
.add-btn{width:100%;margin-top:4px;border:0;border-radius:10px;padding:10px;background:var(--primary);color:#fff;font-weight:700}
.add-btn:hover{background:#243653}
.empty{grid-column:1/-1;text-align:center;padding:45px;background:#fff;border:1px dashed var(--border);border-radius:16px;color:var(--muted)}

.deal{margin-top:62px;background:var(--primary);color:#fff;border-radius:22px;overflow:hidden;display:grid;grid-template-columns:1fr 1fr}
.deal-image{min-height:380px;background:url('https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=85') center/cover}
.deal-content{padding:48px;display:flex;flex-direction:column;justify-content:center}
.deal-content .eyebrow{background:rgba(255,255,255,.1)}
.deal h2{font:700 34px Poppins;margin:0 0 10px}
.deal p{color:#c8d1df}
.timer{display:flex;gap:9px;margin:20px 0}
.time-box{min-width:66px;padding:10px 7px;text-align:center;border-radius:10px;background:rgba(255,255,255,.1)}
.time-box strong{font-size:22px;display:block}
.time-box small{color:#bdc8d8}

.testimonials{display:grid;grid-template-columns:repeat(2,1fr);gap:18px}
.testimonial{background:#fff;border:1px solid var(--border);border-radius:16px;padding:22px}
.quote{font-size:16px;margin:13px 0 20px;color:#344054}
.customer{display:flex;align-items:center;gap:10px}
.customer img{width:42px;height:42px;border-radius:50%;object-fit:cover}
.customer strong{display:block;font-size:14px}
.customer small{display:block;color:var(--muted)}

.newsletter{margin:62px 0;background:linear-gradient(135deg,#18263d,#24456d);color:#fff;border-radius:20px;padding:42px;text-align:center}
.newsletter h2{font:700 28px Poppins;margin:0 0 7px}
.newsletter p{color:#d7dfeb;margin:0 0 20px}
.newsletter form{display:flex;justify-content:center;gap:9px;flex-wrap:wrap}
.newsletter input{width:min(380px,100%);padding:13px 15px;border:0;border-radius:10px;outline:0}
.newsletter-msg{font-size:13px;margin-top:10px;min-height:20px}

footer{background:#fff;border-top:1px solid var(--border);padding:40px 0;margin-top:20px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr;gap:35px}
.footer-title{font-weight:800;margin-bottom:10px}
footer p,footer a{color:var(--muted);font-size:14px}
footer a:hover{color:var(--accent)}
.socials{display:flex;gap:7px;margin-top:16px}
.socials a{width:36px;height:36px;border:1px solid var(--border);border-radius:10px;display:grid;place-items:center}
.copyright{border-top:1px solid var(--border);margin-top:28px;padding-top:18px;text-align:center;color:var(--muted);font-size:12px}

.overlay{position:fixed;inset:0;background:rgba(10,18,30,.48);z-index:200;opacity:0;pointer-events:none;transition:.2s}
.overlay.open{opacity:1;pointer-events:auto}
.drawer{position:absolute;right:0;top:0;height:100%;width:min(430px,100%);background:#fff;transform:translateX(100%);transition:.25s;display:flex;flex-direction:column}
.overlay.open .drawer{transform:translateX(0)}
.drawer-head{padding:20px;border-bottom:1px solid var(--border);display:flex;justify-content:space-between;align-items:center}
.drawer-head h2{margin:0;font:700 21px Poppins}
.close{border:0;background:var(--surface-2);width:36px;height:36px;border-radius:9px}
.cart-items{padding:18px;overflow:auto;flex:1}
.cart-item{display:grid;grid-template-columns:64px 1fr auto;gap:11px;padding:13px 0;border-bottom:1px solid var(--border);align-items:center}
.cart-item img{width:64px;height:64px;border-radius:10px;object-fit:cover}
.cart-item h4{font-size:13px;margin:0 0 5px}
.cart-item .qty{display:flex;align-items:center;gap:7px;margin-top:7px}
.qty button{border:1px solid var(--border);background:#fff;border-radius:6px;width:25px;height:25px}
.remove{border:0;background:transparent;color:var(--muted)}
.cart-footer{padding:18px;border-top:1px solid var(--border)}
.total{display:flex;justify-content:space-between;font-weight:800;font-size:18px;margin-bottom:13px}
.full{width:100%}
.empty-cart{text-align:center;padding:70px 20px;color:var(--muted)}
.toast{position:fixed;left:50%;bottom:24px;transform:translate(-50%,20px);background:#172033;color:#fff;padding:11px 16px;border-radius:10px;z-index:400;opacity:0;pointer-events:none;transition:.2s;font-size:13px}

@media(max-width:1050px){
  .desktop-nav{display:none}.mobile-toggle{display:block}
  .search{width:min(320px,40vw)}.categories{grid-template-columns:repeat(3,1fr)}
  .products{grid-template-columns:repeat(3,1fr)}
}
@media(max-width:760px){
  .container{width:min(100% - 24px,var(--container))}
  .header-main{gap:8px}.brand{font-size:19px}
  .search{order:4;width:100%;margin:0 0 12px}
  header .container{flex-wrap:wrap}.header-actions{margin-left:auto}
  .hero{margin-top:12px;padding:38px 24px;min-height:430px}
  .hero h1{font-size:37px}.section{padding-top:45px}
  .categories,.products,.testimonials{grid-template-columns:repeat(2,1fr)}
  .deal{grid-template-columns:1fr}.deal-image{min-height:230px}
  .deal-content{padding:30px 24px}.footer-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:500px){
  .header-actions .account,.header-actions .wishlist{display:none}
  .hero h1{font-size:31px}.hero p{font-size:15px}
  .categories,.products,.testimonials{grid-template-columns:1fr}
  .section-head{align-items:start;flex-direction:column;gap:8px}
  .newsletter{padding:30px 18px}.footer-grid{grid-template-columns:1fr}
  .timer{gap:6px}.time-box{min-width:58px}
}
</style>
</head>

<body>
<header>
  <div class="container header-main">
    <button class="mobile-toggle" id="mobileToggle" aria-label="Open menu"><i class="fas fa-bars"></i></button>
    <a class="brand" href="#">Nexus<span>Shop</span></a>

    <nav class="desktop-nav" aria-label="Primary navigation">
      <a class="nav-link active" href="#">Home</a>
      <a class="nav-link" href="#categories">Categories</a>
      <a class="nav-link" href="#products">Trending</a>
      <a class="nav-link" href="#deals">Deals</a>
      <a class="nav-link" href="#about">About</a>
    </nav>

    <div class="search" role="search">
      <i class="fas fa-search" aria-hidden="true"></i>
      <input id="searchInput" type="search" placeholder="Search products..." aria-label="Search products">
      <button id="searchBtn" aria-label="Search"><i class="fas fa-arrow-right"></i></button>
    </div>

    <div class="header-actions">
      <button class="icon-btn account" aria-label="Account" title="Account"><i class="far fa-user"></i></button>
      <button class="icon-btn wishlist" id="wishlistBtn" aria-label="Wishlist" title="Wishlist"><i class="far fa-heart"></i></button>
      <button class="icon-btn cart-btn" id="cartBtn" aria-label="Open cart" title="Cart">
        <i class="fas fa-shopping-bag"></i><span class="cart-count" id="cartCount">0</span>
      </button>
    </div>
  </div>

  <div id="mobileMenu" hidden>
    <div class="container" style="padding:10px 0 15px">
      <a class="nav-link" href="#">Home</a>
      <a class="nav-link" href="#categories">Categories</a>
      <a class="nav-link" href="#products">Trending</a>
      <a class="nav-link" href="#deals">Deals</a>
      <a class="nav-link" href="#about">About</a>
    </div>
  </div>
</header>

<main>
  <section class="container hero">
    <div class="hero-content">
      <div class="eyebrow"><i class="fas fa-sparkles"></i> New season • Premium picks</div>
      <h1>Find products you'll love.</h1>
      <p>Discover curated fashion, technology and everyday essentials with simple shopping, clear pricing and fast checkout.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow">Shop trending <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-light" id="exploreDeals">View deals</button>
      </div>
    </div>
  </section>

  <section class="container section" id="categories">
    <div class="section-head">
      <div><h2>Shop by category</h2><p>Quickly find what you need.</p></div>
    </div>
    <div class="categories" id="categoriesGrid"></div>
  </section>

  <section class="container section" id="products">
    <div class="section-head">
      <div><h2>Trending products</h2><p>Popular picks from our store.</p></div>
      <button class="btn btn-outline" id="clearFilter" style="display:none">Clear filter</button>
    </div>
    <div class="toolbar">
      <div class="results" id="resultsCount"></div>
      <select class="select" id="sortSelect" aria-label="Sort products">
        <option value="featured">Sort: Featured</option>
        <option value="price-low">Price: Low to high</option>
        <option value="price-high">Price: High to low</option>
        <option value="rating">Top rated</option>
      </select>
    </div>
    <div class="products" id="productsGrid"></div>
  </section>

  <section class="container" id="deals">
    <div class="deal">
      <div class="deal-image" aria-label="MacBook deal"></div>
      <div class="deal-content">
        <div class="eyebrow"><i class="fas fa-bolt"></i> Limited-time offer</div>
        <h2>MacBook Air M2</h2>
        <p>Thin, light and powerful. Get a premium laptop at a special price while stock lasts.</p>
        <div class="timer">
          <div class="time-box"><strong id="dealDays">0</strong><small>Days</small></div>
          <div class="time-box"><strong id="dealHours">00</strong><small>Hours</small></div>
          <div class="time-box"><strong id="dealMinutes">00</strong><small>Minutes</small></div>
          <div class="time-box"><strong id="dealSeconds">00</strong><small>Seconds</small></div>
        </div>
        <div style="display:flex;align-items:center;gap:12px;margin-bottom:18px">
          <strong style="font-size:27px">$999</strong><span style="text-decoration:line-through;color:#aeb9c9">$1,199</span>
          <span style="background:#ef4444;padding:5px 8px;border-radius:7px;font-size:12px;font-weight:800">-17%</span>
        </div>
        <button class="btn btn-primary" id="buyDeal">Add deal to cart</button>
      </div>
    </div>
  </section>

  <section class="container section" id="about">
    <div class="section-head">
      <div><h2>What customers say</h2><p>Simple shopping from start to finish.</p></div>
    </div>
    <div class="testimonials">
      <article class="testimonial">
        <div class="rating">★★★★★</div>
        <p class="quote">“Fast shipping and excellent customer support. The product exceeded my expectations!”</p>
        <div class="customer"><img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80" alt="Ava Martin"><div><strong>Ava Martin</strong><small>Verified buyer</small></div></div>
      </article>
      <article class="testimonial">
        <div class="rating">★★★★☆</div>
        <p class="quote">“Great selection and the checkout was smooth. Will shop again.”</p>
        <div class="customer"><img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80" alt="Michael Lee"><div><strong>Michael Lee</strong><small>Frequent buyer</small></div></div>
      </article>
    </div>
  </section>

  <section class="container">
    <div class="newsletter">
      <h2>Stay in the loop</h2>
      <p>Get new arrivals and exclusive offers in your inbox.</p>
      <form id="newsletterForm">
        <input id="newsletterEmail" type="email" placeholder="Enter your email" aria-label="Email address" required>
        <button class="btn btn-primary" type="submit">Subscribe</button>
      </form>
      <div class="newsletter-msg" id="newsletterMsg"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div>
      <div class="footer-title">NexusShop</div>
      <p>A clean, modern e-commerce experience built for easy browsing and quick purchasing.</p>
      <div class="socials">
        <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div>
      <div class="footer-title">Company</div>
      <a href="#about">About</a><br><a href="#">Careers</a><br><a href="#">Press</a>
    </div>
    <div>
      <div class="footer-title">Support</div>
      <a href="#">Help Center</a><br><a href="#">Shipping & Returns</a><br><a href="#">Contact</a>
    </div>
  </div>
  <div class="container copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
</footer>

<div class="overlay" id="cartOverlay" aria-hidden="true">
  <aside class="drawer" role="dialog" aria-modal="true" aria-labelledby="cartTitle">
    <div class="drawer-head">
      <h2 id="cartTitle">Your cart</h2>
      <button class="close" id="closeCart" aria-label="Close cart"><i class="fas fa-times"></i></button>
    </div>
    <div class="cart-items" id="cartItems"></div>
    <div class="cart-footer">
      <div class="total"><span>Total</span><span id="cartTotal">$0</span></div>
      <button class="btn btn-primary full" id="checkoutBtn">Proceed to checkout</button>
    </div>
  </aside>
</div>
<div class="toast" id="toast"></div>

<script>
const CATEGORIES = [{
                id: 'phones',
                name: 'Smartphones',
                icon: 'fa-mobile-alt'
            },
            {
                id: 'laptops',
                name: 'Laptops',
                icon: 'fa-laptop'
            },
            {
                id: 'clothing',
                name: 'Clothing',
                icon: 'fa-tshirt'
            },
            {
                id: 'gadgets',
                name: 'Gadgets',
                icon: 'fa-headphones'
            },
            {
                id: 'footwear',
                name: 'Footwear',
                icon: 'fa-shoe-prints'
            },
            {
                id: 'accessories',
                name: 'Accessories',
                icon: 'fa-watch'
            }
        ];

        const PRODUCTS = [{
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Chanel No. 5',
                price: 120,
                rating: 5,
                reviews: 189,
                img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Sony WH-1000XM5',
                price: 399,
                rating: 5,
                reviews: 156,
                img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
                category: 'gadgets'
            }
        ];

const categoriesGrid = document.getElementById('categoriesGrid');
const productsGrid = document.getElementById('productsGrid');
const cartCountEl = document.getElementById('cartCount');
const searchInput = document.getElementById('searchInput');
const resultsCount = document.getElementById('resultsCount');
const sortSelect = document.getElementById('sortSelect');
const clearFilter = document.getElementById('clearFilter');

let cart = [];
let wishlist = new Set();
let activeQuery = '';

function escapeHtml(text) {
  return String(text).replace(/[&<>"']/g, s => ({
    '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'
  }[s]));
}

function money(n) {
  return '$' + Number(n).toLocaleString();
}

function toast(message) {
  const el = document.getElementById('toast');
  el.textContent = message;
  el.classList.add('show');
  clearTimeout(window.__toastTimer);
  window.__toastTimer = setTimeout(() => el.classList.remove('show'), 1800);
}

function renderCategories() {
  categoriesGrid.innerHTML = CATEGORIES.map(cat => `
    <button class="cat-card ${activeQuery === cat.name.toLowerCase() ? 'selected' : ''}" data-category="${escapeHtml(cat.name)}">
      <div class="cat-icon"><i class="fas ${cat.icon}"></i></div>
      <h3>${escapeHtml(cat.name)}</h3>
      <small>Explore products</small>
    </button>
  `).join('');

  categoriesGrid.querySelectorAll('.cat-card').forEach(btn => {
    btn.addEventListener('click', () => {
      activeQuery = btn.dataset.category.toLowerCase();
      searchInput.value = btn.dataset.category;
      renderCategories();
      renderProducts();
      document.getElementById('products').scrollIntoView({behavior:'smooth',block:'start'});
    });
  });
}

function getVisibleProducts() {
  const q = activeQuery.trim().toLowerCase();

  let list = PRODUCTS.filter(p =>
    !q ||
    p.title.toLowerCase().includes(q) ||
    p.category.toLowerCase().includes(q)
  );

  if (sortSelect.value === 'price-low') list.sort((a,b) => a.price - b.price);
  if (sortSelect.value === 'price-high') list.sort((a,b) => b.price - a.price);
  if (sortSelect.value === 'rating') list.sort((a,b) => b.rating - a.rating || b.reviews - a.reviews);

  return list;
}

function renderProducts() {
  const list = getVisibleProducts();

  resultsCount.textContent = `${list.length} product${list.length === 1 ? '' : 's'}`;
  clearFilter.style.display = activeQuery ? 'inline-flex' : 'none';

  if (!list.length) {
    productsGrid.innerHTML = `
      <div class="empty">
        <i class="fas fa-search" style="font-size:28px;margin-bottom:10px"></i>
        <div style="font-weight:700;color:var(--text)">No products found</div>
        <div>Try another search or clear the filter.</div>
      </div>`;
    return;
  }

  productsGrid.innerHTML = list.map(p => `
    <article class="product">
      <div class="product-image">
        ${p.badge ? `<span class="badge ${p.badge.startsWith('-') ? 'sale' : ''}">${escapeHtml(p.badge)}</span>` : ''}
        <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
        <button class="wish-btn ${wishlist.has(p.id) ? 'active' : ''}" data-wish="${p.id}" aria-label="Wishlist">
          <i class="${wishlist.has(p.id) ? 'fas' : 'far'} fa-heart"></i>
        </button>
      </div>
      <div class="product-body">
        <div class="product-category">${escapeHtml(p.category)}</div>
        <h3>${escapeHtml(p.title)}</h3>
        <div class="rating">${'★'.repeat(Math.round(p.rating))} <span>(${p.reviews})</span></div>
        <div class="price-row">
          <div>
            <span class="price">${money(p.price)}</span>
            ${p.oldPrice ? `<span class="old-price">${money(p.oldPrice)}</span>` : ''}
          </div>
        </div>
        <button class="add-btn" data-add="${p.id}">
          <i class="fas fa-shopping-bag"></i> Add to cart
        </button>
      </div>
    </article>
  `).join('');

  productsGrid.querySelectorAll('[data-add]').forEach(btn => {
    btn.addEventListener('click', () => addToCart(Number(btn.dataset.add)));
  });

  productsGrid.querySelectorAll('[data-wish]').forEach(btn => {
    btn.addEventListener('click', () => toggleWishlist(Number(btn.dataset.wish)));
  });
}

function addToCart(id, qty = 1) {
  const p = PRODUCTS.find(x => x.id === id);
  if (!p) return;

  const existing = cart.find(x => x.id === id);
  if (existing) existing.qty += qty;
  else cart.push({id, qty});

  updateCart();
  toast(`${p.title} added to cart`);
}

function changeQty(id, delta) {
  const item = cart.find(x => x.id === id);
  if (!item) return;

  item.qty += delta;
  if (item.qty <= 0) cart = cart.filter(x => x.id !== id);
  updateCart();
}

function removeFromCart(id) {
  cart = cart.filter(x => x.id !== id);
  updateCart();
}

function updateCart() {
  const count = cart.reduce((sum, x) => sum + x.qty, 0);
  cartCountEl.textContent = count;

  const total = cart.reduce((sum, x) => {
    const p = PRODUCTS.find(y => y.id === x.id);
    return sum + (p ? p.price * x.qty : 0);
  }, 0);

  document.getElementById('cartTotal').textContent = money(total);

  const items = document.getElementById('cartItems');

  if (!cart.length) {
    items.innerHTML = `
      <div class="empty-cart">
        <i class="fas fa-shopping-bag" style="font-size:34px;margin-bottom:12px"></i>
        <h3 style="color:var(--text);margin:0 0 5px">Your cart is empty</h3>
        <div>Add something you love and it will appear here.</div>
      </div>`;
    return;
  }

  items.innerHTML = cart.map(item => {
    const p = PRODUCTS.find(x => x.id === item.id);

    return `
      <div class="cart-item">
        <img src="${p.img}" alt="${escapeHtml(p.title)}">
        <div>
          <h4>${escapeHtml(p.title)}</h4>
          <div style="font-weight:700">${money(p.price)}</div>
          <div class="qty">
            <button data-minus="${p.id}" aria-label="Decrease quantity">−</button>
            <span>${item.qty}</span>
            <button data-plus="${p.id}" aria-label="Increase quantity">+</button>
          </div>
        </div>
        <button class="remove" data-remove="${p.id}" aria-label="Remove">
          <i class="fas fa-trash"></i>
        </button>
      </div>`;
  }).join('');

  items.querySelectorAll('[data-minus]').forEach(b =>
    b.onclick = () => changeQty(Number(b.dataset.minus), -1)
  );
  items.querySelectorAll('[data-plus]').forEach(b =>
    b.onclick = () => changeQty(Number(b.dataset.plus), 1)
  );
  items.querySelectorAll('[data-remove]').forEach(b =>
    b.onclick = () => removeFromCart(Number(b.dataset.remove))
  );
}

function toggleWishlist(id) {
  if (wishlist.has(id)) {
    wishlist.delete(id);
    toast('Removed from wishlist');
  } else {
    wishlist.add(id);
    toast('Added to wishlist');
  }
  renderProducts();
}

function openCart() {
  document.getElementById('cartOverlay').classList.add('open');
  document.getElementById('cartOverlay').setAttribute('aria-hidden','false');
  document.body.classList.add('no-scroll');
}

function closeCart() {
  document.getElementById('cartOverlay').classList.remove('open');
  document.getElementById('cartOverlay').setAttribute('aria-hidden','true');
  document.body.classList.remove('no-scroll');
}

document.getElementById('cartBtn').onclick = openCart;
document.getElementById('closeCart').onclick = closeCart;

document.getElementById('cartOverlay').addEventListener('click', e => {
  if (e.target.id === 'cartOverlay') closeCart();
});

function doSearch() {
  activeQuery = searchInput.value.trim().toLowerCase();
  renderCategories();
  renderProducts();
  document.getElementById('products').scrollIntoView({behavior:'smooth',block:'start'});
}

document.getElementById('searchBtn').onclick = doSearch;

searchInput.addEventListener('keydown', e => {
  if (e.key === 'Enter') doSearch();
});

sortSelect.addEventListener('change', renderProducts);

clearFilter.onclick = () => {
  activeQuery = '';
  searchInput.value = '';
  renderCategories();
  renderProducts();
};

document.getElementById('shopNow').onclick = () =>
  document.getElementById('products').scrollIntoView({behavior:'smooth'});

document.getElementById('exploreDeals').onclick = () =>
  document.getElementById('deals').scrollIntoView({behavior:'smooth'});

document.getElementById('buyDeal').onclick = () => {
  const dealProduct = PRODUCTS.find(p => p.title === 'MacBook Air M2') || PRODUCTS.find(p => p.id === 2);

  if (dealProduct) {
    addToCart(dealProduct.id);
    openCart();
  } else {
    toast('Deal is currently unavailable');
  }
};

document.getElementById('wishlistBtn').onclick = () => {
  if (!wishlist.size) {
    toast('Your wishlist is empty');
    return;
  }

  const first = [...wishlist][0];
  const product = PRODUCTS.find(p => p.id === first);

  if (product) {
    activeQuery = product.title.toLowerCase();
    searchInput.value = product.title;
    renderCategories();
    renderProducts();
    document.getElementById('products').scrollIntoView({behavior:'smooth'});
  }
};

document.getElementById('checkoutBtn').onclick = () => {
  if (!cart.length) {
    toast('Your cart is empty');
    return;
  }
  toast('Checkout demo — ready for payment integration');
};

document.getElementById('newsletterForm').addEventListener('submit', e => {
  e.preventDefault();

  const email = document.getElementById('newsletterEmail');
  const msg = document.getElementById('newsletterMsg');

  if (!email.checkValidity()) {
    msg.textContent = 'Please enter a valid email address.';
    msg.style.color = '#fecaca';
    return;
  }

  msg.textContent = 'Thanks! You are subscribed.';
  msg.style.color = '#bfdbfe';
  email.value = '';
});

document.getElementById('mobileToggle').onclick = () => {
  const menu = document.getElementById('mobileMenu');
  menu.hidden = !menu.hidden;
};

document.querySelectorAll('#mobileMenu .nav-link').forEach(a => {
  a.addEventListener('click', () => {
    document.getElementById('mobileMenu').hidden = true;
  });
});

document.addEventListener('keydown', e => {
  if (e.key === 'Escape') closeCart();
});

(function setupDealTimer() {
  const target = Date.now() + (24 * 60 + 36) * 60 * 1000;

  function tick() {
    const diff = Math.max(0, target - Date.now());
    const d = Math.floor(diff / 86400000);
    const h = Math.floor(diff % 86400000 / 3600000);
    const m = Math.floor(diff % 3600000 / 60000);
    const s = Math.floor(diff % 60000 / 1000);

    document.getElementById('dealDays').textContent = d;
    document.getElementById('dealHours').textContent = String(h).padStart(2,'0');
    document.getElementById('dealMinutes').textContent = String(m).padStart(2,'0');
    document.getElementById('dealSeconds').textContent = String(s).padStart(2,'0');
  }

  tick();
  setInterval(tick, 1000);
})();

document.getElementById('year').textContent = new Date().getFullYear();

renderCategories();
renderProducts();
updateCart();
</script>
</body>
</html>
