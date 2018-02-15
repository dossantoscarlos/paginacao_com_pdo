<div class='container-fluid'>
  <table class='table table-condensed table-hover'>
     <caption class='panel-title text-center' style='color:#337AB7'>
       <h1>PAGINAÇÃO</h1>
     </caption>
     <thead>
       <th class="text-center">Nome</th>
       <th class="text-center">Telefone</th>
       <th class="text-center">Pais</th>
    </thead>
    <tbody class="text-center">
     <?php
     include ('cliente.class.php');
     $cli = new Cliente;
     $cli->lista();
     ?>
  </table>
</div>
<div class='container'>
   <div class='text-center'>
     <?php
      $cli->paginate();
     ?>
  </div>
</div>
