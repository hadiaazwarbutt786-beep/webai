---
name: Luminous Gulabi
colors:
  surface: '#fdf9f5'
  surface-dim: '#ddd9d6'
  surface-bright: '#fdf9f5'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f7f3ef'
  surface-container: '#f1ede9'
  surface-container-high: '#ebe7e4'
  surface-container-highest: '#e5e2de'
  on-surface: '#1c1c19'
  on-surface-variant: '#594045'
  inverse-surface: '#31302e'
  inverse-on-surface: '#f4f0ec'
  outline: '#8d7075'
  outline-variant: '#e0bec3'
  surface-tint: '#b71554'
  primary: '#af0a4e'
  on-primary: '#ffffff'
  primary-container: '#d12e66'
  on-primary-container: '#fff4f5'
  inverse-primary: '#ffb1c1'
  secondary: '#735c00'
  on-secondary: '#ffffff'
  secondary-container: '#fed65b'
  on-secondary-container: '#745c00'
  tertiary: '#8f3d50'
  on-tertiary: '#ffffff'
  tertiary-container: '#ad5568'
  on-tertiary-container: '#fff4f4'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#ffd9df'
  primary-fixed-dim: '#ffb1c1'
  on-primary-fixed: '#3f0017'
  on-primary-fixed-variant: '#90003e'
  secondary-fixed: '#ffe088'
  secondary-fixed-dim: '#e9c349'
  on-secondary-fixed: '#241a00'
  on-secondary-fixed-variant: '#574500'
  tertiary-fixed: '#ffd9de'
  tertiary-fixed-dim: '#ffb2be'
  on-tertiary-fixed: '#3f0015'
  on-tertiary-fixed-variant: '#792c3f'
  background: '#fdf9f5'
  on-background: '#1c1c19'
  surface-variant: '#e5e2de'
typography:
  display-lg:
    fontFamily: Playfair Display
    fontSize: 56px
    fontWeight: '600'
    lineHeight: 64px
    letterSpacing: -0.02em
  display-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 38px
    fontWeight: '600'
    lineHeight: 44px
    letterSpacing: -0.01em
  headline-lg:
    fontFamily: Playfair Display
    fontSize: 36px
    fontWeight: '600'
    lineHeight: 44px
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Playfair Display
    fontSize: 28px
    fontWeight: '600'
    lineHeight: 36px
    letterSpacing: 0em
  headline-md:
    fontFamily: Playfair Display
    fontSize: 24px
    fontWeight: '500'
    lineHeight: 32px
    letterSpacing: 0em
  title-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 20px
    fontWeight: '600'
    lineHeight: 28px
    letterSpacing: -0.01em
  title-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '600'
    lineHeight: 24px
    letterSpacing: 0.01em
  body-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 26px
    letterSpacing: 0.01em
  body-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 22px
    letterSpacing: 0.01em
  label-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 12px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.06em
  label-sm:
    fontFamily: Plus Jakarta Sans
    fontSize: 10px
    fontWeight: '700'
    lineHeight: 14px
    letterSpacing: 0.08em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  gutter: 1.5rem
  gutter-sm: 1rem
  margin: 3rem
  margin-sm: 1.25rem
  space-xs: 0.25rem
  space-sm: 0.5rem
  space-md: 1rem
  space-lg: 1.5rem
  space-xl: 2.5rem
---

## Brand & Style
This design system embodies modern South Asian luxury, celebrating radiance, ceremonial opulence, and contemporary beauty rituals. The brand personality is unapologetically luminous, sensual, celebratory, and meticulously refined. It speaks to a global beauty audience that appreciates heritage ingredients and modern pigment craft.

The design movement combines **Luxe Glassmorphism** with **Warm Editorial Minimalism**. Interfaces feature luminous silk-cream canvases, multi-layered translucent surfaces (simulating lacquered gloss and polished glass compacts), subtle warm gold light leaks, and tactile, high-end finishing touches. The emotional experience is intimate, indulgent, and ultra-premium.

## Colors
The palette celebrates royal South Asian aesthetics through modern cosmetics artistry:

- **Primary (`#D12E66` / Gulabi Rose):** A vibrant, saturated rose-magenta reminiscent of traditional gulab (rose petals) and high-shine lip lacquer. Used for high-impact calls to action, active selections, and key brand highlights.
- **Secondary (`#D4AF37` / Shimmering Champagne Gold):** A luminous ceremonial gold used for fine filigree borders, metallic micro-interactions, badge trims, and star ratings.
- **Tertiary (`#581226` / Deep Berry Wine):** A dramatic, grounding shade offering luxurious contrast for body text, primary headers, and deep shade selectors.
- **Neutral (`#FAF6F2` / Silk Cream Canvas):** An unbleached, radiant silk tone serving as the primary backdrop to prevent the harsh sterility of pure digital white.

### Supporting Chromatics & Tonal Hierarchy
- **Blush Petal Tint (`#FCEEF2`):** Used for muted card backgrounds, input field resting states, and secondary chip surfaces.
- **Champagne Frost (`rgba(255, 255, 255, 0.72)`):** The signature translucent layer for glassmorphic drawers, floating navigation bars, and sticky add-to-bag drawers.
- **Text & High Contrast:** Never use absolute `#000000`. Use Deep Berry (`#2E0813`) for maximum legibility and rich tonal warmth.

## Typography
The typographic identity pairs the editorial high-contrast drama of **Playfair Display** with the clean, airy, ergonomic clarity of **Plus Jakarta Sans**.

