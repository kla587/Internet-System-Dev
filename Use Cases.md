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
    <td width="75%">User/Developer, Legal, Community</td> 
  </tr>
  <tr>
    <td width="25%">Precondition</td>
    <td width="75%">User must have valid POM file, valid connections to Maven central</td> 
  </tr>
  <tr>
    <td width="25%">Minimal Guarantees:</td>
    <td width="75%">Maven receives POM and generates artifact ID </td> 
  </tr>
  <tr>
    <td width="25%">Trigger:</td>
    <td width="75%">POM files are sent to Maven Central</td> 
  </tr>
  <tr>
    <td width="25%">Main Success Scenario:</td>
    <td width="75%">Dependency relationship information is generated </td> 
  </tr>
</table>

<table border="1" style="width:100%">
  <tr>
    <td width="25%">Use Case Name:</td>
    <td width="75%">License Request</td> 
  </tr>
  <tr>
    <td width="25%">Primary Actor:</td>
    <td width="75%">User/Developer</td> 
  </tr>
  <tr>
    <td width="25%">Stakeholders:</td>
    <td width="75%">User/Developer, Legal, Community</td> 
  </tr>
  <tr>
    <td width="25%">Precondition</td>
    <td width="75%">Prebuilt artifact, proper connection to DoSOCs DB, artifact ending in .jar, and dependencies from Maven Central</td> 
  </tr>
  <tr>
    <td width="25%">Minimal Guarantees:</td>
    <td width="75%">Request for license scan sent to DoSOCS</td> 
  </tr>
  <tr>
    <td width="25%">Trigger:</td>
    <td width="75%">pom.xml and artifact</td> 
  </tr>
  <tr>
    <td width="25%">Main Success Scenario:</td>
    <td width="75%">Dependency relationship information is scanned for licensing, creating a dependency structure within the DoSOCs db </td> 
  </tr>
</table>
