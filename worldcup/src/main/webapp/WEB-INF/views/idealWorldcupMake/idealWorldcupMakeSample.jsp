<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- <link href="resources/idealWorldcupMake/style.css" rel="stylesheet">
 -->
  <!-- Bootstrap core CSS -->
    <link href="webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
	<!-- dropzone -->
	<link href="webjars/dropzone/5.8.1/dist/dropzone.css" rel="stylesheet">
	<script src="webjars/dropzone/5.8.1/dist/dropzone.js"></script>

	<script type="text/javascript" src="webjars/jquery/3.5.1/jquery.min.js"></script>
	<link href="resources/idealWorldcupMake/idealWorldcupMake.css" rel="stylesheet"/>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
var value = 8;
$(document).ready(function(){
	
	$("#exampleSelectGender").change(function(){
		value = $(this).val();
		$("#myDropzone").load(window.loaction.href + "#")
		alert(value);
	});
	
});

Dropzone.options.myDropzone= {
	    url: 'makeOk.do',
	    autoProcessQueue: false,
	    uploadMultiple: true,
	    parallelUploads: value,
	    maxFiles: value,
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
<div class="row">
<div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">이상형 월드컵 등록하기</h4>
                 <!--  <p class="card-description">
                    Basic form elements
                  </p> -->
                  <form action="makeOk.do" class="forms-sample" enctype="multipart/form-data" method="POST">
                    <div class="form-group">
                      <label for="exampleInputName1">제목</label>
                      <input type="text" class="form-control" id="exampleInputName1" placeholder="제목">
                    </div>
                    <!-- <div class="form-group">
                      <label for="exampleInputEmail3">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">
                    </div> -->
                    <!-- <div class="form-group">
                      <label for="exampleInputPassword4">Password</label>
                      <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password">
                    </div> -->
                    <div class="form-group">
                      <label for="exampleSelectGender">토너먼트 라운드</label>
                        <select class="form-control" id="exampleSelectGender">
                          <option value="8">8강</option>
                          <option value="16">16강</option>
                          <option value="32">32강</option>
                          <option value="64">64강</option>
                          <option value="128">128강</option>
                          <option value="256">256강</option>
                        </select>
                      </div>
                   <!--  <div class="form-group">
                      <label>File upload</label>
                      <input type="file" name="img[]" class="file-upload-default">
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled placeholder="Upload Image">
                        <span class="input-group-append">
                          <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                        </span>
                      </div>
                    </div> -->
                    <!-- <div class="form-group">
                      <label for="exampleInputCity1">City</label>
                      <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location">
                    </div> -->
					<div class="form-group">
					    <label>파일 업로드</label>
					    <div class="dropzone" id="myDropzone" style="border: 1px solid #ced4da"></div>
					
					    
    				</div>
                    <div class="form-group">
                      <label for="exampleTextarea1">설명</label>
                      <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2" id="submit-all">Submit</button>
                    <button class="btn btn-light">Cancel</button>
                  </form>
                </div>
              </div>
            </div>
</div>
</body>
</html>