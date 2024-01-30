<div class="bike-card">
    <p>Bike ID: <?= $task['bike_id'] ?></p>
    <p>Pseudo: <?= $bikeModel->getBikePseudo($task['bike_id']) ?></p>
    <p>Brand: <?= $bikeModel->getBikeBrand($task['bike_id']) ?></p>

</div>

