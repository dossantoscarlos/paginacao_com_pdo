<?php
    //cria um array vazio;
    $texto=array();

    //mapeia todas os arquivos txt dentro da pasta db
    $dbText = glob('db/*.txt');

    $posicao = (isset($_GET['p'])) ? intval($_GET['p']) : 1; // captura possicao do array pela url

    $arrayDias = ['horario','segunda','terca', 'quarta','quinta','sexta','sabado']; //nome das colunas

    $result = $dbText[$posicao-1]; //

    $text = file($result);
    for ($i = 0 ; $i < count($text);$i++){
        $texto[] =  array_combine($arrayDias,explode (',',$text[$i]));
    }
    $cont = count($dbText);
   // $segunda = date("d/m/Y");

    $titulo = str_replace('db/','',$dbText[$posicao-1]); // torna o titulo do arquivo um rotulo
    $titulo = str_replace('.txt','',$titulo);
 ?>
 <div class='container-fluid'>
    <table class='table table-condensed table-hover'>
        <caption class='panel-title text-center' style='color:#337AB7'>
            <h1><?=$titulo?> </h1>
            </caption>
        <thead>
            <?php
                //percorre o array de colunas

                foreach($arrayDias as $dia):
                    echo '<th>'.strtoupper($dia).'</th>';
                endforeach;
            ?>
        </thead>
        <tbody>
            <?php
                //
                echo "<tr>";
                foreach($texto as $key =>$value){
                    echo "<td>".$texto[$key]['horario']."</td>";
                    echo "<td>".$texto[$key]['segunda']."</td>";
                    echo "<td>".$texto[$key]['terca']."</td>";
                    echo "<td>".$texto[$key]['quarta']."</td>";
                    echo "<td>".$texto[$key]['quinta']."</td>";
                    echo "<td>".$texto[$key]['sexta']."</td>";
                    echo "<td>".$texto[$key]['sabado']."</td>";
                    echo "</tr>";
                }
            ?>
        </tbody>
    </table>
</div>
<div class='container'>
    <div class='text-center'>
    <?php
        for($i =1; $i <= $cont ; $i++){
            if($i==$posicao){
                printf("<a href='#' class='btn btn-primary' style='margin-left:12px'> %s </a>",$i,$i);
            }else{
                printf("<a href='?p=%s' class='btn btn-dafault' style='margin-left:12px;'> %s </a>",$i,$i);
            }
        }
    ?>
    </div>
</div>
