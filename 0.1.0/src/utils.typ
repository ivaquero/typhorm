#import "deps.typ": *

#let title-box(
  body,
  size: 20pt,
  inset: 12pt,
  styles: default-styles,
  info: default-info.global,
) = {
  let lang = info.lang

  block(
    align(
      center + horizon,
      text(body, size: size, font: styles.fonts.at(lang).title),
    ),
    width: 100%,
    inset: inset,
  )
}

#let border = stroke(.5pt)

#let tab-box(
  body,
  height: auto,
  styles: default-styles,
  info: default-info.global,
) = {
  let lang = info.lang
  block(
    spacing: 0pt,
    align(center, text(body, font: styles.fonts.at(lang).tab)),
    stroke: border,
    height: height,
    width: 100%,
    inset: 8pt,
  )
}

#let ind-box(
  body,
  height: auto,
  styles: default-styles,
  info: default-info.global,
) = {
  let lang = info.lang
  block(
    spacing: 0pt,
    align(center + horizon, text(body, font: styles.fonts.at(lang).tab)),
    stroke: border,
    height: height,
    width: 100%,
    inset: 8pt,
  )
}

#let body-box(
  body,
  height: auto,
  styles: default-styles,
  info: default-info.global,
) = {
  let lang = info.lang
  block(
    spacing: 0pt,
    text(body, font: styles.fonts.at(lang).tab),
    stroke: border,
    height: height,
    width: 100%,
    inset: 8pt,
  )
}

