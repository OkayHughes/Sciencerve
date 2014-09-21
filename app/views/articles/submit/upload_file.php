<body><h2><i>Submission thingy</i></h2></body>


<?php
$allowedExts = array("gif", "jpeg", "jpg", "png", "txt");
$temp = explode(".", $_FILES["file"]["name"]);
$extension = end($temp);
  if ($_FILES["file"]["error"] > 0)
    {
    echo "OH NOES YOU CREATED AN ERROR EMCH WILL BE SAD :(<br>";
    echo "Return Code: " . $_FILES["file"]["error"] . "<br>";
    }
  else
    {
    echo "Upload: " . $_FILES["file"]["name"] . "<br>";
    //echo "Type: " . $_FILES["file"]["type"] . "<br>";
    echo "Size: " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
    //echo "Temp file: " . $_FILES["file"]["tmp_name"] . " <br>";

    if (file_exists("upload/" . $_FILES["file"]["name"]))
      {
      echo $_FILES["file"]["name"] . " already exists. ";
      }
    else
      {
      move_uploaded_file($_FILES["file"]["tmp_name"], "upload/" . $_FILES["file"]["name"]);
      echo "Stored in: " . "upload/" . $_FILES["file"]["name"];
      }


  //window.open(upload);
  //fopen($_FILES["file"]["tmp_name"],r+);

  $pathtothing =  "bash /var/www/html/albert.sh " . $_FILES["file"]["name"] . " gradefolder";
  echo $pathtothing;
  echo "<p><plaintext>";

   echo shell_exec ($pathtothing);
  }
?>
