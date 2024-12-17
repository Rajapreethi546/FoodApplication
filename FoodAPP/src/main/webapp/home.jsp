<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList,java.util.Set,java.util.HashSet" %>
<%@ page import="com.foodapp.dto.Restaraunt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Marketplace</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f5f5f5;
        }

        /* Navbar */
        .navbar {
            background-color: #232f3e;
            color: white;
        }

        .navbar a {
            color: white;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Featured Section */
        .featured-section {
            padding: 50px 0;
            background-color: #fff;
            text-align: center;
        }

        .featured-section h2 {
        	text-align: center;
            font-size: 2.5em;
            margin-bottom: 40px;
            color: #333;
        }

        .carousel-item {
            height: 400px; /* Set a fixed height */
        }

        .carousel-image {
            height: 100%; /* Ensure the image takes full height of the carousel */
            object-fit: cover; /* Maintain aspect ratio and cover the area */
            border-radius: 10px; /* Rounded corners */
        }

        /* Top Cuisines Section */
        .cuisine-section {
            padding: 50px 0;
            background-image: url('https://example.com/cuisine-bg.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            text-align: center;
            position: relative;
        }

        .cuisine-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5); /* Dark overlay */
            z-index: -1;
        }

        .cuisine-title {
            font-size: 2em;
            margin-bottom: 40px;
        }

        .cuisine-tile {
            transition: transform 0.3s, box-shadow 0.3s;
            padding: 15px;
            text-align: center;
            border-radius: 10px;
            cursor: pointer;
            background-color: rgba(255, 255, 255, 0.8);
            color: black;
        }

        .cuisine-tile:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
        }

        .cuisine-tile i {
            font-size: 2em;
            margin-bottom: 10px;
            display: block;
            color: #ff9900;
        }

        /* Customer Testimonials Section */
        .testimonial-section {
            padding: 50px 0;
            position: relative;
            background-image: url('https://example.com/testimonial-bg.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            z-index: 1;
        }

        .testimonial-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: -1;
        }

        .testimonial-section h2 {
            font-size: 2.5em;
            text-align: center;
            margin-bottom: 40px;
            color: white;
        }

        .testimonial {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in;
            color: white;
        }

        .testimonial:hover {
            transform: translateY(-10px);
        }

        .stars {
            color: #ffa41c;
        }

        /* Restaurant Card Styling */
        .card {
            border: 1px solid #e1e1e1;
            border-radius: 10px;
            margin: 15px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: scale(1.03);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
        }

        .card img {
            height: 200px;
            object-fit: cover;
            border-radius: 10px 10px 0 0;
        }
		
		.text{
			text-align:center;
		}
        .view-menu-btn {
            padding: 10px 20px;
            background-color: #ff9900;
            border: none;
            color: white;
            border-radius: 5px;
            text-align: center;
        }

        .view-menu-btn:hover {
            background-color: #cc7a00;
        }

        /* Add to Cart Button */
        .add-to-cart-btn {
            background-color: #007600;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            border: none;
        }

        .add-to-cart-btn:hover {
            background-color: #005700;
        }

        /* Footer */
        footer {
            background-color: #232f3e;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        footer i {
            font-size: 1.5em;
            margin: 0 10px;
            color: white;
            transition: color 0.3s;
        }

        footer i:hover {
            color: #ff9900;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="About.jsp">FoodApp</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                
                <li class="nav-item">
                    <a class="nav-link" href="viewHistory"><i class="fas fa-history"></i>View History</a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="viewOrderDetails.jsp"><i class="fas fa-shopping-cart"></i>Cart</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Account.jsp"><i class="fas fa-user"></i>Account</a>
                </li>
            </ul>
        </div>
    </nav>

    
    <!-- Top Cuisines Section -->
    <section class="cuisine-section">
        <h2 class="cuisine-title">Explore Top Cuisines</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="cuisine-tile">
                        <h4>Indian</h4>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cuisine-tile">
                        <h4>South Korean</h4>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cuisine-tile">
                        <h4>Mexican</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Featured Dishes Section -->
  <section class="featured-dishes-section fade-in">
    <h2 class="text">Featured Dishes</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card dish-card">
                    <img src="https://media.istockphoto.com/id/1189709277/photo/pasta-penne-with-roasted-tomato-sauce-mozzarella-cheese-grey-stone-background-top-view.jpg?s=1024x1024&w=is&k=20&c=-cx2OEvdsCqs2TPK_EttPr7QZoTmeNww-Wa2njBeCR0=" class="card-img-top" alt="Dish 1">
                    <div class="card-body">
                        <h5 class="card-title">Penne Arrabbiata</h5>
                        <p class="card-text">A spicy Italian pasta with roasted tomato sauce.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card dish-card">
                    <img src="https://media.istockphoto.com/id/508032520/photo/sushi-set-nigiri-and-sashimi-with-tea.jpg?s=1024x1024&w=is&k=20&c=4XlxBHdLDYm6UkWdgfjK220YJE5JAYjFAgFJi6n0jbI=" class="card-img-top" alt="Dish 2">
                    <div class="card-body">
                        <h5 class="card-title">Deluxe Sushi Combo</h5>
                        <p class="card-text">A variety of premium sushi and sashimi pieces.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card dish-card">
                    <img src="https://media.istockphoto.com/id/486548089/photo/melting-cheese-in-burger.jpg?s=1024x1024&w=is&k=20&c=rB1OQiPFkU48kRYeMBk_t7G6CMJUc8FdUkUWMQYGnE4=" class="card-img-top" alt="Dish 3">
                    <div class="card-body">
                        <h5 class="card-title">Classic Bacon Burger</h5>
                        <p class="card-text">A hearty burger with crispy bacon and melted cheese.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    <!-- Special Offers Section -->
    <section class="special-offers-section fade-in">
        <h2 class="text">Special Offers</h2>
        <p class="text">Check out our exclusive deals and discounts!</p>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card">
                        <img src="https://media.istockphoto.com/id/1442417585/photo/person-getting-a-piece-of-cheesy-pepperoni-pizza.jpg?s=1024x1024&w=is&k=20&c=faq73viCFGvfpKxcBuHcOI8kyT99B-p-jScipke-VuQ=" class="card-img-top" alt="Offer 1">
                        <div class="card-body">
                            <h5 class="card-title">Buy 1 Get 1 Free</h5>
                            <p class="card-text">On all pizzas every Monday!</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="https://media.istockphoto.com/id/1324465031/photo/high-angle-view-close-up-asian-woman-using-meal-delivery-service-ordering-food-online-with.jpg?s=1024x1024&w=is&k=20&c=SBTB9mNIoDe1Ua6OrZfnpY2ad52OdXdTfuRRM2IzVHI=" alt="Offer 2">
                        <div class="card-body">
                            <h5 class="card-title">30% Off on First Order</h5>
                            <p class="card-text">Get a discount on your first order!</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="https://media.istockphoto.com/id/1206704220/vector/free-delivery-sign-free-shipping-service-icon-stock-vector.jpg?s=1024x1024&w=is&k=20&c=0ZbBpbCqH-Lecwfmez0NrodX6RYCyeM6o0SGtxKcQVA=" class="card-img-top" alt="Offer 3">
                        <div class="card-body">
                            <h5 class="card-title">Free Delivery</h5>
                            <p class="card-text">On orders above 200!</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <section>
     
    <!-- Restaurant Details Section -->
    <h2 class="text">Restaurants</h2>
    <div class="container my-5">
        <div class="row">
            <% 
                ArrayList<Restaraunt> restaurantList = (ArrayList<Restaraunt>) session.getAttribute("restaurantList");
                if (restaurantList != null && !restaurantList.isEmpty()) {
                    Set<String> restaurantNames = new HashSet<>();
                    for (Restaraunt res : restaurantList) {
                        if (!restaurantNames.contains(res.getname())) {
                            restaurantNames.add(res.getname());
            %>
                            <div class="col-md-4 mb-4">
                                <div class="card fadeIn">
                                    <img src="<%= res.getimgPath() %>" alt="Image of <%= res.getname() %>">
                                    <div class="card-body">
                                        <h3><%= res.getname() %></h3>
                                        <p><strong>Cuisine:</strong> <%= res.getCusineType() %></p>
                                        <p><strong>Delivery Time:</strong> <%= res.getDeliveryTime() %> mins</p>
                                        <p><strong>Rating:</strong> ⭐⭐⭐⭐</p>
                                        <a href="InnerMenuServlet?restaurantId=<%= res.getrId() %>" class="btn view-menu-btn">View Menu</a>
                                    </div>
                                </div>
                            </div>
            <%
                        }
                    }
                } else {
            %>
                <p class="text-center">No restaurants available at the moment.</p>
            <%
                }
            %>
        </div>
    </div>
     
     </section>
    <!-- Upcoming Events Section -->
    <section class="events-section fade-in">
    <h2 class="text">Upcoming Events</h2>
    <p class="text">Join us for exciting food festivals and cooking classes!</p>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="https://i.pinimg.com/originals/d7/50/88/d75088c23142b5c7caa1c237042e3e19.jpg" 
                         class="card-img-top" alt="Outdoor Barbecue Party">
                    <div class="card-body">
                        <h5 class="card-title">Outdoor BBQ Party</h5>
                        <p class="card-text">Enjoy grilled favorites and music on November 15!</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZIEYIZWIE83pQJgPRs4W2y_NIHh_2Tob6TA&s" 
                         class="card-img-top" alt="Pizza Making Workshop">
                    <div class="card-body">
                        <h5 class="card-title">Pizza Making Workshop</h5>
                        <p class="card-text">Master the art of pizza making on December 30!</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS4FvLj4zWq9FsaTkdkivFk5yP5kiAxn3Y4A&s" 
                         class="card-img-top" alt="Coffee Tasting Experience">
                    <div class="card-body">
                        <h5 class="card-title">Coffee Tasting Experience</h5>
                        <p class="card-text">Explore premium coffee blends on January 20!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    
	<!-- Customer Testimonials Section -->
    <section class="testimonial-section">
        <h2>What Our Customers Say</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="testimonial">
                        <p>"Great service and amazing food! Delivery was quick and the dishes were fresh."</p>
                        <div class="stars">★★★★★</div>
                        <p>- Suresh</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="testimonial">
                        <p>"I love the variety of cuisines available. The app is easy to use and convenient."</p>
                        <div class="stars">★★★★★</div>
                        <p>- Ramesh</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer -->
    <footer>
        <p>&copy; 2024 FoodApp. All rights reserved.</p>
        <div>
            <a href="https://youtube.com/@rajapreethirangam783" title="Youtube"><i class="fab fa-youtube-square"></i></a>
            <a href="https://www.linkedin.com/feed/" title="LinkedIn"><i class="fab fa-linkedin"></i></a>
            <a href="https://www.instagram.com/preethi_8260r/" title="Instagram"><i class="fab fa-instagram-square"></i></a>
        </div>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
