<%-- 
    Document   : CPUMonsterConfig
    Created on : 21 Oct, 2018, 5:39:08 PM
    Author     : aksarav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">   
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
  <script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
  <style>
      #makeitred
      {
          color: crimson;
      }
      label{
          font-size: 22px;
          font-weight: normal;
          color: black;
      }
      legend {
    background-color: crimson;
    color: #fff;
    padding: 3px 6px;
    width: auto
}

.output {
    font: 1rem 'Fira Sans', sans-serif;
}

input,
label {
    width: 43%;
}

input {
    margin: 1rem 0;
}

label {
    display: inline-block;
    font-size: 20px;
}

input:invalid + span:after {
    content: '✖';
    color: #f00;
    padding-left: 5px;
}

input:valid + span:after {
    content: '✓';
    color: #26b72b;
    padding-left: 5px;
}

fieldset
{
    padding-left: 2%;
    border: 2px dashed gray;
    background-color: whitesmoke;
}

.bigfont
{
    font-size: 16px;
}
  </style>
        <title>CPUMonster-Config</title>
    </head>
    <body>
        <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8">
					<h3 class="text-center">
                                            I am <span id="makeitred">The CPU Consuming Monster !</span>
					</h3>
					<p class="lead">
						Few questions I would like to ask to understand your requirement better. Before I go out there and Crunch. You would be asked only TWO questions to make me serve you better. There you GO ( I am NOT usually this polite :) )
					</p>
                                        
                                        <form action="CPUMonster.do">
                                        <fieldset>
                                           <legend>The CPU Monster Configuration</legend>

                                           <label for="NoOfThreads" data-toggle="tooltip" title="Defines the No of Concurrent Threads to be started!">No Of Threads</label>
                                           <input type="number" id="NoOfThreads" name="NoOfThreads"
                                                  placeholder="Min: 1, Max: 10" step="1" min="1" max="10" required/>
                                           <span class="validity"></span>

                                           <label for="seconds" data-toggle="tooltip" title="How long the Thread should be alive before it is self killed">Life Span of Each Thread:</label>
                                           <input type="number" id="seconds" name="seconds"
                                                  placeholder="Min: 60 Seconds , max: 1200 Seconds"
                                                  min="60" max="1200" required/>
                                           <span class="validity"></span>
                                           
                                           <br>
                                           <br>
                                           <br>
                                           <button type="submit" class="btn btn-primary bigfont">
							GO MONSTER GO..
                                           </button>

                                        </fieldset>
					</form>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>
        <hr></hr>
            <center><h4>Developed with <span id="makeitred"><i class="fa fa-heart" aria-hidden="true"></i></span> by <a href="http://www.middlewareinventory.com">Middlewareinventory</a></h4></center>
    </body>
</html>
