# Intake Form → Snapshot Variables

One form. Every snapshot variable is filled from it. Nobody copy-pastes between systems.
Fields marked with an offer number are only asked if that offer was purchased.

| Form field | Variable | Used in | Required |
|---|---|---|---|
| Business legal name | `{BusinessName}` | all | ✔ |
| Town / service area | `{Town}`, `{ServiceArea}` | all, sub-account name | ✔ |
| Number of locations | (one sub-account each) | all | ✔ |
| Main phone | `{MainPhone}` | 1, 2 | ✔ |
| Website domain | `{Domain}` | 1 | 1 |
| Brand colors (2–3 hex) | `{ColorPrimary}`, `{ColorAccent}` | 1 | 1 |
| Logo upload | `{LogoUrl}` | 1 | 1 |
| Services offered | `{Services}` | 1, 2, 3 | ✔ |
| Main offer / booking name | `{PrimaryOffer}`, `{BookingName}` (roofing default: Free Roof Inspection) | 1, 2, 3, 4 | ✔ |
| Hours | `{Hours}` | 1, 2 | ✔ |
| Top 10 FAQs + answers | `{FAQs}` | 1, 2 | ✔ |
| Assistant name | `{AssistantName}` | 1, 2 | ✔ |
| Google review link | `{ReviewLink}` | 3 | 3 |
| Referral reward | `{ReferralReward}` | 3 | 3 |
| Customer list upload + consent source per contact | (import) | 3 | 3 |
| Sales script (or "use ours") | `{SalesScript}` | 2 | 2 |
| Ad account partner access granted? | (checkbox) | 4 | 4 |
| Monthly ad budget (client pays platform) | `{AdBudget}` | 4 | 4 |
| Qualification: service area, job type, urgency, storm/insurance | `{QualRules}` | 1, 2, 3, 4 | ✔ |
| Franchisee? Franchisor approval attached | (file) | all | ✔ |
| Agreement signed + card on file | (gate) | all | ✔ |

Sub-account name is generated as `{BusinessName} — {Town}`.
