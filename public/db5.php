<?php
require_once 'Database.php';

$conn = Database::getInstance();
$query = "SELECT c.id, c.brand, c.model, c.seats, c.color, c.year, co.name as brand_country FROM cars c
            INNER JOIN brands_countries bc ON c.id = bc.car_id
            INNER JOIN countries co ON co.id = bc.country_id
            WHERE c.year >= 2010";
$result = $conn->query($query);
if ($result->num_rows > 0) {
    $cars = $result->fetch_all(MYSQLI_ASSOC);
}
?>
<!DOCTYPE html>

<html>
<head>
    <title>Cars db</title>

    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
<table id='cars'>
    <tr>
        <th colspan="6">Cars</th>
    </tr>
    <tr>
        <th>Brand</th>
        <th>Model</th>
        <th>Seats</th>
        <th>Color</th>
        <th>Year</th>
        <th>Brand Country</th>
    </tr>
    <?php
    foreach ($cars as $car) {
        ?>
        <tr>
            <td><?php echo $car['brand']; ?></td>
            <td><?php echo $car['model']; ?></td>
            <td><?php echo $car['seats']; ?></td>
            <td><?php echo $car['color']; ?></td>
            <td><?php echo $car['year']; ?></td>
            <td><?php echo $car['brand_country']; ?></td>
        </tr>
    <?php } ?>
</table>
</body>
</html>
