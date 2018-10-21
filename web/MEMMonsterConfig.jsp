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

.jumbotron p
{
    font-size: 16px;
    font-weight: 200;
}

body
{
    font-size: 16px;
    font-weight: 200;
    
}
.card-header{
    font-size: 16px;
    background: buttonface;
    padding: 1%;
}
  </style>
        <title>Memory Monster-Config</title>
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
                                            I am <span id="makeitred">The Memory Eating Monster !</span>
					</h3>
					<p class="lead">
						Few questions I would like to ask to understand your requirement better. Before I go out there and Crunch. Hover over the labels to read more about each input. I am already Hungry :)
					</p>
                                        
                                        <form action="MemMonster.do">
                                        <fieldset>
                                           <legend>The Memory Monster Configuration</legend>
                                           
                                           

                                           <label for="NoOfThreads" data-toggle="tooltip" title="Defines the No of Concurrent Threads to be started!">No Of Threads</label>
                                           <input type="number" id="NoOfThreads" name="NoOfThreads"
                                                  placeholder="Min: 1, Max: 10" step="1" min="1" max="10" required/>
                                           <span class="validity"></span>
                                           
                                           

                                           <label for="MMPT" data-toggle="tooltip" title="The Maximum Limit a Single Thread Can Eat (or) Grow upto">Maximum Memory Per Thread [MB]:</label>
                                           <input type="number" id="MMPT" name="MMPT"
                                                  placeholder="Min: 1 MB , Max: 500MB" step="1"
                                                  min="1" max="500" required/>
                                           <span class="validity"></span>
                                           
                                           
                                           <label for="MBPerBite" data-toggle="tooltip" title="Defines How much memory should be Eaten (or) consumed per step/cycle (or per bite)">Memory Per Bite / Incremental Value [MB]</label>
                                           <input type="number" id="MBPerBite" name="MBPerBite"
                                                  placeholder="Min: 1MB, Max : <= Maximum Memory Per Thread" step="1" min="1" required/>
                                           <span class="validity"></span>
                                           
                                           <label for="Sleeptime" data-toggle="tooltip" title="Rest time between each bite [In Monster terminolgy, Chewing Time]">Interval between each Bite [Seconds]</label>
                                           <input type="number" id="Sleeptime" name="Sleeptime"
                                                  placeholder="Min: 1 second (0.01 minute), Max : 300 Seconds (5 minutes)" step="1" min="1" max="300" required/>
                                           <span class="validity"></span>
                                           
                                           <br>
                                           <br>
                                           <br>
                                           <button type="submit" class="btn btn-primary bigfont">
							GO MONSTER GO..
                                           </button>

                                           
                                        </fieldset>
					</form>
                                         <br>
                                            <br>
                                            <div class="card">
                                                <h5 class="card-header">
                                                        Calculations and Formulas
                                                </h5>
                                                <div class="card-body">
                                                        <p class="card-text">
                                                                <ul>
                                                                    <li class="list-item">
                                                                            Consider the Max Memory per thread is 100MB, If a monster(Thread) is eating 1MB per bite (Memory Per Bite), It would have to bite 100 times to reach the Max limit
                                                                    </li>
                                                                    <li class="list-item">
                                                                            Continuation of the above case, If the Monster(Thread) is taking 60 seconds (1 Minute) break between each bite. To consume 100M, It would take 100 seconds = 1 Hour 40 minutes
                                                                    </li>
                                                                    <li class="list-item">
                                                                        The formula to calculate the various insights like <i id="makeitred">TotalTimeSpent</i> or <i id="makeitred">Total Memory Consumption</i> or  <i id="makeitred">Time taken to reach Out Of Memory (approx)</i> are as follows<br><br>
                                                                        <details>
                                                                            
                                                                            <summary><i class="fa fa-plus-square" aria-hidden="true"></i>  Total Time Spent</summary>     
                                                                        <div class="jumbotron">

                                                                                <h2>Total Time Spent</h2>
                                                                                <p>With the following Monster Configuration values</p>
                                                                                <p>No Of Threads &#8211; 10<br />
                                                                                Maximum Memory Per Thread (MMPT) &#8211; 100 MB<br />
                                                                                Memory Per Bite (MPB) &#8211; 1MB<br />
                                                                                Interval &#8211; 1 second<br />
                                                                                Time Taken Per Bite (TTPB) &#8211; 0.1 second</p>
                                                                                <p><strong>Let us calculate the Time spent for a Single Monster First</strong></p>
                                                                                <p>No of times the Monster would eat = Maximum Memory Per Thread / Memory Per Bite = <code>100/1 = 100 times</code></p>
                                                                                <p>Time Taken Per Bite ( may vary based on performance ) = <code>0.1 second</code></p>
                                                                                <p>Gap between each bite (Interval) = <code>1 second</code></p>
                                                                                <p>Total Time between each bite = 1 + 0.1 = <code>1.1 second</code></p>
                                                                                <p>Time Spent per Monster/Thread: 1.1 * 100 = <code>110 seconds</code></p>
                                                                                <p>Time Spent for 5 Monsters/Thread = Time Spent per Monster/Thread  <strong>[ Thanks to Multithreading]</strong></p>
                                                                                <p>&nbsp;</p>
                                                                                <p><strong>The Result</strong></p>
                                                                                <p>In Seconds : <code>110 Seconds</code></p>
                                                                                <p>In minutes : <code>1.83 Minutes</code></p>
                                                                                <p>&nbsp;</p>
                                                                                <p><strong>The Formula</strong></p>
                                                                                <p>In Simple the formula to calculate the Total Time Spent is</p>
                                                                                <p><code>(MMPT/MPB)*(Interval+TTPB)</code></p>
                                
                                                                        </div>
                                    
                                                                        </details>
                                                                            
                                                                        
                                                                        
                                                                        <details>
                                                                            
                                                                            <summary><i class="fa fa-plus-square" aria-hidden="true"></i>  Total Memory Consumption</summary>     
                                                                            <div class="jumbotron">
                                                                                <h2>Total Memory Consumption</h2>
                                                                                <p>Maximum Memory Per Thread  * No of Threads = Total Memory Consumption</p>
                                                                                <p><code>100 * 5 = 500 MB</code></p>
                                                                            </div>
                                                                        
                                                                        </details>
                                                                        
                                                                        <details>
                                                                            
                                                                            <summary><i class="fa fa-plus-square" aria-hidden="true"></i> Approximate time to reach OutOfMemory for 500mb JVM</summary>     
                                                                            <div class="jumbotron">                                                                           
                                                                            <h2>Time taken to reach <span style="color: #ff0000;">Out Of Memory</span> (approx)</h2>
                                                                            <p>Let us consider your -XMX <code>Maximum Heap Memory is 500MB</code></p>
                                                                            <p>With the following Monster Configuration values</p>
                                                                            <p>No Of Threads = 10<br />
                                                                            Maximum Memory Per Thread = 100 MB<br />
                                                                            Memory per byte = 1 MB<br />
                                                                            Interval = 1 second<br />
                                                                            Time taken Per Bite(approx) = 0.1 second</p>
                                                                            <p>Potential Total Memory Can be consumed = No of Threads * MMPT = 10 * 100  = 1000</p>
                                                                            <p>Approx time to reach the Potential = ((MMPT/MPB)*(Interval+TTPB)) = ((100/1)*(1+0.10)) = 110seconds</p>
                                                                            <p>1.83 minutes to consume 1000 MB</p>
                                                                            <p><code>55 Seconds is enough to consume 500 MB</code></p>
                                                                            </div>
                                                                        </details>    
                                                                            
                                                                    </li>
                                                                    <br>
                                                                    <li class="list-item">
                                                                            Feel free to add more formulas (or) Write a new Instruction, For Help Contact us at middlewareinventory.com
                                                                    </li>
                                                                    
                                                                </ul>
                                                        </p>
                                                </div>
                                                
                                            </div>
				</div>
				<div class="col-md-2">
				</div>
			</div>
		</div>
	</div>
</div>
        <hr></hr>
            <center><h4>Developed with <span id="makeitred"><i class="fa fa-heart" aria-hidden="true"></i></span> by  <a href="http://www.middlewareinventory.com">Middlewareinventory</a></h4></center>
    </body>
</html>
