-- users
CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(100),
email VARCHAR(255),
pass_word VARCHAR(255)
);
INSERT INTO users (full_name, email, pass_word) VALUES
('Emily Johnson', 'emily.j@example.com', 'pass789'),
('Michael Brown', 'michael.b@example.com', 'passwordXYZ'),
('Sophia Williams', 'sophia.w@example.com', 'secure123'),
('Daniel Miller', 'daniel.m@example.com', 'pass432'),
('Olivia Davis', 'olivia.d@example.com', 'mypassword'),
('Matthew Taylor', 'matthew.t@example.com', 'letmein123'),
('Emma Wilson', 'emma.w@example.com', 'password789'),
('Andrew Anderson', 'andrew.a@example.com', 'ilovecoding'),
('Ava Martinez', 'ava.m@example.com', '1234abcd'),
('William Jackson', 'william.j@example.com', 'password567'),
('Isabella Garcia', 'isabella.g@example.com', 'qwerty123'),
('James Harris', 'james.h@example.com', 'iloveSQL'),
('Lily Moore', 'lily.m@example.com', 'pass987'),
('Ethan White', 'ethan.w@example.com', 'abcde123'),
('Madison Lee', 'madison.l@example.com', 'pass654'),
('Aiden Smith', 'aiden.s@example.com', 'mypassword123'),
('Chloe Brown', 'chloe.b@example.com', 'chloepass'),
('Jackson Clark', 'jackson.c@example.com', 'password999'),
('Avery Turner', 'avery.t@example.com', 'turnerpass'),
('Scarlett Adams', 'scarlett.a@example.com', '12345pass');


-- restaurant 
CREATE table restaurant (
res_id INT PRIMARY KEY AUTO_INCREMENT,
res_name varchar(100),
image VARCHAR(255),
decs varchar(255)
);

INSERT INTO restaurant (res_name, image, decs) VALUES
('Cafe Bella', 'cafe_bella.jpg', 'A cozy cafe with a variety of coffee options.'),
('Pizza Palace', 'pizza_palace.jpg', 'Home of the best pizza in town!'),
('Sushi Haven', 'sushi_haven.jpg', 'Fresh and delicious sushi dishes.'),
('Burger Bistro', 'burger_bistro.jpg', 'Gourmet burgers and fries.'),
('Thai Spice', 'thai_spice.jpg', 'Authentic Thai cuisine with a touch of spice.'),
('Mediterranean Delight', 'mediterranean_delight.jpg', 'Experience the flavors of the Mediterranean.'),
('Taco Fiesta', 'taco_fiesta.jpg', 'Taste the excitement of Mexican street food.'),
('Vegetarian Oasis', 'vegetarian_oasis.jpg', 'A haven for vegetarian and vegan delights.'),
('Steakhouse Supreme', 'steakhouse_supreme.jpg', 'Premium steaks cooked to perfection.'),
('Seafood Harbor', 'seafood_harbor.jpg', 'Fresh seafood served with a view.'),
('Pasta Paradise', 'pasta_paradise.jpg', 'Indulge in a variety of pasta dishes.'),
('Deli Delight', 'deli_delight.jpg', 'Classic deli sandwiches and salads.'),
('Indian Spice', 'indian_spice.jpg', 'Savor the rich flavors of Indian cuisine.'),
('Smoothie Spot', 'smoothie_spot.jpg', 'Refreshing smoothies and healthy snacks.'),
('BBQ Barn', 'bbq_barn.jpg', 'BBQ favorites in a rustic setting.'),
('Noodle Nook', 'noodle_nook.jpg', 'A diverse selection of noodle dishes.'),
('Crepe Corner', 'crepe_corner.jpg', 'Sweet and savory crepes for every taste.'),
('Ice Cream Emporium', 'ice_cream_emporium.jpg', 'A paradise of ice cream flavors.'),
('Diner Daze', 'diner_daze.jpg', 'Classic American diner with comfort food.'),
('Pho Palace', 'pho_palace.jpg', 'Delicious Vietnamese pho and more.');

