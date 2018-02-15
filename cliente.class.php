<?php
 include_once ('./db/dbPDO.class.php');
class Cliente
{
  private $id;
  private $nome;
  private $telefone;
  private $pais;
  private $limitar = 10;

  function __construct(){}

  function lista()
  {
    $pg_origem = filter_input(INPUT_GET,'pg',FILTER_SANITIZE_NUMBER_INT);
    $pg = (filter_has_var(INPUT_GET, 'pg')) ? $pg_origem : 1;

    $cliente = $this->querySelect($pg);
    foreach($cliente as $key =>$value)
    {
       echo "<tr>";
         echo "<td>".$cliente[$key]['name']."</td>";
         echo "<td>".$cliente[$key]['telefone']."</td>";
         echo "<td>".$cliente[$key]['pais']."</td>";
       echo "</tr>";
    }
  }

  function querySelect($page_atual)
  {
    $db = new dbPDO();
    $init = ($this->limitar * $page_atual) - $this->limitar;
    $sql = "SELECT * FROM cliente order by id limit $init, $this->limitar";
    $resp = $db->prepare($sql);
    $resp->execute();
    return $resp->fetchAll();
  }

  function paginate()
  {
    $db = new dbPDO;
    $pg_origem = filter_input(INPUT_GET,'pg',FILTER_SANITIZE_NUMBER_INT);
    $pg = (filter_has_var(INPUT_GET, 'pg')) ? $pg_origem : 1;
    $map_pag = "Select count(id) as id_result from cliente";
    $paginates = $db->prepare($map_pag);
    $paginates->execute();
    $qnt = ceil($paginates->fetchColumn() / $this->limitar);
    $max_paginate = 2;
    echo "<a href='?pg=1' class='btn btn-default' style='margin-left:12px;'>Inicio</a>";
    for($pag_ant = $pg - $max_paginate; $pag_ant <= $pg - 1; $pag_ant++){
    	if($pag_ant >= 1){
        printf("<a href='?pg=%s' class='btn btn-default' style='margin-left:12px;'> %s </a>",$pag_ant,$pag_ant);
    	}
    }
    printf("<span class='btn btn-primary' style='margin-left:12px'> %s </span>",$pg);
    for($pag_dep = $pg + 1; $pag_dep <= $pg + $max_paginate; $pag_dep++){
      if($pag_dep <= $qnt){
        printf("<a href='?pg=%s' class='btn btn-default' style='margin-left:12px;'> %s </a>",$pag_dep,$pag_dep);
    	}
    }
    echo "<a href='?pg=$qnt' class='btn btn-default' style='margin-left:12px;'>Ultima</a>";

  }

}
