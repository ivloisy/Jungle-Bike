<div id="task-<?= $task['id'] ?>" class="task">
  <p>ID: <?= $task['id'] ?></p>
  <h4><?= $prestaModel->getPrestationValueById($task['id_prestation']) ?></h4> <!-- Je recupère l'intitulé de la tache en cherchant dans 'presta' grace à l'ID de la prestation -->

  <a href="index.php?action=editBike&bike_id=<?= $task['bike_id'] ?>">
  <?php include('views/bikeCard.php'); ?>
  </a>

  <form class="status-form" data-task-id="<?= $task['id'] ?>" data-current-status="<?= $task['status'] ?>">
    <input type="radio" name="status" value="a faire" <?= ($task['status'] === 'a faire') ? 'checked' : '' ?>> À faire
    <input type="radio" name="status" value="en cours" <?= ($task['status'] === 'en cours') ? 'checked' : '' ?>> En cours
    <input type="radio" name="status" value="termine" <?= ($task['status'] === 'termine') ? 'checked' : '' ?>> Terminé
  </form>
</div>
