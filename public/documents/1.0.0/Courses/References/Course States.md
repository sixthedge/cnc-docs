## Cross Network

##### Approval States
- [Drafting](#drafting)
- [Pending](#pending)
- [Approved](#approved)
- [Rejected](#rejected)
- [Reviewing](#reviewing)
- [Revision Pending](#revision-pending)
- [Completed](#completed)
- [Published](#published)

##### Record States
- [Cancelled](#cancelled)
- [Deleted](#deleted)

##### Appendices
- Figure 1 - [Approval States Diagram](#figure-1)
- Figure 2 - [Record States Diagram](#figure-2)

---
[Approval States Diagram](#figure-1)
![Cross Network Approval States](references/courses/CrossNetworkApproval.png)

### Drafting
> Drafting is the initial state that a course is set to when you create a course. This allows you to create a course without knowing all of the required information before creating a course. While in a draft state, only the course administrators will be able to see the course.

##### Visible To
Drafting courses can be seen only by the Course administrators. The course does not appear to CIRTL Central or any other members.

##### Location
A course in the draft state will appear only under the My Courses page, and clicking the link will take you to the wizard to continue the creation process.

##### Transitions
- **To >>** [Pending](#pending): After all validations are passed and the proposal is submitted.

##### Wizard 
- **Steps Unlocked**: Details, Outcomes, Assessment, Confirmation
- **Steps Locked**: Logistics

### Pending
> Pending courses have all the required fields present for a valid proposal. They are awaiting action from an authority (CIRTL Central for cross-Network courses, institutional leaders for Local courses).

##### Visible To
Pending courses can be seen by the course administrators as well as CIRTL Central.

##### Location
- **Course Admin:** My Courses > Created
- **CIRTL Central:** Course Admin > Proposed


##### Transitions
- **To >>** [Approved](#approved):  CIRTL Central action from the Course Review page.
- **To >>** [Reviewing](#reviewing): CIRTL Central action from the Course Review page.
- **To >>** [Rejected](#rejected):  CIRTL Central action from the Course Review page.

- **From <<** [Drafting](#drafting): After submission of the initial proposal.

##### Wizard 
- **Steps Unlocked**: Details, Outcomes, Assessment, Confirmation
- **Steps Locked**: Logistics

### Approved
> Approved courses have had their proposals reviewed by a CIRTL Central and been accepted. The course administrators are prompted to complete the course creation process by filling out the course logistics. This includes when the course starts and ends, as well as the details of the meetings that make up the course’s instruction schedule.

##### Visible To
Approved proposals can be seen by the course administrators. The course does not appear to CIRTL Central.

##### Location
- **Course Admin:** My Courses > Created

##### Transitions
- **To >>** [Completed](#completed): After Course Admin has finished the logisitics and submitted the approved proposal.

- **From <<** [Pending](#pending): CIRTL Central action from the Course Review page.
- **From <<** [Reviewing](#reviewing): CIRTL Central action from the Course Review page.
- **From <<** [Revision Pending](#revision-pending): CIRTL Central action from the Course Review page.

##### Wizard 
- **Steps Unlocked**: All

### Rejected
> A proposal is rejected it does not meet CIRTL requirements during Course Review. If a course is rejected, it will only appear to the administrators of the course under My Courses > Created.

##### Visible To
Rejected proposals can be seen by the course administrators. The course does not appear to CIRTL Central.

##### Location
- **Course Admin:** My Courses > Created

##### Transitions
- **To >>** [Deleted](#deleted): Course administrators action from the Course page.
- **To >>** [Cancelled](#cancelled): Course administrators action from the Course page.

- **From <<** [Pending](#pending): CIRTL Central action from the Course Review page.
- **From <<** [Reviewing](#reviewing): CIRTL Central action from the Course Review page.
- **From <<** [Revision Pending](#revision-pending): CIRTL Central action from the Course Review page.

### Reviewing
> Courses that are in the reviewing state have been flagged for further edits to meet the requirements in accordance with CIRTL Central. Optionally, CIRTL Central can leave leave feedback for guidance in amending the proposal.

##### Visible To
Reviewing proposals can be seen by their course administrators. The course does not appear to CIRTL Central.

##### Location
- **Course Admin:** My Courses > Created

##### Transitions
- **To >>** [Revision Pending](#revision-pending): Re-submitting the course via the wizard
- **To >>** [Approved](#approved): CIRTL Central action from the Course Review page.
- **To >>** [Rejected](#rejected): CIRTL Central action from the Course Review page.

##### Wizard 
- **Steps Unlocked**: Details, Outcomes, Assessment, Confirmation
- **Steps Locked**: Logistics

### Revision Pending
> Revision Pending proposals have all the required fields present for a valid proposal and have been re-submitted after amending issues given via feedback by CIRTL Central. The proposal is again awaiting action from an authority.

##### Visible To
Revision Pending courses can be seen by the course administrators as well as CIRTL Central.

##### Location
- **Course Admin:** My Courses > Created
- **CIRTL Central:** Course Admin > Proposed page

##### Transitions
- **To >>** [Reviewing](#reviewing): CIRTL Central action from the Course Review page.
- **To >>** [Approved](#approved): CIRTL Central action from the Course Review page.
- **To >>** [Rejected](#rejected): CIRTL Central action from the Course Review page.

- **From <<** [Reviewing](#reviewing): After a Course adminstrator has resolved pending issues and re-submitted.

##### Wizard 
- **Steps Unlocked**: Details, Outcomes, Assessment, Confirmation
- **Steps Locked**: Logistics

### Completed
> Completed proposals have been approved by an administrator and had their logistics included. At this point, the course is ready to be published.

##### Visible To
Completed courses are visible to their course adminstrators.

##### Location
- **Course Admin:** My Courses > Created

##### Transitions
- **To >>** [Published](#published): Course administrator action from the Course page.

- **From <<** [Approved](#approved): CIRTL Central from the Course review.

##### Wizard 
- **Steps Unlocked**: All

### Published
> Published courses are open to the CIRTL Network for registration. They can be viewed by the general CIRTL Network. They can have all of their data edited in the course editor by course administrators or CIRTL Central.

##### Visible To
Published courses are visible to everybody on the CNC, with a few exceptions.

##### Location
- `Upcoming Courses` >> <small>Published courses for any future semester</small>

- `My Courses > Created` >> <small>Any Course Administrator</small>

- `My Courses > Attending` >> <small>Any Registered Member</small>

- `Course Archive` >> <small>Courses past their end date.</small> 

- `Course Admin > Current` >> <small>CIRTL Central for any published course in the current semester*.</small> 

- `Course Admin > Upcoming` >> <small>CIRTL Central for any published course in future semesters*.</small>

<small>_*Semesters are determined by time ranges set by CIRTL Central in `Course Admin > Semester Deadline`_</small>



##### Transitions
- **To >>** [Cancelled](#cancelled): Course administrators or CIRTL Central via the Course page.
- **To >>** [Deleted](#deleted): Course administrators or CIRTL Central via the Course page.

- **From <<** [Completed](#completed): Course administrators action from the Course page.

##### Wizard 
- **Steps Unlocked**: All

### Cancelled
> Cancelled courses will restrict registration for members and remove it from displaying within most of the system. Cancellation differs from deletion in that cancelled courses can be reinstated, while deleted courses cannot.

##### Visible To
Cancelled courses are visible to their course administrators.

##### Location
- **Course Admin:** `My Courses > Created`

##### Transitions
Cancelled course are able to be reinstated to the previous state before being cancelled with the exception that a cancelled course that was published will be set to completed instead.

### Deleted
> A deleted course will effectively remove the course entirely from the system. This is called a soft-delete state that allows us to keep the course in the database in case of error or tracking purposes. It will not appear anywhere within the application and only exists for our record.

##### Visible To
Deleted courses are not visible to anyone 

##### Location
Deleted courses do not appear anywhere within the application

##### Transitions
Deleted courses can not be transitioned from

### Appendix

#### Figure 1
Approval States Diagram

![Cross Network Approval States](references/courses/CrossNetworkApproval.png)

#### Figure 2
Record States Diagram

![Cross Network Record States](references/courses/CrossNetworkRecord.png)