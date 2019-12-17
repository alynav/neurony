<?php
require_once 'frontend2.php';
require_once 'backend1.php';

if (isset($_POST['submit'])) {
    $car = [];
    $brand = htmlspecialchars(stripslashes(trim($_POST['brand'])));
    $model = htmlspecialchars(stripslashes(trim($_POST['model'])));
    $seats = htmlspecialchars(stripslashes(trim($_POST['seats'])));
    $color = htmlspecialchars(stripslashes(trim($_POST['color'])));
    $year = htmlspecialchars(stripslashes(trim($_POST['year'])));

    if (!empty($_POST['brand'])) {
        $car['brand'] = $brand;
    } else {
        return "Please enter Brand";
    }
    if (!empty($_POST['model'])) {
        $car['model'] = $model;
    } else {
        return "Please enter Model";
    }
    if (!empty($_POST['seats'])) {
        $car['seats'] = $seats;
    }
    if (!empty($_POST['color'])) {
        $car['color'] = $color;
    } else {
        return "Please enter Color";
    }
    if (!empty($_POST['year'])) {
        $car['year'] = $year;
    } else {
        return "Please enter Year";
    }
    if (!empty($_POST['brandCountry'])) {
        $car['brand_country'] = $_POST['brandCountry'];
    }

    $cars[] = $car;
}
