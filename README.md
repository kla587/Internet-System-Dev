<h2>README: Welcome to our GITHUB!</h2>

<h3>SYSTEM DESCRIPTION</h3> 
  <p>Our system will use the foundations from DoSOCS to accept pom files and scan for license information. Our plug inthen sends the jar files found in the pom file to Maven Central to find all dependencies within open source files. The plugin will store the scanned licensing information into a temp folder. It will check the SPDX database before scanning to determine if the files have already been scanned by using SHA256 caching. The dependancies returned fromMaven Centarl are stored in a seperate database relfecting their relationships</p>  
  
<h3>SYSTEM ENVIRONMENT</h3>
 <h6>Ubuntu 14.04</h6>
  <ul><p>http://www.ubuntu.com/download/desktop </p></ul>
 <h6>Python 2.7.6</h6>
    <ul><p>https://www.python.org/download/releases/2.7.6/</p></ul>
 
 <h3>SYSTEM DEPENDENCIES</h3>
 <h6>DoSOCSV2:</h6>
   <ul><p>Install Instructions:  Follow the instruction to install DoSOCSV2 from this website              https://github.com/DoSOCSv2/DoSOCSv2</p></ul>
 <h6>Maven 3.0.5:</h6>
   <ul><p>Install Instructions: Follow the instructions to install Maven. https://maven.apache.org/docs/3.0.5/release-notes.html</p></ul>
  
<h3>COPYRIGHT</h3>
  <ul><h6>Donatien Adjadohoun</h6></ul>
  <ul><h6>Aayush Khadka</h6></ul>
  <ul><h6>Faisal Al Rashdi</h6></ul>
  <ul><h6>Mikayla Newton</h6></ul>
  
<h3>SOURCE LICENSE</h3>
   <h6>GPLv2:</h6> <p>The license under which the WordPress software is released is the GPLv2 (or later) from the Free Software           Foundation. A copy of the license is included with every copy of WordPress</p>
  <ul>https://wordpress.org/about/license/</ul>
  
<h3>DOCUMENT LICENSE</h3>
  <h6>Attribution 4.0 International:</h6> <p>This is a human-readable summary of (and not a substitute for) the license.</p>
  <ul> https://creativecommons.org/licenses/by/4.0/</ul>
  
<h3>COMMUNICATION PLAN</h3>

  <p>As a group we plan to use guthub as our main point of communication. We create issues to log the parts that we are wprking on and   allow us all to see what eachother is working on and to ask question pertaining to our plugin code and repository.</p>

<h3>Data Flow Diagram<h3>
<img src = "https://cloud.githubusercontent.com/assets/16999040/13761170/fd55f59a-ea04-11e5-92ab-1fc63b1249c4.jpg"></img>
