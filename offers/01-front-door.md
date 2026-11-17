# Offer 1 — Front Door ($297/mo)

**Pillars:** 1. Fast Mobile Website · 4. Website Manager (instant lead text-back)
**Promise (client-facing):** A site that loads fast on a phone, puts your offer at the top, and gets a reply to every new lead within seconds.

## What's included
- Single-page mobile-first site on the client's own domain, built to load in about a second (check with PageSpeed before go-live; record the real score, never claim one we didn't measure)
- Clear offer above the fold: `{PrimaryOffer}` (roofers: "Free Roof Inspection", never "estimate")
- Single-question form (step 1 = one field), progressive steps after
- Website assistant on the site: answers FAQs from intake, books `{BookingName}`
- Speed-to-lead: new form lead → text within seconds → booking link → reminders to raise show-up rate

## Build (MCP-buildable)
- [ ] Site pages from snapshot, variables filled from intake (`onboarding/intake-form.md`)
- [ ] Domain connected + SSL
- [ ] FAQ knowledge loaded from intake FAQs
- [ ] SEO basics: title, meta, LocalBusiness schema, NAP matches GBP exactly

## Build (UI click-path, one sitting; confirm exact labels on first build, then lock them here)
1. Assistant: set name `{AssistantName}`, intro line identifies it as `{BusinessName}`'s assistant
2. Calendar: `{BookingName}` slot length, buffer, hours from intake
3. Workflow `FD-01 New Lead`: form submitted → tag `lead-web` → SMS template `FD-SMS-01` → create opportunity in `Leads` pipeline
4. Workflow `FD-02 Reminders`: booking created → reminder 24h + 2h before
5. Workflow `FD-03 No Reply`: no reply 15 min → one follow-up → stop. No loops.
6. Leave every workflow **OFF**

## Go-live test (on Todd's number)
Form submit → text arrives fast (record the seconds) → book → reminders fire → shows in pipeline → shows in weekly report.

## Legal gates
- [ ] Form has SMS consent checkbox (unchecked by default) with: business name, message frequency, "Msg & data rates may apply", "Reply STOP to opt out", link to privacy policy
- [ ] No text sent to a lead who didn't check the box. They get email only
- [ ] Assistant never presents as a human
- [ ] 10DLC approved for this sub-account's number

## Metered costs (fill from first pilot, don't guess)
Credits/mo: ___ × $0.25 · SMS segments/mo: ___ · Phone number: ___ · Domain: ___
