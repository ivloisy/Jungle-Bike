<?php

namespace Application\Controllers;

// require_once('lib/database.php');
// require_once('model/post.php');

// use Application\Lib\Database\DatabaseConnection;
// use Application\Model\Post\PostRepository;

class ErrorController
{
  public function execute()
  {
    // $postRepository = new PostRepository();
    // $postRepository->connection = new DatabaseConnection();
    // $posts = $postRepository->getPosts();

    require('views/error.php');
  }
}

