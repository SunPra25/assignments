<?php
$data = file_get_contents('files/assignment-2.json'); // Reading input file 
$newdata = json_decode($data);
//echo '<pre>',print_r($newdata);
$p_data = $c_data = array(); //creating parent and child array
foreach ($newdata as $sample) {
    if ($sample->parent == 0) {
        $sample->children = array();
        $p_data[] = $sample;
    } else {
        $c_data[] = $sample;
    }
}
//echo '<pre>',print_r($p_data);
foreach ($c_data as $child) {
    foreach ($p_data as $parent) {
        if ($child->parent == $parent->id) {
            $parent->children[] = $child;
        }
    }
}
//echo '<pre>',print_r($p_data);
$result = json_encode($p_data);
$jsonFile = fopen("files/assignment-2-transformed.json", "w") or die("Unable to open file!"); //creating file
fwrite($jsonFile, $result); //writing data in a file
fclose($jsonFile); // closing file
?>
