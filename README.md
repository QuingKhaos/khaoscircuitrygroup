[![The Foundry](https://img.shields.io/badge/foundrygg-4a1402?style=for-the-badge&logo=vercel&logoColor=white)](https://foundrygg.com/)
[![Discord community](https://img.shields.io/badge/Discord-%235865F2.svg?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/SYmkaDjFCt)
[![Factorio mod portal](https://img.shields.io/factorio-mod-portal/dt/khaoscircuitrygroup?style=for-the-badge&logo=data%3Aimage%2Fx-icon%3Bbase64%2CAAABAAEAEBAAAAEACABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAAAAAAALzAtABIVFwBBOSwAISYpAB0iJACTfFQAICQnAEk%2FLAAcICIAsZZlADs4MABsXUIAd2hMAINzVgChi2QAPTozAIt6WwAWGhsAs5prABwgIwC1nG4AKSglAEpGOwBhVDwAGx4hAGJUPABoXkkAMiwiAGleSQCwmW8AtJpsALigdABnXEcAi3ZPAFhNOACDb0sAIicqAEtCLwAxMzEAEhQWAE1EMgAgJSgAISUoAJV%2FWACrkmQAHyMmAIFwUgAbHyEAsJVkAG5gRgAXGxwAHSEkAKCKYwCzmWoAsJhtACIhHAAbHyIAeWtRADo3MACxmnAAtZttACMoKgAaHSAAPzcoABYZGwASFRYAX1ZEAINwTABKRTsAIygrAJqDWABoXUkAHyQmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADExMTExEyAgEzExMTExADExMRMVCi8EBC8KFTYxMTExMT0OGx5DJSVDHkgRHzExMTEyB0YnRiUlPidGBw0xMTExGi5GJS4JOS4lRkkpMTExHzcrRi4SHEBBLkYrNxUKMTpFRiUURDExRAklRhchLTE%2FKyU%2BCzExMTE7JSUqGSwxAj8qRgEVCgoVEEYqPwIGMSQMSUYlHTw8HSVGSQwiMTExDwclJSVGRiUlPgc1MTExMQMwNBQuJSUuFAU5IzExMTEiOEImFklJFiYCKCQxMTExMUckMRgzMxgxJCIxMTExMTExMTEiCAgiMTExMTExADExMTExMTExMTExMTExAIABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIABAAA%3D&color=orange&labelColor=rgb(111,148,173))](https://mods.factorio.com/mod/khaoscircuitrygroup)
[![Crowdin translate](https://img.shields.io/badge/Crowdin-Translate-cornflowerblue?style=for-the-badge)](https://crowdin.com/project/factorio-mods-localization)
[![GitHub issues: bugs](https://img.shields.io/github/issues/QuingKhaos/khaoscircuitrygroup/bug?label=Bug%20Reports&style=for-the-badge&logo=github)](https://github.com/QuingKhaos/khaoscircuitrygroup/issues?q=is%3Aissue%20state%3Aopen%20label%3Abug)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/QuingKhaos/khaoscircuitrygroup?label=Pull%20Requests&style=for-the-badge&logo=github)](https://github.com/QuingKhaos/khaoscircuitrygroup/pulls)

# QuingKhaos' Circuitry Group

Adds a new Circuit group to the crafting menu. Drop-in replacement for [Schall Circuit Group](https://mods.factorio.com/mod/SchallCircuitGroup)
for 2.1, supports 2.0 too.

It supports the same subgroups as Schall Circuit Group:

- `circuit-network` - Vanilla subgroup
- `circuit-connection` - Connection controls
- `circuit-combinator` - Any combinators
- `circuit-combinator-arithmetic`ᵃ - Arithmetic combinators
- `circuit-combinator-decider`ᵃ - Decider combinators
- `circuit-combinator-selector`ᵃ - Selector combinators
- `circuit-combinator-constant`ᵃ - Constant combinators
- `circuit-input` - Produces circuit signals
- `circuit-visual` - Visual perception to players
- `circuit-visual-lamp`ᵃ - Lamps
- `circuit-auditory` - Auditory perception to players

You may also like [QuingKhaos' Circuitry Tweaks](https://mods.factorio.com/mod/khaoscircuitry), which already places a
lot of circuitry items into the correct subgroups.

ᵃ: Will only show up if the setting "Individual combinator subgroups" is enabled.

## For modders

**Factorio 2.0**: You just need to add `khaoscircuitrygroup` as optional dependency without any other changes. All your
conditional checks for Schall Circuit Group will work with this mod too.

**Factorio 2.1**: You need to add `khaoscircuitrygroup` as optional dependency and change your conditional checks to
check for this mod too. Emulating as if Schall Circuit Group is installed is no longer possible in 2.1, so you need to
check for both mods.

## Legal Notice

This is not a fork of Schall Circuit Group, but a clean and newly written drop-in replacement.
