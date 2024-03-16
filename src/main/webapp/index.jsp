<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rajinikanth DevOps Kitchen</title>
    <style>
        body {
            text-align: center;
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            color: #333;
        }

        h1 {
            color: #d9534f;
        }

        h2 {
            color: #5bc0de;
        }

        .menu-item {
            cursor: pointer;
            padding: 10px;
            border: 1px solid #ddd;
            margin: 5px;
            display: inline-block;
            background-color: #5bc0de;
            color: #fff;
            border-radius: 5px;
        }

        #sub-items {
            margin-top: 20px;
        }

        #sub-items h3 {
            color: #5cb85c;
        }

        .sub-item {
            padding: 8px;
            margin: 5px;
            background-color: #dff0d8;
            border: 1px solid #d6e9c6;
            border-radius: 4px;
            display: inline-block;
        }

        .menu-item img, .sub-item img {
            max-width: 100px;
            max-height: 100px;
            margin-right: 5px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Welcome to Rajinikanth DevOps Kitchen!</h1>
    <h2>Menu</h2>

    <div id="menu">
        <div class="menu-item" onclick="showSubItems('Biryani')">
            <img src="https://example.com/biryani.jpg" alt="Biryani">
            Biryani
        </div>
        <div class="menu-item" onclick="showSubItems('Curries')">
            <img src="https://example.com/curries.jpg" alt="Curries">
            Curries
        </div>
        <div class="menu-item" onclick="showSubItems('Pizzas')">
            <img src="https://example.com/pizzas.jpg" alt="Pizzas">
            Pizzas
        </div>
        <div class="menu-item" onclick="showSubItems('Starters')">
            <img src="https://example.com/starters.jpg" alt="Starters">
            Starters
        </div>
    </div>

    <div id="sub-items"></div>

    <script>
        function showSubItems(category) {
            var subItems = {
                Biryani: ['Chicken Biryani', 'Mutton Biryani', 'Veg Biryani'],
                Curries: ['Butter Chicken', 'Palak Paneer', 'Chana Masala'],
                Pizzas: ['Margherita', 'Pepperoni', 'BBQ Chicken'],
                Starters: ['Paneer Tikka', 'Chicken 65', 'Spring Rolls']
            };

            var itemsList = subItems[category].map(function(item) {
                return '<div class="sub-item">' + 
                            '<img src="https://example.com/' + item.toLowerCase().replace(/ /g, '-') + '.jpg" alt="' + item + '">' + 
                            item + 
                        '</div>';
            }).join('');

            document.getElementById('sub-items').innerHTML = '<h3>' + category + '</h3>' + itemsList;
        }
    </script>
</body>
</html>
