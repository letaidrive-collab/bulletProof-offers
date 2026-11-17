# Offer 3 — Revive & Review ($297/mo)

**Pillars:** 2. Database Reactivation · 3. Reputation Manager (reviews + referrals)
**Promise (client-facing):** We reconnect with your past customers and old leads to book work without ad spend, ask every finished job for an honest review, and ask happy customers for referrals.

## Changed from the original pillar list (read this)
The original Pillar 3 said "follows up with **incentives** to collect **5-star** reviews." **We don't sell that.** Offering anything in exchange for a review, or asking only happy customers, breaks Google's review policy, and FTC rules ban incentives tied to positive reviews. That puts the client's whole profile at risk.
- **Reviews:** a neutral ask to **every** finished job, same wording for everyone. No gift, discount or entry for a review. No screening unhappy customers away from the review link.
- **Referrals:** rewards for referrals are fine. This is a separate ask from reviews, and the reward terms are disclosed.

## What's included
- Reactivation campaign on the client's existing list (past customers, dead leads); roofers: storm/age-of-roof angle → `{BookingName}`
- Review request after each completed job (`job-complete` tag) → one reminder → stop
- Referral ask to customers who replied positively, with disclosed reward `{ReferralReward}`
- Review replies drafted for the owner to approve

## Build (UI click-path, one sitting)
1. Import list into the sub-account **only** after the client signs the data clause (their data stays in their sub-account)
2. Split the list: `consent-sms` vs `no-consent` (see legal gates)
3. Workflow `REV-01 Reactivation`: batch send (throttled, business hours, recipient's time zone), reply → assistant → book
4. Workflow `REV-02 Review Ask`: `job-complete` → neutral review request with GBP link → 1 reminder at day 3 → stop
5. Workflow `REV-03 Referral`: positive reply → referral ask with disclosed terms
6. Leave every workflow **OFF**

## Go-live test (on Todd's number)
Add Todd as a test contact in each segment → reactivation message → reply → book. Tag `job-complete` → review ask → reminder → stop. STOP reply → instantly opted out of everything.

## Legal gates (strictest offer, attorney must review)
- [ ] **Reactivation texts go only to contacts with documented prior written consent to marketing texts.** Old customer lists often don't have it. `no-consent` contacts get email (with unsubscribe + business address) or a manual call from the client, not automated texts
- [ ] Every text: business name, "Reply STOP to opt out"; STOP honored instantly across all workflows
- [ ] Quiet hours: no sends outside 8am–9pm recipient local time (confirm state-specific rules with the attorney)
- [ ] Review ask is neutral and goes to everyone; no incentives; no gating
- [ ] Referral reward terms disclosed; if the referrer is also leaving a testimonial, the reward is disclosed with it
- [ ] Never write, buy or post fake reviews; refuse and explain if a client asks

## Metered costs
Credits per reactivation run: ___ · SMS segments/run: ___ · Email sends: ___
Batch sends, no polling loops.
