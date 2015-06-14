<?php
     
	      
	
	$num = shell_exec('sudo /var/www/html/script/edit.pl "'.$_GET["file"].'" "'.$_GET["str"].'" ' );
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


	//$text = $_GET["str"];
	//$pieces = explode("\n", $text);
	//$pieces = preg_split("/\r\n|\n|\r/", $text);
	//echo $text
	
/*	echo $pieces[0];
	echo "<br>";
	echo $pieces[1];
	echo "<br>";
	echo $pieces[2];
	echo "<br>";
	echo $pieces[3];
	echo "<br>";
	echo $pieces[4];*/
	
	//$num = shell_exec('sudo /var/www/html/script/edit.pl "'.$_GET["file"].'" "'.$_GET["str"].'" ' );
	
	/*
    $myfile = fopen("text", "w") or die("Unable to open file!");
	fwrite($myfile, $text);
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
	*/

?>