-- like-res
create TABLE like_res(
user_id INT,
FOREIGN KEY(user_id) REFERENCES users(user_id),
res_id INT,
FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
date_like DATE

)
INSERT INTO like_res (user_id, res_id, date_like) VALUES
(1, 3, '2023-01-15'),
(2, 1, '2023-02-20'),
(3, 5, '2023-03-10'),
(4, 8, '2023-04-05'),
(5, 12, '2023-05-12'),
(1, 15, '2023-06-18'),
(2, 18, '2023-07-22'),
(3, 20, '2023-08-30'),
(4, 7, '2023-09-02'),
(5, 10, '2023-10-08'),
(1, 2, '2023-11-15'),
(2, 4, '2023-12-20'),
(3, 6, '2024-01-25'),
(4, 9, '2024-02-28'),
(5, 11, '2024-03-05'),
(1, 13, '2024-04-10'),
(2, 16, '2024-05-15'),
(3, 19, '2024-06-20'),
(4, 14, '2024-07-25'),
(5, 17, '2024-08-30');

-- rate_res

CREATE TABLE rate_res(
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(user_id),
res_id INT,
FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
amount INT,
date_rate DATETIME

)

INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES
    (1, 1, 5, '2023-01-01'),
    (2, 2, 3, '2023-02-15'),
    (3, 3, 4, '2023-03-20'),
    (4, 4, 2, '2023-04-10'),
    (5, 5, 5, '2023-05-25'),
    (6, 6, 1, '2023-06-30'),
    (7, 7, 3, '2023-07-12'),
    (8, 8, 4, '2023-08-18'),
    (9, 9, 2, '2023-09-22'),
    (10, 10, 5, '2023-10-05'),
    (11, 11, 4, '2023-11-11'),
    (12, 12, 1, '2023-12-19'),
    (13, 13, 3, '2024-01-02'),
    (14, 14, 2, '2024-02-14'),
    (15, 15, 4, '2024-03-21'),
    (16, 16, 5, '2024-04-08'),
    (17, 17, 3, '2024-05-17'),
    (18, 18, 1, '2024-06-28'),
    (19, 19, 2, '2024-07-06'),
    (20, 20, 4, '2024-08-15');
 
--  food-type 

CREATE TABLE food_type (
type_id INT PRIMARY KEY AUTO_INCREMENT,
type_name VARCHAR(255)
);

INSERT INTO food_type (type_name) VALUES
('Pizza'),
('Burger'),
('Pasta'),
('Salad'),
('Sushi'),
('Tacos'),
('Steak'),
('Seafood'),
('Soup'),
('Sandwich'),
('Dessert'),
('Indian'),
('Chinese'),
('Mexican'),
('Italian'),
('Japanese'),
('Thai'),
('Mediterranean'),
('Vegetarian'),
('Vegan');

-- food

CREATE TABLE food(
	food_id INT PRIMARY KEY AUTO_INCREMENT,
	food_name VARCHAR(255),
	image VARCHAR(255),
	price FLOAT,
	description VARCHAR(255),
	type_id INT,
	FOREIGN KEY(type_id) REFERENCES food_type(type_id)
);

INSERT INTO food (food_name, image, price, description, type_id) VALUES
('Margherita Pizza', 'margherita.jpg', 10.99, 'Classic tomato and cheese pizza', 1),
('Cheeseburger', 'cheeseburger.jpg', 8.99, 'Juicy beef patty with melted cheese', 2),
('Spaghetti Bolognese', 'spaghetti_bolognese.jpg', 12.99, 'Pasta with meat sauce', 3),
('Caesar Salad', 'caesar_salad.jpg', 7.99, 'Romaine lettuce with croutons and Caesar dressing', 4),
('Sushi Combo', 'sushi_combo.jpg', 18.99, 'Assorted sushi rolls and sashimi', 5),
('Chicken Tacos', 'chicken_tacos.jpg', 9.99, 'Soft tacos with seasoned chicken', 6),
('Ribeye Steak', 'ribeye_steak.jpg', 24.99, 'Grilled ribeye steak with mashed potatoes', 7),
('Seafood Platter', 'seafood_platter.jpg', 29.99, 'Assorted seafood on a platter', 8),
('Tomato Basil Soup', 'tomato_basil_soup.jpg', 6.99, 'Classic tomato soup with basil', 9),
('Turkey Club Sandwich', 'turkey_club_sandwich.jpg', 11.99, 'Triple-decker turkey sandwich', 10),
('Chocolate Cake', 'chocolate_cake.jpg', 8.99, 'Rich chocolate cake with frosting', 11),
('Chicken Curry', 'chicken_curry.jpg', 14.99, 'Spicy chicken curry with rice', 12),
('Sweet and Sour Chicken', 'sweet_and_sour_chicken.jpg', 13.99, 'Breaded chicken with sweet and sour sauce', 13),
('Taco Bowl', 'taco_bowl.jpg', 10.99, 'Rice bowl with Mexican-inspired toppings', 14),
('Lasagna', 'lasagna.jpg', 16.99, 'Layered pasta with meat and cheese', 15),
('Tempura Udon', 'tempura_udon.jpg', 15.99, 'Japanese udon soup with tempura', 16),
('Green Curry', 'green_curry.jpg', 12.99, 'Thai green curry with vegetables', 17),
('Greek Salad', 'greek_salad.jpg', 9.99, 'Salad with feta cheese and olives', 18),
('Vegetarian Stir Fry', 'vegetarian_stir_fry.jpg', 11.99, 'Stir-fried vegetables with tofu', 19),
('Vegan Burger', 'vegan_burger.jpg', 10.99, 'Plant-based burger with vegan cheese', 20);

