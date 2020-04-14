<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>

	// updates the iframe src to the newest file selected
	function previewFile() {
	  const preview = document.querySelector('iframe');
	  const file = document.querySelector('input[type=file]').files[0];
	  const reader = new FileReader();
	
	  reader.addEventListener("load", function () {
	    // convert image file to base64 string
	    preview.src = reader.result;
	  }, false);
	
	  if (file) {
	    reader.readAsDataURL(file);
	  }
	}
	
	// try saving file to sessionStorage
	//function saveFile() {
		//  if (typeof(Storage) !== "undefined") {
		//	  sessionStorage.myfile = document.querySelector('input[type=file]').files[0];
		//  } else {
		//    document.getElementById("result").innerHTML = "Sorry, your browser does not support web storage...";
		//  }
	//	}
	
</script>
	<meta charset="UTF-8">
	<style>
		body{text-align: center;}
		h2 {text-align:center;}
		ul {
			margin: 0;
			display: flex;
			justify-content: center;
			list-style-type:none;
			padding: 50;
			overflow: hidden;
			border: 2px solid black;

		}
		li{
			float: left;
			padding: 16px;	
		}
		input{
			background-color: lightgrey;
		}
		h4 {
			padding: 4px;
			text-align: center;
			background-color: black;
			color: white;
		}
				iframe {
		max-width: 800px;
		}
	</style>

	<title>File Validation Tool</title>
</head>
<body>
       <img src="https://mms.businesswire.com/media/20190422005133/en/666666/23/2018_CB_Green_342.jpg"
         alt="Commerce Bank" height="250" width="550">
        <h2>
                Nacha File Validation Tool
        </h2>

		<ul>
			<li>
			 	<form action="/action_page.php">
	        		<input type="file" id="myfile" name="myfile"  accept=".nacha,.txt" data-buttonText="Browse" onChange="previewFile()">
	        	</form>
        	</li>
        	<li>
			 	<form action="view">
	         		<input type="submit" value="Cancel">
	        	</form>
        	</li>
        	<li>
			 	<form action="contentView">
	         		<input type="submit" value="Validate File">
	        	</form>
        	</li>
		
		</ul>
		
		<br>
		<p id="me">
		<!-- iframe is used to display a file within html page
			src = the source of the file to be displayed -->
				<iframe src=myfile width=80% height=400px></iframe>
		</p>
		<h4>Messages</h4>
		<br>
		<h4>Company Specification / File Details</h4>
      
</body>
</html>