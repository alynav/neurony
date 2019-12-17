<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>

<h3>Insert a new car</h3>
<div class="insertCar">
    <form id="insertCar" action="backendAction4.php" method="post">
        <label for="brand">Brand</label>
        <input type="text" id="brand" name="brand">

        <label for="model">Model</label>
        <input type="text" id="model" name="model">

        <label for="seats">Seats</label>
        <input type="number" id="seats" name="seats">

        <label for="color">Color</label>
        <input type="text" id="color" name="color">

        <label for="year">Year</label>
        <input type="number" id="year" name="year">

        <label for="bcountry">Brand Country</label>
        <select id="bcountry" name="brandCountry">
            <?php $countries = ['Sweden', 'Germany', 'USA', 'France'];
            foreach ($countries as $country) {
                ?>
                <option value="<?php echo $country; ?>">
                    <?php echo $country; ?>
                </option>
            <?php } ?>
        </select>

        <input type="submit" value="Submit" name="submit">
    </form>
</div>
</body>
</html>
