<?php
require_once 'backend1.php';
$keys = array_column($cars, 'model');
array_multisort($keys, SORT_ASC, $cars);
?>
<!DOCTYPE html>

<html>
<head>
    <title>Cars</title>

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

