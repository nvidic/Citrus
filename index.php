<html>

<head>
    <title> Citrus </title>
    <style>
        
        #commentDiv {
            /* display: none; */
            margin-top: 10px;
            margin-left: 20px;
        }

        .grid {
            display: flex;                       /* establish flex container */
            flex-wrap: wrap;                     /* enable flex items to wrap */
            justify-content: space-around;

        }
        .cell {
            flex: 0 0 32%;                       /* don't grow, don't shrink, width */
            height: 130px;
            margin-bottom: 5px;
            background-color: #aaa;
        }

        .userComment {
            border: 1px solid blue;
            width: 90%;
            height: 40px;
            margin: 0.5% 5%;
            padding-top: 15px;
            text-align: center;
        }

    </style>
        
</head>

<body>
    <?php

        // Connect to database        
        $conn = mysqli_connect('localhost', 'user', 'user', 'Citrus');
        
        if (mysqli_connect_errno()) {
            die("Connection error: ".mysqli_connect_error());
        }

        // Products grid

        // Getting data from DB
        $query= "SELECT * FROM Products";

        $result = mysqli_query($conn, $query) or
            die("Query error: ". mysqli_error($conn));

        // Creating items grid
        echo "<div class='grid'>";

            while ($row=mysqli_fetch_assoc($result)) {
                $ID = $row['ID'];
                $image = $row['Image'];
                $title = $row['Title'];
                $description = $row['Description'];
                    
                // Grid cells

                echo '<div class="cell">';
                
                echo '<p style="width:30%; float:left">' .$title. '</p>';
                echo '<img style="width:30%; height:100%; float:left" src="/img/'.$image.'" alt="img"  >';
                echo '<p style="width:30%; float:left">' .$description. '</p>';

                echo "</div>";
            }

            echo '</div>';

            // Comments about company or products

            // Getting comments from DB
            $query= "SELECT * FROM Comments";

            $result = mysqli_query($conn, $query) or
                die("Query error: ". mysqli_error($conn));
            
            // Showing comments on page
            echo "<div class='allComments'>";

            while ($row=mysqli_fetch_assoc($result)) {
                $isApproved = $row['Approved'];
                $commentText = $row['Comment'];
                $name = $row['Name'];
                $email = $row['Email'];

                // Show only approved comments
                if ($isApproved) {
                    echo "<div class='userComment'> \"".$commentText."\" \t\t ".$name." </div>";
                }

            }
            echo "</div>";

            mysqli_close($conn);
    ?>

    <!-- Comment input form -->
    <div id='commentDiv'>
        Name:
        <br>
        <input type='text' id='name'> 
        <br>
        Email:
        <br>
        <input type='email' id='email'> 
        <br>
        Comment:
        <br>
        <textarea id='comment' cols='20' rows='10'></textarea>
        <br>
        <br>
        <input type='button' id='addComment' value='Submit comment'>
    </div>

    <script type='text/javascript' src='jquery-2.1.4.min.js'> </script>
    <script type='text/javascript' src='script.js'> </script>    

</body>
</html>
