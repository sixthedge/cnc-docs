# Course States

## Cross Network

[comment]: # (Approval State Template)
[comment]: # (- Who can see the course in this state?)
[comment]: # (- Where is this course displayed while in this state?)
[comment]: # (- What Transistions can a course in this state make?))

### Approval States
Approval states are associated with the approval process for courses, going from a drafted proposal all the way to a published course within the system.
![Cross Network Approval States](references/courses/CrossNetworkApproval.png)

#### Drafting
> Drafting is the initial state of a newly created course proposal. The purpose of this state is to allow admins to begin the creation process and return at any point in case information is not yet available to submit for review.

Drafting proposals can be seen only by the Course admins in `My Courses`. 
Once the proposal is ready to be submitted it will be set to [Pending](#pending).

#### Pending
> Pending proposals have all the required fields present and valid and are are awaiting action from CIRTL Central.

Pending courses can be seen by the course admins in `My Courses > Created`
Pending proposals can be seen by CIRTL Central in `Course Admin > Propsed`

CIRTL Central will review pending proposals and set them to [Approved](#approved), [Reviewing](#reviewing) or [Rejected](#rejected)

#### Approved
> Approved propasals have been reviewed and accepted by CIRTL Central and are ready to be completed by the course admins so the course can be published.

Approved proposals can be seen by the course administrators in the 'My Courses > Created' section. When a course proposal is approved the 'Logisitics' step is unlocked in the creation/edit wizard. This step is where you will set the start and end times of the course and meetings. Upon submitting your logisitics the course will become [Completed](#completed).


#### Reviewing
> Proposals in the reviewing state have been flagged for adjustments in accordance with CIRTL Central requirements. Optionally, CIRTL Central can leave feedback for guidance in ammending the proposal.

Reviewing proposals can be seen by their course admins in `My Courses > Created`

After addressing any outstanding issues with your proposal submitting will send it to [Revision Pending](#revision-pending)

CIRTL Central still has the ability to [Approve](#approved) or [Reject](#reject) via the `Course Review` page.

#### Rejected
> A rejected proposal has not meet CIRTL requirements during Course Review.

Rejected proposals can be seen by the course admins in the `My Courses > Created`.

The only course of action after a course is rejected is to either contact CIRTL Central or [Delete](#deleted) the proposal.


#### Revision Pending
> Revision Pending proposals have all the required fields present for a valid proposal along with ammendments given via feedback by CIRTL Central. 

Pending courses can be seen by the course admins in `My Courses > Created`
Pending proposals can be seen by CIRTL Central in `Course Admin > Propsed`

CIRTL Central will review pending proposals and set them to [Approved](#approved), [Reviewing](#reviewing) or [Rejected](#rejected)

#### Completed
> Proposals are considered complete after CIRTL Central approves the proposal and course admins have included course logistics on the final step of the wizard. 

Completed courses are visible to their course admins on `My courses > Created`

Once a couse is complete view the course page to make it [Published](#published)

#### Published
> Published courses are open to the CIRTL Network for viewing and are able once registration for the assoicated semester is open.

Published cross-Network courses are visible to everybody on the CNC who are able to register for the given course.

**See [Finding Courses](/1.0.0/courses/finding-courses) for all the ways to find courses that you may be interested in or adminsitering.**

### Record States
Record states have to do with the current accessiblity of the course within the system. These states are mostly independant of approval states with the exception of cancelled courses.

#### Cancelled
> Cancelled courses will restrict registration for members and remove it from displaying within most parts of the system. Cancellation differs from deletion in that cancelled courses can be reinstated, while deleted courses cannot.

Cancelled courses are still visible to their course adminis in `My Courses > Created`

Cancelled course are able to be reinstated to the previous state prior to canellation unless the course was published in which case the course will be set to [Completed](#completed)

#### Deleted
> A deleted course will be no longer be visiible or interactable to the system. It is a soft-delete state that allows us to keep the course in the database in case of errors.

Deleted courses are not visible to anyone, can not get interacted with and only exsist as an archived database record.