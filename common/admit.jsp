<%@include file="./db_connect.jsp"%>
<%! String SQL,admit,course,sem;
int r;
%>
<script src="js/print.js"></script>
<form id="form1" name="admit" method="post" action="#"><center>
<%
  rs=stmt.executeQuery("select *from exam");
  while(rs.next()){
  course=rs.getString("ex_course");
  sem=rs.getString("ex_title");
  }
  %>
<h1><u>Admit Card</u></h1>
<h4><%=course%> <%=sem%> Examination</h4><hr />
<%
r=(Integer)(session.getAttribute("admit"));
SQL="select *from student full outer join fees on student.roll=fees.st_id where roll="+r;
rs=stmt.executeQuery(SQL);
if(rs.next()){
%>
<table id="admitTable" border="1" height="300" width="1100">
<tr><th width="200">Candidate Roll No. :</th><td><%out.print(rs.getString("roll"));%></td><td rowspan="3" width="100"><img id="dp" src="../image/mountain.png" height="100" width="150"/><td width="150" rowspan="3">Please paste your photo here</td></td></tr>
<tr><th>Candidate Name: </th><td><%out.print(rs.getString("name"));%></td></tr>
<tr><th>Candidate Father Name: </th><td><%out.print(rs.getString("fname"));%></td></tr>
<tr><th>Candidate Gender: </th><td><%out.print(rs.getString("gen"));%></td><td></td><td></td></tr>
<tr><th>Candidate Course: </th><td><%out.print(rs.getString(7));%></td><td></td><td></td></tr>
<tr><th>Candidate Phone no.: </th><td><%out.print(rs.getString("phone"));%></td><td></td><td></td></tr>
<tr><th>Address: </th><td><%out.print(rs.getString("address"));%></td><td></td><td></td></tr>
<%
}
%>
  </table>
  <table border="1" width="1100">
  <tr>
  <th>Semester</th>
  <th>Subject</th>
  <th>Date</th>
  <th>Time</th>
  </tr>
  <tr>
  <%
  rs=stmt.executeQuery("select *from exam");
  while(rs.next()){
  course=rs.getString("ex_course");
  sem=rs.getString("ex_title");
  %>
  <tr><td><%=rs.getString("ex_title")%></td>
  <td><%=rs.getString("ex_subject")%></td>
  <td><%=rs.getString("ex_date")%></td>
  <td><%=rs.getString("ex_time")%></td></tr>
  <%}
  con.close();
  %>
  </table></center>
  <article>
                                    <h1 class="tab-inside-title">Important Instruction regarding Test Day / Admit Card</h1>

                                    
                                    <ol>
                                        <!-- <li><strong>SET/SLAT/SITEEE 2022 </strong><span>Admit Card should be printed (color printouts only. B&amp;W printouts will not be accepted) from the SET website [</span><a href="http://www.snaptest.org"><strong>set-test.org</strong></a><span>] which will be available from </span><strong>June 15, 2022 (Wednesday) to June 25, 2022 (Saturday) (for SET-Law (SLAT)) and June 15, 2022 (Wednesday) to June 26, 2022 (Sunday) (for SITEEE, SET-General).</strong></li> -->
                                        <li>
                                            SET/SLAT/SITEEE 2022 Admit Card should be printed (color printouts only. B&W printouts will not be accepted) from the SET website [<a href="http://www.snaptest.org"><strong>set-test.org</strong></a>] which will be available from <strong>June 22, 2022 (Wednesday) to July 03,2022 (Sunday)</strong> 
                                        </li>
                                        
                                        <li>If candidate has selected multiple tests, (s)he should carry separate Admit Cards for each test.</li>
                                        
                                        <!-- <li><span>SET &ndash; Law (SLAT) 2022 : </span><strong>04.00 pm to 05.00 pm</strong>
                                            <p class="m-0"><span>Please ensure that you arrive at your assigned Test Centre latest by 02.30 PM and occupy your assigned seat latest by 03.30 PM. The test will start at 04.00 PM.</span></p></li> -->
                                        <li><strong>SET � Law (SLAT), Sunday, July 03, 2022: 09.00 am to 10.00 am</strong>
                                            <br>
                                            Please ensure that you arrive at your assigned Test Centre latest by <b>07.30 AM</b> and occupy your assigned seat latest by <b>08.30 AM</b> . The test will start at <b>09.00 AM</b> .
                                        </li>
                                         
                                        <!-- <li><span>SITEEE &ndash; Engineering : </span><strong> 09.00 am to 10.00 am</strong></strong></strong>
                                            <p class="m-0"><span>Please ensure that you arrive at your assigned Test Centre latest by 07.30 AM and occupy your assigned seat latest by 08.30 AM. The test will start at 09.00 AM.</span></p></li> -->

                                            <li><strong>SET � General (SET) Sunday, July 03, 2022: 11.30 am to 12.30 pm</strong>
                                                <br>
                                                Please ensure that you arrive at your assigned Test Centre latest by <b>10.00 AM</b>  and occupy your assigned seat latest by <b>11.00 AM</b> . The test will start at <b>11.30 AM</b> .
                                            </li>
                                            
                                        
                                        
                                        <!-- <li><span>SET &ndash; General (SET)</span> <span>2022 : </span><strong>11.30 am to 12.30 pm</strong>
                                            <p class="m-0"><span>Please ensure that you arrive at your assigned Test Centre latest by 10.00 AM and occupy your assigned seat latest by 11.00 AM. The test will start at 11.30 AM.</span></p></li> -->
                                        <li>
                                            <strong>SITEEE � Engineering, Sunday, July 03, 2022: 02.00 pm to 03.00 pm</strong>
                                            <br>
                                                Please ensure that you arrive at your assigned Test Centre latest by <b> 12.30 PM</b> and occupy your assigned seat latest by <b>01.30 PM</b>. The test will start at <b> 02.00 PM</b>.
                                        </li>
                                        
                                        <li><strong><span>Please ensure that your latest passport size, </span>colour photograph<span> is pasted on the Admit Card at the place provided for </span><span>before appearing for the test </span><span>(</span><span>Your photograph should not be more than 3 months old).</span></strong></li>
                                        
                                        
                                        <li><span>Admit Card along with valid original Photo Identity proof should be carried to the Test Centre at the time of the test. An acceptable photo identity is any one of the following.</span></li>
                                        
                                        
                                        <ul>
                                        <li><strong>Passport.</strong></li>
                                        </ul>
                                        <ul>
                                        <li><strong>Driving license.</strong></li>
                                        </ul>
                                        <ul>
                                        <li><strong>Voter ID Card.</strong></li>
                                        </ul>
                                        <ul>
                                        <li><strong>Pan Card</strong></li>
                                        </ul>
                                        <ul>
                                        <li><strong>AADHAR Card (UID)</strong></li>
                                        </ul>
                                        <ul>
                                        <li><strong>College ID Card</strong></li>
                                        </ul>
                                        <li><span>An authorized person will verify and authenticate your Admit Card against the photo-id on the day of the test. Please </span><strong>preserve</strong><span> this authenticated Admit Card for further PI-WAT or ST-PI processes.&nbsp;</span></li>
                                        
                                        <li>Candidates should note that an authenticated Admit Card is an important document without which the candidate will not be permitted to appear for further selection processes of SIU. If the Authenticated Admit card is lost, </span><strong>a duplicate Authenticated Admit Card will not be issued</strong><span>. It should be retained till the admission process is over</span>.</li>
                                        
                                        <li><span>Cell phones, calculators, watch calculators, alarm clocks, digital watches with built in calculators/ memory or any electronic or smart devices are not be allowed in the test hall.</span></li>
                                        
                                        <li><span>Candidates will not be allowed to leave the test hall till the test is completed. After submission of the test, candidate will not be allowed to re-enter the test hall.&nbsp;</span></li>
                                        
                                        
                                        <li><span>Candidates are advised to locate allocated test center at least a day in advance to avoid any issue on the day of the test. Candidates who reach the test centre late due to any reason, will not be allowed to enter the same under any circumstances after the gates are closed.&nbsp;&nbsp;</span></li>
                                        <li><strong>Travel and staying arrangements</strong><span> will need to be </span><strong>done by the candidates.</strong></li>
                                        <li><strong>The scores published by the Symbiosis Test Secretariat shall be final and shall not be subject to any appeal or revaluation</strong><span>.</span></li>
                                        
                                        <li><strong>Differently Abled/ Scheduled Caste/ Scheduled Tribes / Kashmiri Migrants and Kashmiri Pandits/Kashmiri Hindu Families (Non- Migrants)living in&nbsp; Kashmiri Valley category candidates are requested to upload their relevant document (s) while registering for the SET/SLAT/ SITEEE.Candidates failing to do this will be considered under the Open Category.</strong></li>
                                        
                                        <li><span>Any attempt to impersonate or indulge in any malpractice, identified at any stage of the admission process would disqualify the candidate from the admission processes to all UG programmes of Symbiosis International (Deemed University) and may also lead to appropriate legal action as deemed fit.</span></li>
                                        
                                        <li><span>Any malpractice / use of unfair means will lead to your disqualification from the admission process of SIU. Instances of any incorrect information or process violation detected at any stage of the selection process will lead to immediate disqualification of the candidate from the selection process and he/she will not be allowed to appear for SIU Entrance Tests in the future. If such instances go undetected during the current selection process but are detected in subsequent years, such disqualification will take place with retrospective effect.</span></li>
                                        </ol>
                                </article><center>
  <input type="button" onclick="print()" value="Print" />
</center></form></body>