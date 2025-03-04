<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <style>
        body {
            display: flex;
            font-family: Arial, sans-serif;
            margin: 0;
        }
        .sidebar {
            width: 200px;
            background-color: #333;
            color: white;
            height: 100vh;
            padding: 20px;
            box-sizing: border-box;
        }
        .sidebar a {
            display: block;
            color: white;
            padding: 10px 0;
            text-decoration: none;
        }
        .sidebar a:hover {
            background-color: #575757;
        }
        .content {
            flex-grow: 1;
            padding: 20px;
            box-sizing: border-box;
            overflow: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        form label, form input, form select {
            margin-bottom: 10px;
        }
        input, select {
            height: 40px; /* Double the default height */
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>Admin Panel</h2>
        <a href="#dashboard">Dashboard</a>
        <a href="#my-store">My Store</a>
        <a href="#messages">Messages</a>
        <a href="#settings">Settings</a>
        <a href="#add-product">Add Product</a>
    </div>
    <div class="content">
        <h1>Welcome to the Admin Panel</h1>
        <p>Select an option from the sidebar to view the corresponding page.</p>
    </div>
</body>
</html>
<script>
    document.querySelectorAll('.sidebar a').forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const content = document.querySelector('.content');
            if (this.getAttribute('href') === '#dashboard') {
                content.innerHTML = `
                    <h1>Dashboard</h1>
                    <table>
                        <tr>
                            <th>Product Name</th>
                            <th>Date</th>
                            <th>Price</th>
                            <th>Status</th>
                        </tr>
                        <tr>
                            <td>Product 1</td>
                            <td>2023-01-01</td>
                            <td>$10</td>
                            <td>
                                <select>
                                    <option value="pending">Pending</option>
                                    <option value="complete">Complete</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Product 2</td>
                            <td>2023-01-02</td>
                            <td>$20</td>
                            <td>
                                <select>
                                    <option value="pending">Pending</option>
                                    <option value="complete">Complete</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Product 3</td>
                            <td>2023-01-03</td>
                            <td>$30</td>
                            <td>
                                <select>
                                    <option value="pending">Pending</option>
                                    <option value="complete">Complete</option>
                                </select>
                            </td>
                        </tr>
                    </table>
                `;
            } else if (this.getAttribute('href') === '#add-product') {
                content.innerHTML = `
                    <h1>Add Product</h1>
                    <form>
                        <label for="product-name">Product Name:</label>
                        <input type="text" id="product-name" name="product-name">
                        <label for="date">Date:</label>
                        <input type="date" id="date" name="date">
                        <label for="price">Price:</label>
                        <input type="number" id="price" name="price">
                        <label for="product-image">Product Image:</label>
                        <input type="file" id="product-image" name="product-image">
                        <input type="submit" value="Add Product">
                    </form>
                `;
            }
        });
    });
</script>
<script>
    document.querySelectorAll('.sidebar a').forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const content = document.querySelector('.content');
            if (this.getAttribute('href') === '#my-store') {
                content.innerHTML = `
                    <h1>My Store</h1>
                    <table>
                        <tr>
                            <th>Product Name</th>
                            <th>Product Description</th>
                            <th>Date</th>
                            <th>Price</th>
                            <th>Confirmation</th>
                        </tr>
                        <tr>
                            <td>Product 1</td>
                            <td>Description 1</td>
                            <td>2023-01-01</td>
                            <td>$10</td>
                            <td>Confirmed</td>
                        </tr>
                        <tr>
                            <td>Product 2</td>
                            <td>Description 2</td>
                            <td>2023-01-02</td>
                            <td>$20</td>
                            <td>Confirmed</td>
                        </tr>
                        <tr>
                            <td>Product 3</td>
                            <td>Description 3</td>
                            <td>2023-01-03</td>
                            <td>$30</td>
                            <td>Confirmed</td>
                        </tr>
                    </table>
                `;
            }
        });
    });
</script>
<script>
    document.querySelectorAll('.sidebar a').forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const content = document.querySelector('.content');
            if (this.getAttribute('href') === '#my-store') {
                content.innerHTML = `
                    <h1>My Store</h1>
                    <table>
                        <tr>
                            <th>Product Name</th>
                            <th>Product Description</th>
                            <th>Date</th>
                            <th>Price</th>
                            <th>Confirmation</th>
                        </tr>
                        <tr>
                            <td>Product 1</td>
                            <td>Description 1</td>
                            <td>2023-01-01</td>
                            <td>$10</td>
                            <td>
                                <button>Accept</button>
                                <button>Reject</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Product 2</td>
                            <td>Description 2</td>
                            <td>2023-01-02</td>
                            <td>$20</td>
                            <td>
                                <button>Accept</button>
                                <button>Reject</button>
                            </td>
                        </tr>
                        <tr>
                            <td>Product 3</td>
                            <td>Description 3</td>
                            <td>2023-01-03</td>
                            <td>$30</td>
                            <td>
                                <button>Accept</button>
                                <button>Reject</button>
                            </td>
                        </tr>
                    </table>
                `;
            }
        });
    });
</script>
<script>
    document.querySelectorAll('.sidebar a').forEach(link => {
        link.addEventListener('click', function(event) {
            event.preventDefault();
            const content = document.querySelector('.content');
            if (this.getAttribute('href') === '#messages') {
                content.innerHTML = `
                    <h1>Messages</h1>
                    <div id="messages-box">
                        <div class="message">
                            <p>User: Hello!</p>
                            <p>Bot: Hi there! How can I assist you today?</p>
                        </div>
                    </div>
                    <form id="message-form">
                        <label for="user-message">Your Message:</label>
                        <input type="text" id="user-message" name="user-message">
                        <input type="submit" value="Send">
                    </form>
                `;

                document.getElementById('message-form').addEventListener('submit', function(event) {
                    event.preventDefault();
                    const userMessage = document.getElementById('user-message').value;
                    const messagesBox = document.getElementById('messages-box');
                    const userMessageDiv = document.createElement('div');
                    userMessageDiv.classList.add('message');
                    userMessageDiv.innerHTML = `<p>User: ${userMessage}</p><p>Bot: Thank you for your message!</p>`;
                    messagesBox.appendChild(userMessageDiv);
                    document.getElementById('user-message').value = '';
                });
            }
        });
    });
</script>
<div style="position: absolute; top: 20px; right: 20px;">
    <button onclick="login()">Login</button>
    <button onclick="logout()">Logout</button>
</div>
<script>
    function login() {
        alert('Login functionality not implemented yet.');
    }

    function logout() {
        alert('Logout functionality not implemented yet.');
    }
</script>
<script>
    function logout() {
        window.location.href = 'login.html';
    }
</script>
    