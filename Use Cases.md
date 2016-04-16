<h3>Use Cases</h3>
<table border="1" style="width:100%">
  <tr>
    <td width="25%">Use Case Name:</td>
    <td width="75%">Dependency Request</td> 
  </tr>
  <tr>
    <td width="25%">Primary Actor:</td>
    <td width="75%">User/Developer</td> 
  </tr>
  <tr>
    <td width="25%">Stakeholders:</td>
    <td width="75%">User/Developer, Plugin, Maven, Temp File</td> 
  </tr>
  <tr>
    <td width="25%">Precondition</td>
    <td width="75%">User must have POM file and prebuilt artifact, valid connections to dosocs db and maven central</td> 
  </tr>
  <tr>
    <td width="25%">Minimal Guarantees:</td>
    <td width="75%">POM file sent to plugin </td> 
  </tr>
  <tr>
    <td width="25%">Success Guarantees:</td>
    <td width="75%">Maven Central sends POM dependency information to temp folder to store in tree</td> 
  </tr>
  <tr>
    <td width="25%">Trigger:</td>
    <td width="75%">POM files are sent to Maven Central</td> 
  </tr>
  <tr>
    <td width="25%">Main Success Scenario:</td>
    <td width="75%">Maven sends POM dependency information to temp folder and is store in a tree by Prereq_For</td> 
  </tr>
</table>

<table border="1" style="width:100%">
  <tr>
    <td width="25%">Use Case Name:</td>
    <td width="75%">License Request</td> 
  </tr>
  <tr>
    <td width="25%">Primary Actor:</td>
    <td width="75%">User, Plugin</td> 
  </tr>
  <tr>
    <td width="25%">Stakeholders:</td>
    <td width="75%">User, Plugin, DoSOCS, Temp File</td> 
  </tr>
  <tr>
    <td width="25%">Precondition</td>
    <td width="75%">Dependency information stored in temp file</td> 
  </tr>
  <tr>
    <td width="25%">Minimal Guarantees:</td>
    <td width="75%">Request for license scan sent to DoSOCS</td> 
  </tr>
  <tr>
    <td width="25%">Success Guarantees:</td>
    <td width="75%">DoSOCS will scan jar files for license information stored in SPDX Database.</td> 
  </tr>
  <tr>
    <td width="25%">Trigger:</td>
    <td width="75%">Request for license scan sent to DoSOCS from plugin</td> 
  </tr>
  <tr>
    <td width="25%">Main Success Scenario:</td>
    <td width="75%">DoSOCS will check to see if jar files have been scanned and only scan those that have not been. License information stored in SPDX Database. DoSOCS sends the scanned information back to the plug in for dependency tree report</td> 
  </tr>
</table>
