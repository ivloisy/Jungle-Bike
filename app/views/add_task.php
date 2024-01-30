<?php $title = "Add Task"; ?>

<?php ob_start(); ?>

<?php include_once('views/header.php'); ?>

<form method="post" action="index.php?action=addTask">
  <label for="bikeId">ID du Vélo:</label>
  <input type="text" id="bikeId" name="bikeId" required>
  </br>
  <!-- Si le la valeur n'est rentrée pour l'ID du velo n'est pas valide (valeur aberente ou ID qui n'existe pas), le messag d'erreur s'affiche ici -->
  <?php if (isset($errorMessage)) : ?>
    <div class="error-message">
    <?= $errorMessage ?>
    </div>
  <?php endif; ?>

  <label for="prestaId">Sélectionnez la prestation:</label>
  <select id="prestaId" name="prestaId">
  <?php
    foreach ($prestations as $prestation) {
      echo '<option value="' . $prestation['id_prestation'] . '">' . $prestation['prestation'] . '</option>';
    }
  ?>
  </select>
  </br>
  <label>Status:</label>
  <input type="radio" name="taskStatus" value="A faire" checked>A faire
  <input type="radio" name="taskStatus" value="En cours">En cours
  <input type="radio" name="taskStatus" value="Terminé">Terminé

  <button type="submit">Ajouter la tâche</button>
</form>

<?php $content = ob_get_clean(); ?>

<?php require('views/layout.php') ?>

