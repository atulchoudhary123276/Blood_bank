<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
    <style>
         /* Reset styles */
                        * {
                            margin: 0;
                            padding: 0;
                            box-sizing: border-box;
                        }

                        body {
                            font-family: Arial, sans-serif;
                            line-height: 1.6;
                            background-color: #f8f9fa;
                            color: #333;
                            overflow-x: hidden; /* Prevent horizontal scroll */
                        }

                        .container {
                            display: flex;
                            flex-direction: column;
                            min-height: 100vh;
                        }

                        /* Header styles */
                        header {
                     background: linear-gradient(to right, #4286f4, #82b4ff); /* Change the color codes here */
                        color: #fff;
                        padding: 20px 0;
                        text-align: center;
                        position: relative;
                        z-index: 1000;
                        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
                        }

                        .logo a {
                            color: #fff;
                            text-decoration: none;
                            font-size: 24px;
                            font-weight: bold;
                        }

                        .user-info {
                            position: absolute;
                            top: 50%;
                            right: 20px;
                            transform: translateY(-50%);
                        }

                        .user-info span {
                            margin-right: 10px;
                            font-size: 18px;
                        }

                        .logout {
                            color: #fff;
                            text-decoration: none;
                            padding: 8px 16px;
                            background-color: #343a40;
                            border-radius: 4px;
                            transition: background-color 0.3s ease;
                        }

                        .logout:hover {
                            background-color: #23272b;
                        }

                        /* Main content styles */
                        .main {
                            display: flex;
                            flex: 1;

                        }

                        .sidebar {
                            background-color: #fff;
                            padding: 20px;
                            width: 200px;
                            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                        }

                        .sidebar ul {
                            list-style-type: none;
                        }

                        .sidebar li {
                            margin-bottom: 10px;
                        }

                        .sidebar a {
                            color: #333;
                            text-decoration: none;
                            padding: 10px;
                            display: block;
                            transition: background-color 0.3s ease;
                        }

                        .sidebar a:hover,
                        .sidebar a.active {
                            background-color: #f0f0f0;
                        }

                        .content {

                            background-color: #fff;
                            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                            border-radius: 0 10px 10px 0;
                        }

                        .admin-profile {
                            margin-top: 20px;
                            padding: 20px;
                            background-color: #f0f0f0;
                            border-radius: 5px;
                        }

                        /* Footer styles */
                        footer {
                            background-color: #343a40;
                            color: #fff;
                            padding: 10px;
                            text-align: center;
                            margin-top: auto;
                        }

                        /* Animations */
                        @keyframes fadeInUp {
                            from {
                                opacity: 0;
                                transform: translateY(20px);
                            }
                            to {
                                opacity: 1;
                                transform: translateY(0);
                            }
                        }

                        .fadeInUp {
                            animation: fadeInUp 0.5s ease;
                        }
                        /* CSS for Agent Account Creation Page */

                        /* Main content */
                        .main {
                            display: flex;
                        }

                        /* Sidebar */
                        .sidebar {
                            background-color: #f0f0f0;
                            padding: 20px;
                            width: 200px;
                        }

                        .sidebar ul {
                            list-style-type: none;
                        }

                        .sidebar li {
                            margin-bottom: 10px;
                        }

                        .sidebar a {
                            color: #333;
                            text-decoration: none;
                            padding: 10px;
                            display: block;
                            transition: background-color 0.3s ease;
                        }

                        .sidebar a:hover,
                        .sidebar a.active {
                            background-color: #ddd;
                        }

                        /* Content */
                        .content {
                            padding: 20px;
                            flex: 1;
                        }

                        .agent-form {
                            width: 50%;
                            margin: auto;
                        }

                        .agent-form form {
                            display: flex;
                            flex-direction: column;
                        }

                        .agent-form label {
                            margin-bottom: 8px;
                        }

                        .agent-form input[type="text"],
                        .agent-form input[type="date"],
                        .agent-form select {
                            padding: 10px;
                            border: 1px solid #ccc;
                            border-radius: 5px;
                            margin-bottom: 10px;
                        }

                        .agent-form input[type="submit"] {
                            background-color: #007bff;
                            color: #fff;
                            border: none;
                            padding: 12px 20px;
                            border-radius: 5px;
                            font-size: 16px;
                            cursor: pointer;
                        }

                        .agent-form input[type="submit"]:hover {
                            background-color: #0056b3;
                        }

                        .alert {
                            padding: 15px;
                            margin-top: 15px;
                            border-radius: 5px;
                        }

                        .alert-success {
                            background-color: #d4edda;
                            color: #155724;
                            border: 1px solid #c3e6cb;
                        }
                         table {
                                           width: 100%;
                                           border-collapse: collapse;
                                           margin-bottom: 20px;
                                       }

                                       th, td {
                                           padding: 12px;
                                           text-align: left;
                                           border-bottom: 1px solid #ddd;
                                       }

                                       th {
                                           background-color: #f2f2f2;
                                       }
                                       /* CSS for filter & sorting */
                                                                       .action-buttons {
                                                                           margin-bottom: 20px;
                                                                           margin-left: 50px;
                                                                       }

                                                                       .action-buttons form {
                                                                           display: inline-block;
                                                                           margin-right: 20px;
                                                                       }

                                                                       .action-buttons select {
                                                                           padding: 8px;
                                                                           border: 1px solid #ccc;
                                                                           border-radius: 4px;
                                                                       }

                                                                       .action-buttons input[type="text"] {
                                                                           padding: 8px;
                                                                           width: 150px;
                                                                           border: 1px solid #ccc;
                                                                           border-radius: 4px;
                                                                           margin-right: 5px;
                                                                       }

                                                                       .action-buttons button {
                                                                           padding: 8px 15px;
                                                                           background-color: #4CAF50;
                                                                           color: white;
                                                                           border: none;
                                                                           border-radius: 4px;
                                                                           cursor: pointer;
                                                                       }

                                                                       .action-buttons button:hover {
                                                                           background-color: #45a049;
                                                                       }

         .container {
                margin-left: 20px;
            }

            .container h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }

            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }

            th {
                background-color: #f2f2f2;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            tr:hover {
                background-color: #ddd;
            }

            .btn-group {
                display: flex;
                gap: 10px;
            }

            .btn {
                padding: 8px 16px;
                cursor: pointer;
                border: none;
                border-radius: 4px;
            }

            .btn-success {
                background-color: #28a745;
                color: #fff;
            }

            .btn-danger {
                background-color: #dc3545;
                color: #fff;
            }

            .btn-dark {
                background-color: #343a40;
                color: #fff;
            }

            .btn-primary {
                background-color: #007bff;
                color: #fff;
            }
.main-body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.signup-container {
  width: 400px;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.title {
  text-align: center;
  margin-bottom: 20px;
}

.alert {
  margin-bottom: 20px;
}
form {
   display: grid;
   gap: 10px;
 }

 label {
   font-weight: bold;
 }

 input[type="text"],
 input[type="password"],
 input[type="date"],
 select {

   padding: 8px;
   border: 1px solid #ccc;
   border-radius: 4px;
 }

 input[type="submit"] {
   width: 100%;
   padding: 10px;
   background-color: #4286f4;
   color: white;
   border: none;
   border-radius: 4px;
   cursor: pointer;
 }

 input[type="submit"]:hover {
   background-color: #3270a0;
 }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <nav class="navbar">
                <div class="logo">
                    <a href="#">Blood Bank</a>
                </div>
                <div class="user-info">
                    <span>Welcome, ${name}<h3>Total Coins =${coinValue}</h3></span>

                    <a href="/logout" class="logout">Logout</a>
                </div>
            </nav>
        </header>
