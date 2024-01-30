<?php $title = "Jungle Bike"; ?>

<?php ob_start(); ?>

<?php include_once('views/header.php'); ?>

<div class="task-box">
  <div id="a-faire-tasks" class="task-column">
    <h2>À faire</h2>
    <?php foreach ($tasksToDo as $task) : ?>
      <?php include('views/taskCard.php'); ?>
    <?php endforeach; ?>

  </div>

  <div id="en-cours-tasks" class="task-column">
    <h2>En cours</h2>
    <?php foreach ($tasksInProgress as $task) : ?>
      <?php include('views/taskCard.php'); ?>
    <?php endforeach; ?>

  </div>

  <div id="termine-tasks" class="task-column">
    <h2>Terminé</h2>
    <?php foreach ($tasksFinish as $task) : ?>
      <?php include('views/taskCard.php'); ?>
    <?php endforeach; ?>

  </div>
</div>

<?php $content = ob_get_clean(); ?>

<?php require('layout.php') ?>