-- orders

CREATE TABLE orders( 
user_id INT, 
FOREIGN KEY (user_id) REFERENCES users(user_id),
food_id INT,
FOREIGN KEY (food_id) REFERENCES food(food_id),
amount INT, 
code VARCHAR(255), 
arr_sub_id VARCHAR(255)
)

INSERT INTO orders (user_id, food_id, amount, code, arr_sub_id) VALUES
(1, 1, 2, 'ORDER123', 'SUB123'),
(2, 3, 1, 'ORDER456', 'SUB456'),
(3, 5, 3, 'ORDER789', 'SUB789'),
(1, 8, 1, 'ORDER101', 'SUB101'),
(2, 12, 2, 'ORDER202', 'SUB202'),
(3, 15, 1, 'ORDER303', 'SUB303'),
(1, 18, 3, 'ORDER404', 'SUB404'),
(2, 20, 2, 'ORDER505', 'SUB505'),
(3, 2, 1, 'ORDER606', 'SUB606'),
(1, 4, 2, 'ORDER707', 'SUB707'),
(2, 6, 1, 'ORDER808', 'SUB808'),
(3, 9, 3, 'ORDER909', 'SUB909'),
(1, 11, 1, 'ORDER010', 'SUB010'),
(2, 13, 2, 'ORDER111', 'SUB111'),
(3, 16, 1, 'ORDER212', 'SUB212'),
(1, 19, 3, 'ORDER313', 'SUB313'),
(2, 7, 2, 'ORDER414', 'SUB414'),
(3, 10, 1, 'ORDER515', 'SUB515'),
(1, 14, 2, 'ORDER616', 'SUB616'),
(2, 17, 1, 'ORDER717', 'SUB717');

-- câu 1: tìm 5 người like nhà hàng nhiều nhất 
select COUNT(u.user_id) as 'number of likes', u.full_name FROM like_res as lr
inner JOIN users as u on lr.user_id = u.user_id
group by u.full_name
order by 'number of likes' DESC
LIMIT 5;

-- câu 2: tìm 2 nhà hàng có lượt like nhiều nhất 

select COUNT(r.res_id) as 'number of likes', r.res_name FROM like_res as lr
inner JOIN restaurant as r on lr.res_id = r.res_id
group by r.res_name
ORDER BY 'number of likes' DESC
LIMIT 2;

-- câu 3: tìm người có số lần đặt hàng nhiều nhất 

select COUNT(o.user_id) as 'number of order', u.full_name FROM users as u
inner JOIN orders as o on u.user_id = o.user_id
group by u.full_name
ORDER BY 'number of order' DESC
LIMIT 1;

-- câu 4: tìm người không hoạt động 


SELECT u.user_id , u.full_name FROM users u
LEFT JOIN orders o
ON u.user_id = o.user_id
LEFT JOIN like_res lr
ON u.user_id = lr.user_id
LEFT JOIN rate_res rr
ON u.user_id = rr.user_id
WHERE o.user_id is NULL AND lr.user_id is NULL AND rr.user_id is NULL;


