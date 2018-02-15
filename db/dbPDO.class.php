<?php
  require ("./db/config.php");
  class dbPDO extends PDO
  {
    public function __construct()
    {
      try{
        parent::__construct(DSN, USER, PASSWORD);
      }catch(PDOException $e){
        echo $e->getMessage();
      }
    }
  }
