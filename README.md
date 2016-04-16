<h2>README: Welcome to our GITHUB!</h2>

<h3>SYSTEM DESCRIPTION</h3> 
  <p>Our system uses a forked version of DoSOCsv2 which contains a feature that gives dosocs a pom.xml and its artifacts and source files and relays dependency information in the corresponding table</p>

<p>The feature works by performing a oneshot scan on the artifacts. It then creates a temporary directory in the currecnt folder, it will then copy all the transitive dependencies from the original pom.xml into the temp directory. When this is accomplished dosocs then creates documents for all the dependencies in the temp folder. It also generates external document references to refer to the project artifacts document and various metadata which are needed to render dependency relationship information.  </p> 

<h5>Point and Click Process:</h5>
<p>Our system currently works in pieces to achieve our goal of scanning POM files and storing them and license information into a database that can be queried. </p>

<p>We begin by using the code from our shell script, plug.sh, to send a POM file to maven central. Once POM file has been parsed by Maven, it stores a dependency tree in its local default repository.  Maven then outputs a dependency tree into a text file. We are in the process of moving the jar files from the local Maven repo to a temporary folder. We are exploring two different avenues to parse the local repo for the jar files. The first uses a regex to match jar files and save them into a new temp folder. The other uses a Maven plugin, called Assembly. We will then have DoSOCS scan the temp folder; currently it is scanning the local Maven repo. We are working to create a project table in the DoSOCS database to house the dependency tree.</p>

<p>At this point the dependency information will be stored in the DoSOCS database using the Prereq_For key. We have not started storing this information in the database at this time. We are working to convert perl code to python to run the parse. The parsing code is barrowed from a perl project that Mikayla Newton wrote for another class. </p>

<p>Also referring to https://docs.python.org/2/tutorial/inputoutput.html for how to read and write in python.</p>

  
<h3>SYSTEM ENVIRONMENT</h3>
 <h6>Ubuntu 14.04</h6>
  <ul><p>http://www.ubuntu.com/download/desktop </p></ul>
 <h6>Python 2.7.6</h6>
    <ul><p>https://www.python.org/download/releases/2.7.6/</p></ul>
 <h3>Install Notes</h3>
 <p>Run the same nomos install script if you don't have nomos installed. Do a pip install on a cloned version of this project not the tarball release from dosocs.</p>
 <h6>DoSOCSV2:</h6>
   <ul><p>Install Instructions:  Follow the instruction to install DoSOCSV2 from this website              https://github.com/DoSOCSv2/DoSOCSv2</p></ul>
   <ul> https://github.com/sschuberth/dosocs2 </ul>
   
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
  <h6>CC:</h6> <p> You are free to share, copy and redistribute the material in any medium or format. Adapt, remix, transform, and build upon the material for any purpose, even commercially.<p>Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.</p>
<h3>DOCUMENT LICENSE</h3>
  <h6>Attribution 4.0 International:</h6> <p>This is a human-readable summary of (and not a substitute for) the license.</p>
  <ul> https://creativecommons.org/licenses/by/4.0/</ul>
  
<h3>COMMUNICATION PLAN</h3>

  <p>As a group we plan to use guthub as our main point of communication. We create issues to log the parts that we are wprking on and   allow us all to see what each other is working on and to ask question pertaining to our plugin code and repository.</p>

<h3>Data Flow Diagram<h3>
<img src = "https://cloud.githubusercontent.com/assets/16999040/13827518/e8709da6-eb8a-11e5-9101-9771e458876d.png"></img>

<h3> SPDX Schema </h3>
<img src = "https://cloud.githubusercontent.com/assets/17053249/14578571/f6b7cd98-0350-11e6-8caa-87aba2807eb0.png"></img>
