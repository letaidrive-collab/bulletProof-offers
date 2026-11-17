# BulletProof Systems — The Four $297 Offers

Internal build repo for FastFwd Future. **Prices, offers and rules: see `SOURCE-OF-TRUTH.md` — it wins.** Seven pillars, packaged as **four offers at $297/mo each**.
All four bought separately = $1,188/mo. **Full System bundle = $1,000/mo** (saves $188/mo).

The order matters. It's the *bucket with holes* idea: seal the leaks first (Offers 1–3), then pour in paid traffic (Offer 4). Ads into a leaky bucket waste the client's money and make us look bad.

| # | Offer (client-facing name) | Pillars inside | Plugs this hole | Price |
|---|---|---|---|---|
| 1 | **Front Door** | 1. Fast Mobile Website · 4. Website Manager (instant lead text-back) | Visitors bounce off a slow site; leads go cold before anyone replies | $297/mo |
| 2 | **Front Desk** | 5. Receptionist (missed-call text-back + booking) · 6. Closer's Coach | Missed calls go to a competitor; booked jobs don't close | $297/mo |
| 3 | **Revive & Review** | 2. Database Reactivation · 3. Reputation Manager (reviews + referrals) | Past customers and dead leads sit untouched; reviews and referrals don't get asked for | $297/mo |
| 4 | **Fill the Bucket** | 7. Marketing Director (paid ads + instant follow-up) | No steady new lead flow | $297/mo + ad spend (paid by client directly to the ad platform) |

Seven pillars into four offers: three offers hold two pillars each, and Offer 4 holds only paid ads, on purpose.
It's the only offer that spends the client's money, and it's **gated**: we sell it only to a location that already has Offers 1 and 2 live (see `offers/04-fill-the-bucket.md`).

## Each offer stands on its own
Each offer has to be something the client would feel losing. A client can start with any of Offers 1–3. Offer 4 can't come first.
Suggested starting point for roofers: **Offer 3** (reactivation gets a quick win from their existing list), then Offer 1, then Offer 2.

## Repo map
```
offers/        one build spec per offer: what's included, build steps, go-live test, legal gates, metered costs
copy/          CLIENT-FACING text only. Linted by scripts/lint-language.sh
legal/         guardrail checklist + attorney sign-off tracker
onboarding/    the single intake form; every snapshot variable comes from here
ops/           end-to-end test script, margin worksheet, naming convention
scripts/       lint-language.sh: blocks banned words in copy/
TODO.md        open items that need Todd or the attorney
```

## How it's built in Votel
The Votel build route (stack, measured rates, snapshot steps) lives in the **Votel capability map** doc: https://claude.ai/artifact/LioVPMXj9rgn7Wz7P4FbDv
- One master snapshot holds every offer's pieces with all workflows **off**. A purchase turns on only that offer's workflows (tag `offer-1` … `offer-4`).
- One Votel plan per offer ($297 each) plus a Full System plan ($1,000), all linked to the same master snapshot.
- LeadSnap is out: heatmaps come from Local Falcon (pay as you go), citations from BrightLocal (one-time, paid from setup), Google profile edits by hand at onboarding.
- Fixed cost ≈ $319/mo (Votel $299 + Claude $20) → 2 paying offers cover it.
- Rates: `ops/votel-rates.csv`. Legal master: the attorney checklist doc https://claude.ai/artifact/5mwD7Rb85wFWfzAZPVskRk

## Non-negotiables (from the build brief)
- One sub-account per location: `{BusinessName} — {Town}`. Agency owns everything; clients never log in.
- Automations stay **OFF** until the end-to-end test passes on Todd's number (`ops/end-to-end-test.md`).
- No client text goes out before 10DLC registration clears. Client copy says: *"Texting turns on once carrier registration clears."*
- Signed agreement + card on file before any build. Friends and family included.
- Stop and ask before touching real client data, real money, or real outbound messages.
- Language rules: `copy/LANGUAGE.md`. Never "AI", never the platform name, never "widget", never minutes/usage.
