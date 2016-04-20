<h2>README: Welcome to our GITHUB!</h2>

<h3>SYSTEM DESCRIPTION</h3> 
  <p>Our system uses a forked version of DoSOCsv2 which contains a feature that gives dosocs a pom.xml and its artifacts and source files and relays dependency information in the corresponding table</p>

<p>The feature works by performing a oneshot scan on the artifacts. It then creates a temporary directory in the current folder, it will then copy all the transitive dependencies from the original pom.xml into the temp directory. When this is accomplished dosocs then creates documents for all the dependencies in the temp folder. It also generates external document references to refer to the project artifacts document and various metadata which are needed to render dependency relationship information.  </p> 

<p>Referances: to https://docs.python.org/2/tutorial/inputoutput.html</p>
<p>http://perldoc.perl.org/functions/exec.html</p>
<p>http://perldoc.perl.org/</p>

<h3>SYSTEM ENVIRONMENT</h3>
 <h6>Ubuntu 14.04</h6>
  <ul><p>http://www.ubuntu.com/download/desktop </p></ul>
 <h6>Python 2.7.x</h6>
    <ul><p>https://www.python.org/downloads/</p></ul>
 <h6>Perl 2.7.6</h6>
    <ul><p>http://askubuntu.com/questions/119700/how-do-i-update-install-perl</p></ul>
    
 <h3>Install Notes</h3>
 <p>These are the install notes for installing system envrionment to run the plugin.</p>
 <h6>DoSOCSV2:</h6>
   <ul><p>Install Instructions:  Follow the instruction to install our DoSOCSV2 branch               https://github.com/Ayy-ay-oos/DoSOCSv2</p></ul>
  <p>Download Dosocs branch Zip file and install in Documents folder</p>
  
  <h6>Configuration</h6>
  
  <h4>Step 1 - Download and install</h4>
  <p>Based on configuration from https://github.com/DoSOCSv2/DoSOCSv2</p>

<p>Grab the source tarball for the latest release](https://github.com/ttgurney/dosocs2/releases)
and use `pip` to install it as a package. If you are not inside a virtualenv
you may have to run `pip` as root (not recommended!). Replace `0.x.x` with
the latest release version number.</p>

    $ tar xf 0.x.x.tar.gz
    $ pip install ./dosocs2-0.x.x


   <h4>Step 2 - Change the default configuration </h4>

Not required, but strongly recommended, is to generate an initial config
file:

    $ dosocs2 newconfig
    dosocs2: wrote config file to /home/tom/.config/dosocs2/dosocs2.conf

The default config points to a SQLite database stored in your home directory.
For example, for user `tom`, this database would be created at
`/home/tom/.config/dosocs2/dosocs2.sqlite3`. If you like, you can open the
config file and change the `connection_uri` variable to use a different
location for the database.

If you have [FOSSology](http://www.fossology.org/) installed, you also need
to set the path of the default `nomos` scanner if it is not already correct.
Likewise for any of the other supported scanners you want to use
(see [doc/scanners.md](doc/scanners.md))


   <h4> Step 3 (Optional) - Add PostgreSQL configuration </h4>

Follow this step if you want to use PostgreSQL instead of SQLite for the
SPDX database.

You will have to create the `spdx` (or whatever name you want) role and
database yourself.  I recommend setting a different password than the
one given...:

    $ sudo -u postgres psql
    psql (9.3.9)
    Type "help" for help.

    postgres=# create role spdx with login password 'spdx';
    CREATE ROLE
    postgres=# create database spdx with owner spdx;
    CREATE DATABASE

Then change the `connection_uri` variable in your `dosocs2.conf`:

    # connection_uri = postgresql://user:pass@host:port/database
    connection_uri = postgresql://spdx:spdx@localhost:5432/spdx


<h4>Step 4 - Database setup </h4>

Finally, to create all necessary tables and views in the database:

    $ dosocs2 dbinit

You only need to do this once. **This command will drop all
existing tables from your SPDX database, so be careful!**

<h5>Usage</h5>

The simplest use case is scanning a package, generating a
document, and printing an SPDX document in one shot:

    $ dosocs2 oneshot package.tar.gz
    dosocs2: package.tar.gz: package_id: 1
    dosocs2: running nomos on package 1
    dosocs2: package.tar.gz: document_id: 1
    [... document output here ...]

Also works on directories:

    $ dosocs2 oneshot ./path/to/directory

The scan results and other collected metadata are saved in the database
so that subsequent document generations will be much faster.

To just scan a package and store its information in the database:

    $ dosocs2 scan package.tar.gz
    dosocs2: package_tar_gz: package_id: 456
    dosocs2: running nomos on package 456

In the default configuration, if a scanner is not specified, only `nomos`
is run by default. It gathers license information, but is a bit slow.
One can use the `-s` option to explicitly specify which scanners to run:

    $ dosocs2 scan -s nomos_deep,dependency_check package.tar.gz
    dosocs2: package_tar_gz: package_id: 456
    dosocs2: running nomos_deep on package 456
    dosocs2: running dependency_check on package 456

After `dosocs2 scan`, no SPDX document has yet been created.
To create one in the database (specifying the package ID):

    $ dosocs2 generate 456
    dosocs2: (package_id 456): document_id: 123

Then, to compile and output the document in tag-value format:

    $ dosocs2 print 123
    [... document output here ...]

Use `dosocs2 --help` to get the full help text. The `doc` directory
here also provides more detailed information about how `dosocs2` works
and how to use it.
   
 <h3>Maven 3.0.5:</h3>
   <ul><p>Install Instructions: Follow the instructions to install Maven. https://maven.apache.org/docs/3.0.5/release-notes.html</p></ul>
   
   <h5> Run command:</h5>
    
     sudo apt-get install maven
   
   <h5>Check mavens version by running:</h5>
   
     mvn -version
    
   <p>It will show something like:

      Apache Maven 3.0.5
      Maven home: /usr/share/maven
      Java version: 1.7.0_51, vendor: Oracle Corporation
      Java home: /usr/lib/jvm/java-7-openjdk-amd64/jre
      Default locale: en_US, platform encoding: UTF-8
      OS name: "linux", version: "3.13.0-24-generic", arch: "amd64", family: "unix"</p>
      
      Verify Maven repo location is /urs/share/maven-repo

<h3>Install and Configure Perl</h3>

      Sudo apt-get update
	  sudo apt-get upgrade
	  sudo Apt-get install –y perl
	  sudo apt-get install libfile-find-rule-perl
	  cpan Modern::Perl
	 

	Create a folder named perl in your documents folder. Here is where you will run the plugin and where 
	the dependency tree information will be stored.  Place the pom file, that is to be scanned, into this 
	folder and name it pom.xml. It is important that theses are in the correct place for the plugin to run.

	After running, you will see a file named mvn.txt that stored the dependency tree before it is scanned
	and put into DoSocs.

<h5>Running plugin</h5>
	Download souce from source folder called plugin.pl
	Run plugin with line: Perl plugin.pl

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
