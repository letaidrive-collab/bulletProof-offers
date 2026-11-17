# Offer 2 — Front Desk ($297/mo)

**Pillars:** 5. Receptionist (missed-call text-back) · 6. Closer's Coach
**Promise (client-facing):** Every missed call gets a text back right away, questions get answered, and appointments get booked or moved. Your team gets a coach that helps them close more of the jobs they run.

## What's included
- **Receptionist:** missed call → instant text → answers questions from intake FAQs → books / reschedules `{BookingName}`
- **Closer's Coach:** practice roleplays against the client's sales script; reviews recorded consultations; grades each call against the script with 3 things to fix

## Why these two together
The receptionist books the appointment; the coach helps turn it into a closed job. Same buyer (the owner), same result: more booked and closed work from the calls they already get.

## Build (UI click-path, one sitting)
1. Number: forward the client's line or provision `{TrackingNumber}`; set missed-call detection
2. Workflow `DESK-01 Missed Call`: missed call → SMS `DESK-SMS-01` → assistant handles the thread
3. Workflow `DESK-02 Reschedule`: inbound "reschedule" intent → offer 3 open slots → confirm
4. Coach: load `{SalesScript}` from intake; set grading rubric (opener, discovery, inspection walk-through, price framing, close, next step)
5. Recording: turn on only after the disclosure (below) is in place
6. Leave every workflow **OFF**

## Go-live test (on Todd's number)
Call and hang up → text-back arrives → ask an FAQ → book → reschedule → appointment moves on calendar. Run one coach roleplay and one recorded test call → grade report generated.

## Legal gates
- [ ] Missed-call text goes only to the person who just called the business, about their own call (no marketing content in it); attorney to confirm this wording is OK before 10DLC is final
- [ ] Recording disclosure on every recorded call ("This call may be recorded for quality and training"); some states require every party's consent, so we disclose on every call
- [ ] Coach recordings stay in the client's sub-account; never used for another client
- [ ] Assistant identifies as `{BusinessName}`'s assistant on every call and chat

## Metered costs
Credits/mo: ___ · SMS: ___ · Number: ___ · Recording storage/transcription: ___
**Voice answering: pending decision on the Source of Truth.** Proposal: included, minutes never mentioned, internal fair-use ceiling 1,000 min/location/month with an alert to Todd at 750.
**No usage billing to clients.** Flat $297; no overage markup (Todd, Nov 17).