- **Editorial Headlines (`Playfair Display`):** Reserved for product collection names, hero headlines, story vignettes, and shade names. It conveys haute-couture editorial presence.
- **Interface & Prose (`Plus Jakarta Sans`):** Selected for high micro-legibility across commerce details (ingredients lists, shade matchers, checkout steps, micro-labels).
- **Casing & Style Rules:** Product category indicators, badges, and micro-labels must be styled in uppercase with intentional tracking (`letterSpacing: 0.06em` to `0.08em`) to mirror luxury fragrance and cosmetics packaging.

## Layout & Spacing
The layout follows a fluid 12-column grid on desktop (max-width `1440px`) transitioning to an 8-column layout on tablet and a 4-column layout on mobile.

- **Negative Space as Luxury:** Whitespace is intentionally generous to evoke curated beauty displays rather than discount marketplaces. Spacing intervals utilize consistent multiples of 8px.
- **Editorial Grids:** Product showcases break traditional rigid box grids by interspersing wide lookbook editorial imagery, floating shade swatches, and asymmetric pairings.
- **Mobile Fluidity:** On mobile surfaces, gutters compress from `1.5rem` to `1rem` and margins reduce to `1.25rem`, allowing product imagery to bleed seamlessly while maintaining safe click areas.

## Elevation & Depth
Elevation is achieved using translucent layered glass, champagne frost, and delicate rose-tinted diffuse shadows rather than heavy drop shadows.

- **Level 0 (Flat / Canvas):** The base `#FAF6F2` silk cream background.
- **Level 1 (Product Cards & Content Panels):** `#FFFFFF` surfaces or `rgba(255, 255, 255, 0.8)` layered with a 0.5px subtle border of `rgba(212, 175, 55, 0.25)` (liquid gold trim) and a soft ambient shadow: `0 8px 24px -4px rgba(88, 18, 38, 0.05)`.
- **Level 2 (Dropdowns, Quick-Bags, Flyouts):** Frosted backdrop blur (`backdrop-filter: blur(16px)`), background `rgba(254, 250, 248, 0.85)`, bordered with `rgba(255, 255, 255, 0.6)` and an ambient shadow: `0 16px 36px -6px rgba(209, 46, 102, 0.12)`.
- **Level 3 (Modals & Toast Notifications):** Backdrops utilize a warm berry veil (`rgba(46, 8, 19, 0.45)` with `backdrop-filter: blur(8px)`). Modal containers feature `0 24px 48px -12px rgba(88, 18, 38, 0.25)`.

## Shapes
The design system embraces balanced, organic curves that echo cosmetics bottles, lip gloss caps, and smooth river stones. 

- **Containers & Cards:** Utilize `rounded-lg` (1rem) for an organic, tactile presence.
- **Interactive Controls (Buttons, Inputs, Badges):** Standard interactive elements lean into pill forms or smooth rounded geometry (`rounded-lg` to full pill `rounded-full` for chips and buttons) to create a smooth, comfortable touch target.
- **Compact & Gloss Swatches:** Swatches are circular or soft rounded squares reflecting actual compact cases.

## Components

### Buttons
- **Primary ("Add to Bag / Claim"):** High-gloss gradient fill from `#D12E66` to `#B51B51` with an inner subtle gold highlight along the top border (`inset 0 1px 0 rgba(255, 255, 255, 0.35)`). Text is crisp white Plus Jakarta Sans (semi-bold). Hover introduces a subtle glow (`box-shadow: 0 8px 20px rgba(209, 46, 102, 0.35)`).
- **Secondary ("Shade Finder / Details"):** Translucent champagne fill with a 1px border of `#D4AF37`. Deep Berry typography. Hover transitions to a soft blush background (`#FCEEF2`).
- **Text / Minimalist:** Understated Deep Berry text featuring an animated gold underline that expands on hover.

### Product & Editorial Cards
- **Product Tiles:** Ultra-clean Silk White containers with rounded corners (`1rem`). Featuring generous edge padding, an embedded soft swatch selector, and a floating gold-accented quick-add button that lifts on interaction.
- **Finish Tag / Cruelty-Free Badges:** Floating pill chips placed in the top-left corner (`rgba(255, 255, 255, 0.85)` with blur), featuring uppercase gold or rose typography.

### Input Fields
- Understated and clean. Resting state features a Silk Cream background with a delicate border (`rgba(88, 18, 38, 0.15)`). Focused state activates an accent ring of `#D12E66` paired with a soft ambient rose glow (`box-shadow: 0 0 0 3px rgba(209, 46, 102, 0.15)`). Labels hover gracefully above the input.

### Checkboxes, Radio Buttons & Shade Selectors
- **Shade Swatches (Custom Radio):** Rendered as 32px circular droplets showing real gloss texture, shimmer, and depth. Active selection is encased in an exterior concentric ring of polished gold (`#D4AF37`) with a 2px offset.
- **Checkboxes:** Rounded squares (`0.25rem`) that fill with vibrant Gulabi rose upon selection, completed with an ivory check icon.

### Chips & Filter Tags
- Pill-shaped tags with `0.5rem` vertical and `1rem` horizontal padding. Resting state uses `#FCEEF2` with `#581226` label text. Selected state inverts into full Gulabi rose with crisp white typography.

### Gloss Texture Previewer (Specialty Component)
- An interactive tactile slider card displaying high-resolution macro texture (high-shine, jelly, diamond shimmer) using glassmorphic controls and liquid transitions.