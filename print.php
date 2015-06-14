
<?php
      	$handle = @fopen("/var/www/html/script/".$_GET["name"], "r");

                 if ($handle)
                 {
                     while (($buffer = fgets($handle, 4096)) !== false)
                     {
                            echo $buffer;
                            echo "<br>";
                     }
     
                     if (!feof($handle))
                     {
                         echo "Error: unexpected fgets() fail\n";
                     }

                     fclose($handle);
     
                }
?>
