<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="webjars/dropzone/5.8.1/dist/dropzone.css" rel="stylesheet">
<script src="webjars/dropzone/5.8.1/dist/dropzone.js"></script>
<script type="text/javascript" src="webjars/jquery/3.5.1/jquery.min.js"></script>
<link href="resources/idealWorldcupMake/idealWorldcupMake.css" rel="stylesheet"/>
<script src="http://code.jquery.com/jquery-latest.js"></script>



<script type="text/javascript">
Dropzone.options.myDropzone= {
	    url: 'makeOk.do',
	    autoProcessQueue: false,
	    uploadMultiple: true,
	    parallelUploads: 5,
	    maxFiles: 32,
	    maxFilesize: 20, //MB
	    acceptedFiles: 'image/*',
	    addRemoveLinks: true,
	    paramName: "file",
	    dictRemoveFile: "삭제",
	    
	    init: function() {
	    	
	    	
	    	
	        dzClosure = this; // Makes sure that 'this' is understood inside the functions below.

	        // for Dropzone to process the queue (instead of default form behavior):
	        document.getElementById("submit-all").addEventListener("click", function(e) {
	            // Make sure that the form isn't actually being sent.
	            e.preventDefault();
	            e.stopPropagation();
	            dzClosure.processQueue();
	        });

	        //send all the form data along with the files:
	        this.on("sendingmultiple", function(data, xhr, formData) {
	            formData.append("firstname", jQuery("#firstname").val());
	            formData.append("lastname", jQuery("#lastname").val());
	        });
	        /* this.on("success",function(file,data){
	        	document.location.href="main.do";
	        }); */
	        /* this.on("addedfile",function(event){
	        	while(this.files.length > this.option.maxFiles){
	        		this.removeFile(this.file[0]);
	        	}
	        }); */
	    
	        
	    
	    }
	    
	}

</script>

        

</head>
<body>


<form action="makeOk.do" enctype="multipart/form-data" method="POST">
    <input type="text" id ="firstname" name ="firstname" />
    <input type="text" id ="lastname" name ="lastname" />
    <div class="dropzone" id="myDropzone"></div>

    <button type="submit" id="submit-all"> upload </button>
    
</form>

</body>

</html>