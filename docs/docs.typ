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

=== with-index-tab-box
<with-index-tab-box>

```typst
#with-index-tab-box(
  [index],
  [tab],
  [
    #lorem(20)
  ]
)
```

#with-index-tab-box(
  [index],
  [tab],
  [
    #lorem(20)
  ],
)

=== with-index-tab-box2
<with-index-tab-box2>

```typst
#with-index-tab-box2(
  [index],
  [tab1],
  [
    - item1
    - item2
  ],
  [tab2],
  [
    - item1
    - item2
  ],
)
```

#with-index-tab-box2(
  [index],
  [tab1],
  [
    - item1
    - item2
  ],
  [tab2],
  [
    - item1
    - item2
  ],
)

=== with-index-box2
<with-index-box2>

```typst
#with-index-box2(
  [index1],
  [
    - item1
    - item2
  ],
  [index2],
  [
    - item1
    - item2
  ],
)
```

#with-index-box2(
  [index1],
  [
    - item1
    - item2
  ],
  [index2],
  [
    - item1
    - item2
  ],
)

=== with-index-box
<with-index-box>

```typst
#with-index-box(
  [index],
  [
    - item1
    - item2
  ],
)
```

#with-index-box(
  [index],
  [
    - item1
    - item2
  ],
)

== More Complex Boxes

=== with-index-tab4-box
<with-index-tab4-box>

```typst
#with-index-tab4-box(
  [index],
  [tab], [tab2], [tab3], [tab4],
)
```

#with-index-tab4-box(
  [index],
  [tab],
  [tab2],
  [tab3],
  [tab4],
)

=== with-index-mat32-box
<with-index-mat32-box>

```typst
#with-index-mat32-box(
  [index],
  [
    - item1
    - item2
  ],
  [upper],
  [60],
  [
    - item1
    - item2
  ],
  [lower],
  [30],
  [
    - item1
    - item2
  ],
)
```

#with-index-mat32-box(
  [index],
  [
    - item1
    - item2
  ],
  [upper],
  [60],
  [
    - item1
    - item2
  ],
  [lower],
  [30],
  [
    - item1
    - item2
  ],
)

=== with-mat31-box
<with-mat31-box>

```typst
#with-mat31-box(
  [
    - item1
    - item2
  ],
  [index1],
  [#lorem(15)],
  [index2],
  [#lorem(5)],
  [index3],
  [#lorem(5)],
)
```

#with-mat31-box(
  [
    - item1
    - item2
  ],
  [index1],
  [#lorem(15)],
  [index2],
  [#lorem(5)],
  [index3],
  [#lorem(5)],
)

= Cases

== Lesson Plans

#set block(spacing: 0pt)
#title-box()[
  *Fundamental Python*
]

#tab-box()[
  *General Scheme*
]

#with-index-tab-box2(
  [goals],
  [Knowledge Points],
  [
    - the `filter()` function
    - the `map()` function
    - the `reduce()` function
  ],
  [Proficiency],
  [
    - fluent in using builtin functions
  ],
)

#with-index-tab-box(
  [Preliminary Courses],
  [Knowledge Points],
  [
    variable types; control flow;

  ],
)

#with-index-box2(
  [offline reference],
  [
    - Book: Python crash course
  ],
  [online reference],
  [
    - Video: Python for Beginners
  ],
)

#with-index-tab4-box(
  [activity],
  [goals],
  [loc.],
  [time],
  [reference],
)

#with-index-mat32-box(
  [experiment],
  [
    - file manipulation
    - calculation using builtin functions
  ],
  [offline],
  [60 min],
  [
    - textbooks
    - slides
  ],
  [online],
  [30 min],
  [
    - videos
    - books
  ],
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
with-index-tab-box(
  index,
  tab,
  col,
  index-ratio: 15%,
  height-coef: 0.55pt,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
with-index-tab-box2(
  index,
  tab,
  col,
  tab2,
  col2,
  index-ratio: 15%,
  height-coef: 0.55pt,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
with-index-box2(
  index,
  col,
  index2,
  col2,
  index-ratio: 15%,
  height-coef: 0.55pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
with-index-box(
  index,
  col,
  index-ratio: 15%,
  height-coef: 0.35pt,
  styles: default-styles,
  info: default-info.global,
)
```

== More Complex Boxes

```typst
with-index-tab4-box(
  index,
  tab,
  tab2,
  tab3,
  tab4,
  index-ratio: 15%,
  tab-height: 24pt,
  styles: default-styles,
  info: default-info.global,
)
```

```typst
with-index-mat32-box(
  index,
  body,
  index21,
  index31,
  col21,
  index22,
  index32,
  col22,
  index-ratio: 15%,
  col-hcoefs: (0.6pt, 1.35pt),
  styles: default-styles,
  info: default-info.global,
)
```

```typst
with-mat31-box(
  body,
  index,
  row,
  index2,
  row2,
  index3,
  row3,
  index-ratio: 50%,
  col-hcoefs: (0.35pt, 1.05pt),
  styles: default-styles,
  info: default-info.global,
)
```
