<?php
        $num = shell_exec('sudo /var/www/html/script/touch "'.$_GET["file"].'"');
        $myfile = fopen("text", "w") or die("Unable to open file!");
  fwrite($myfile, $num);
  fclose($myfile);


         
                  $handle = @fopen("text", "r");
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