#let ind-tab-body-box2(
  ind,
  tab,
  col,
  tab2,
  col2,
  ind-ratio: 15%,
  height-coef: 0.55pt,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
) = {
  let b-h1 = col.at("text").len()
  let b-h2 = col2.at("text").len()
  let b-h = calc.max(b-h1, b-h2) * height-coef

  block(
    spacing: 0pt,
    align(
      horizon,
      grid(
        columns: (ind-ratio, (100% - ind-ratio) / 2, (100% - ind-ratio) / 2),

        grid.cell(
          ind-box(height: b-h + tab-height, styles: styles)[#ind],
          rowspan: 2,
        ),
        tab-box(height: tab-height, styles: styles, info: info)[#tab],
        tab-box(height: tab-height, styles: styles, info: info)[#tab2],
        body-box(height: b-h, styles: styles, info: info)[#col],
        body-box(height: b-h, styles: styles, info: info)[#col2],
      ),
    ),
  )
}

#let ind-tab-body-box(
  ind,
  tab,
  col,
  ind-ratio: 15%,
  height-coef: 0.55pt,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
) = {
  let b-h = col.at("text").len() * height-coef

  block(
    spacing: 0pt,
    align(
      horizon,
      grid(
        columns: (ind-ratio, (100% - ind-ratio)),

        grid.cell(
          ind-box(height: b-h + tab-height, styles: styles, info: info)[#ind],
          rowspan: 2,
        ),
        tab-box(height: tab-height, styles: styles, info: info)[#tab],
        body-box(height: b-h, styles: styles, info: info)[#col],
      ),
    ),
  )
}

#let ind-body-ind-body-box(
  ind,
  col,
  ind2,
  col2,
  ind-ratio: 15%,
  height-coef: 0.55pt,
  styles: default-styles,
  info: default-info.global,
) = {
  let b-h1 = col.at("text").len()
  let b-h2 = col2.at("text").len()
  let b-h = calc.max(b-h1, b-h2) * height-coef

  block(
    spacing: 0pt,
    align(
      horizon,
      grid(
        columns: (ind-ratio, (100% - ind-ratio) / 2, ind-ratio * .7, (100% - ind-ratio) / 2 - ind-ratio * .7),
        ind-box(height: b-h, styles: styles, info: info)[#ind],
        body-box(height: b-h, styles: styles, info: info)[#col],
        ind-box(height: b-h, styles: styles, info: info)[#ind2],
        body-box(height: b-h, styles: styles, info: info)[#col2],
      ),
    ),
  )
}

#let ind-tab4-box(
  ind,
  tab,
  tab2,
  tab3,
  tab4,
  ind-ratio: 15%,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
) = {
  block(
    spacing: 0pt,
    align(
      center,
      grid(
        columns: (
          ind-ratio,
          (100% - ind-ratio) / 2,
          ind-ratio * .7,
          ((100% - ind-ratio) / 2 - ind-ratio * .7) * .4,
          ((100% - ind-ratio) / 2 - ind-ratio * .7) * .6,
        ),
        ind-box(height: tab-height, styles: styles, info: info)[*#ind*],
        body-box(height: tab-height, styles: styles, info: info)[*#tab*],
        ind-box(height: tab-height, styles: styles, info: info)[*#tab2*],
        body-box(height: tab-height, styles: styles, info: info)[*#tab3*],
        body-box(height: tab-height, styles: styles, info: info)[*#tab4*],
      ),
    ),
  )
}

#let ind-body-mat23-box(
  ind,
  body,
  ind21,
  ind31,
  col21,
  ind22,
  ind32,
  col22,
  ind-ratio: 15%,
  styles: default-styles,
  info: default-info.global,
) = {
  let b-h1 = body.at("text").len()
  let b-h21 = col21.at("text").len()
  let b-h22 = col22.at("text").len()

  let eff-col = 0.5pt
  let eff-col2 = 1.35pt
  let b-h = calc.max(b-h1 * eff-col, (b-h21 + b-h22) * eff-col2)

  block(
    spacing: 0pt,
    grid(
      columns: (
        ind-ratio,
        (100% - ind-ratio) / 2,
        ind-ratio * .7,
        ((100% - ind-ratio) / 2 - ind-ratio * .7) * .4,
        ((100% - ind-ratio) / 2 - ind-ratio * .7) * .6,
      ),
      grid.cell(ind-box(height: b-h, styles: styles, info: info)[#ind], rowspan: 2),
      grid.cell(body-box(height: b-h, styles: styles, info: info)[#body], rowspan: 2),
      ind-box(height: b-h / 2, styles: styles, info: info)[#ind21],
      ind-box(height: b-h / 2, styles: styles, info: info)[#ind31],
      body-box(height: b-h / 2, info: info)[#col21],
      ind-box(height: b-h / 2, styles: styles, info: info)[#ind22],
      ind-box(height: b-h / 2, styles: styles, info: info)[#ind32],
      body-box(height: b-h / 2, styles: styles, info: info)[#col22],
    ),
  )
}

#let ind-body-box(
  ind,
  col,
  ind-ratio: 15%,
  styles: default-styles,
  info: default-info.global,
) = [
  #let b-h = col.at("text").len() * .35pt

  #block(
    spacing: 0pt,
    align(
      horizon,
      grid(
        columns: (ind-ratio, (100% - ind-ratio)),
        ind-box(height: b-h)[*#ind*], body-box(height: b-h)[#col],
      ),
    ),
  )
]

#let body-mat31-box(
  body,
  ind,
  row,
  ind2,
  row2,
  ind3,
  row3,
  ind-ratio: 50%,
  styles: default-styles,
  info: default-info.global,
) = {
  let b-h0 = body.at("text").len()
  let b-h1 = row.at("text").len()
  let b-h2 = row2.at("text").len()
  let b-h3 = row3.at("text").len()

  let eff-col = 0.35pt
  let eff-col2 = 1.05pt
  let b-h = calc.max(b-h1 * eff-col, (b-h1 + b-h2 + b-h3) * eff-col2)

  block(
    spacing: 0pt,
    align(
      horizon,
      grid(
        columns: (ind-ratio, (100% - ind-ratio) / 3, (100% - ind-ratio) / 3 * 2),

        grid.cell(body-box(height: b-h)[#body], rowspan: 3),
        ind-box(height: b-h / 2, styles: styles)[#ind],
        body-box(height: b-h / 2, styles: styles)[#row],
        ind-box(height: b-h / 4, styles: styles)[#ind2],
        body-box(height: b-h / 4, styles: styles)[#row2],
        ind-box(height: b-h / 4, styles: styles)[#ind3],
        body-box(height: b-h / 4, styles: styles)[#row3],
      ),
    ),
  )
}

