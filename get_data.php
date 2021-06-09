<?php

$link = mysqli_connect("localhost", "root", "root", "spa_data");

if (!$link) {
    echo "Ошибка: Невозможно установить соединение с MySQL.<br>" . PHP_EOL;
    echo "Код ошибки errno: " . mysqli_connect_errno() . "<br>" . PHP_EOL;
    echo "Текст ошибки error: " . mysqli_connect_error() . "<br>" . PHP_EOL;
    exit;
}

  $select_col = $_GET['select_col'];
  $select_cond = $_GET['select_cond'];
  $select_text = $_GET['select_text'];

  switch ($select_col) {
    case 'name-col':
      $param = $select_text;
      $condition = 'name ';
      $type = 's';
      break;
    case 'quantity-col':
      $quantity = (int)$select_text;
      $param = $quantity;
      $condition = 'quantity ';
      $type = 'i';
      break;
    case 'distanse-col':
      $distance = sprintf('%01.1f', (float)$select_text);
      $param = $distance;
      $condition = 'distance ';
      $type = 'd';
      break;
    default:
      $condition = '';
      break;
  }

  switch ($select_cond) {
    case 'con':
      $condition .= 'LIKE ?';
      $param = '%' . $param . '%';
      break;
    case 'equ':
      $condition .= '= ?';
      break;
    case 'gre':
      $condition .= '> ?';
      break;
    case 'les':
      $condition .= '< ?';
      break;
    default:
      break;
  }

  $query  =  $link->prepare("SELECT * FROM spa_table WHERE " . $condition . "");
  $query->bind_param($type, $param);
  $query->execute();

  $res = mysqli_stmt_get_result($query);

  if ($res->num_rows > 0) {
    $outstr = '@';

    $rec = 0;
    while($row = $res->fetch_assoc()) {
      $arr = array(
        'date' => $row["date"],
        'name' => $row["name"],
        'quantity' => $row["quantity"],
        'distance' => $row["distance"]
      );

      $json_str = json_encode($arr);

      if($rec == 0) {
        $outstr = $json_str;
      } else {
        $outstr .= ',';
        $outstr .= $json_str;
      }
      $rec++;

    }

    if($rec > 1) {
      $outstr = '[' . $outstr . ']';
    }
    echo $outstr;

  } else {
      echo "Данные не найдены";
  }

  $link->close();
