# End-to-End Test (Todd's number) Before Every Go-Live

Automations stay **OFF** until every line for the purchased offers passes. Record the result in the table.

| Step | Offer | Pass condition | Result | Date |
|---|---|---|---|---|
| Submit web form | 1 | Text arrives; seconds recorded | | |
| Book from text | 1 | Calendar entry + pipeline card | | |
| Reminders | 1 | 24h + 2h fire | | |
| Call + hang up | 2 | Missed-call text arrives | | |
| FAQ by text | 2 | Correct answer from intake | | |
| Reschedule | 2 | Appointment moves | | |
| Coach roleplay + graded test call | 2 | Grade report generated; disclosure played | | |
| Reactivation message | 3 | Sent to consent segment only | | |
| `job-complete` → review ask | 3 | Neutral ask, 1 reminder, then stops | | |
| Reply STOP | all | Opted out of every workflow immediately | | |
| Test ad lead | 4 | Lands in sub-account → instant text | | |
| Weekly report | all | Score, reviews gained, GBP activity, what we did | | |

Pass all → Todd turns workflows ON. Fail any → fix, retest the whole offer.
