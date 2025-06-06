#import "@preview/typhorm:0.1.0": *
#import "@local/typhorm:0.1.0": *
#import "@preview/codly:1.3.0": codly, codly-init
#import "@preview/codly-languages:0.1.8": codly-languages

#let code-block-style(body) = {
  codly(
    languages: codly-languages,
    display-name: false,
    fill: rgb("#F2F3F4"),
    zebra-fill: none,
    inset: (x: .3em, y: .3em),
    radius: .5em,
  )
  show: codly-init.with()
  body
}

#show raw: code-block-style

#set block(breakable: false)

= Typhorm

== Simple Boxes

=== title-box
<title-box>

```typst
#title-box[
  #lorem(1)
]
```

#title-box[
  #lorem(1)
]

=== tab-box
<tab-box>

```typst
#tab-box[
  #lorem(3)
]
```

#tab-box[
  #lorem(3)
]

=== body-box
<body-box>

```typst
#body-box[
  #lorem(50)
]
```

#body-box[
  #lorem(50)
]

== Complex Boxes

=== idx-tab-body-box
<idx-tab-body-box>

```typst
#idx-tab-body-box(
  [index],
  [tab],
  [#lorem(20)],
)
```

#idx-tab-body-box(
  [index],
  [tab],
  [#lorem(20)],
)

=== idx-tab-body-box2
<idx-tab-body-box2>

```typst
#idx-tab-body-box2(
  [index],
  [tab1], [#lorem(13)],
  [tab2], [#lorem(13)],
)
```

#idx-tab-body-box2(
  [index],
  [tab1],
  [#lorem(13)],
  [tab2],
  [#lorem(13)],
)

=== idx-body-box2
<idx-body-box2>

```typst
#idx-body-box2(
  [idx1], [#lorem(50)],
  [idx2], [#lorem(25)],
)
```

#idx-body-box2(
  [idx1],
  [#lorem(50)],
  [idx2],
  [#lorem(25)],
)

=== idx-body-box
<idx-body-box>

```typst
#idx-body-box(
  [idx],
  [#lorem(25)],
)
```

#idx-body-box(
  [idx],
  [#lorem(25)],
)

== More Complex Boxes

=== idx-tab4-box
<idx-tab4-box>

```typst
#idx-tab4-box(
  [idx],
  [tab], [tab2], [tab3], [tab4],
)
```

#idx-tab4-box(
  [idx],
  [tab],
  [tab2],
  [tab3],
  [tab4],
)

=== idx-body-mat23-box
<idx-body-mat23-box>

```typst
#idx-body-mat23-box(
  [idx],
  [#lorem(25)],
  [upper], [60], [#lorem(5)],
  [lower], [30], [#lorem(5)],
)
```

#idx-body-mat23-box(
  [idx],
  [#lorem(25)],
  [upper],
  [60],
  [#lorem(5)],
  [lower],
  [30],
  [#lorem(5)],
)

=== body-mat31-box
<body-mat31-box>

```typst
#body-mat31-box(
  [#lorem(25)],
  [idx1], [#lorem(15)],
  [idx2], [#lorem(5)],
  [idx3], [#lorem(5)],
)
```

#body-mat31-box(
  [#lorem(25)],
  [idx1],
  [#lorem(15)],
  [idx2],
  [#lorem(5)],
  [idx3],
  [#lorem(5)],
)

= API

== Simple Boxes

```typst
title-box(
  body,
  size: 20pt,
  inset: 12pt,
  styles: default-styles,
  info: default-info.global
)
```

```typst
tab-box(
  body,
  height: auto,
  inset: 8pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
body-box(
  body,
  height: auto,
  inset: 8pt,
  styles: default-styles,
  info: default-info.global,
)
```

== Complex Boxes

```typst
idx-tab-body-box(
  idx,
  tab,
  col,
  idx-ratio: 15%,
  height-coef: 0.55pt,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
idx-tab-body-box2(
  idx,
  tab,
  col,
  tab2,
  col2,
  idx-ratio: 15%,
  height-coef: 0.55pt,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
idx-body-box2(
  idx,
  col,
  idx2,
  col2,
  idx-ratio: 15%,
  height-coef: 0.55pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
idx-body-box(
  idx,
  col,
  idx-ratio: 15%,
  height-coef: 0.35pt,
  styles: default-styles,
  info: default-info.global,
)
```

== More Complex Boxes

```typst
idx-tab4-box(
  idx,
  tab,
  tab2,
  tab3,
  tab4,
  idx-ratio: 15%,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
idx-body-mat23-box(
  idx,
  body,
  idx21,
  idx31,
  col21,
  idx22,
  idx32,
  col22,
  idx-ratio: 15%,
  col-hcoefs: (0.6pt, 1.35pt),
  styles: default-styles,
  info: default-info.global,
)
```

```typst
body-mat31-box(
  body,
  idx,
  row,
  idx2,
  row2,
  idx3,
  row3,
  idx-ratio: 50%,
  col-hcoefs: (0.35pt, 1.05pt),
  styles: default-styles,
  info: default-info.global,
)
```
