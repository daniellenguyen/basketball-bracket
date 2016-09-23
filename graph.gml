graph[
comment "Basketball bracket tree"
comment "South is 1, West is 2, East is 3, Midwest is 4"
directed 0
id 1
label "entire graph"

comment "South"

node [
name "Kansas"
label "South"
id 11
]

node [
name "Austin Peay"
label "South"
id 116
]

node [
name "Colorado"
label "South"
id 18
]

node [
name "Connecticut"
label "South"
id 19
]

node [
name "Maryland"
label "South"
id 15
]

node [
name "South Dakota St."
label "South"
id 112
]

node [
name "California"
label "South"
id 14
]

node [
name "Hawaii"
label "South"
id 113
]

node [
name "Arizona"
label "South"
id 16
]

node [
name "Wichita State"
label "South"
id 111
]

node [
name "Miami (Fla.)"
label "South"
id 13
]

node [
name "Buffalo"
label "South"
id 114
]

node [
name "Iowa"
label "South"
id 17
]

node [
name "Temple"
label "South"
id 110
]

node [
name "Villanova"
label "South"
id 12
]

node [
name "UNC Asheville"
label "South"
115
]

comment "West"

node [
name "Oregon"
label "West"
]

node [
name "Holy Cross"
label "West"
]

node [
name "Saint Joseph's"
label "West"
]

node [
name "Cincinnati"
label "West"
]

node [
name "Baylor"
label "West"
]

node [
name "Yale"
label "West"
]

node [
name "Duke"
label "West"
]

comment "South edges"

edge [
comment "Kansas, Austin Peay"
source 11
target 116
label 1
label "South"
]

edge [
comment "Connecticut, Colorado"
source 19
target 18
label 1
label "South"
]

edge [
comment "Maryland, South Dakota St."
source 15
target 112
label 1
label "South"
]

edge [
comment "Hawaii, California"
source 113
target 14
label 1
label "South"
]

edge [
comment "Wichita State, Arizona"
source 111
target 16
label 1
label "South"
]

edge [
comment "Iowa, Temple"
source 17
target 110
label 1
label "South"
]

edge [
comment "Villanova, UNC Asheville"
source 12
target 115
label 1
label "South"
]

edge [
comment "Kansas, Connecticut"
source 11
target 19
label 2
label "South"
]

edge [
comment "Maryland, Hawaii"
source 15
target 113
label 2
label "South"
]

edge [
comment "Miami (Fla.), Wichita State"
source 13
target 111
label 2
label "South"
]

edge [
comment "Villanova, Iowa"
source 12
target 17
label 2
label "South"
]

edge [
comment "Kansas, Maryland"
source 11
target 15
label 3
label "South"
]

edge [
comment "Villanova, Miami (Fla.)"
source 12
target 13
label 3
label "South"
]

edge [
comment "Villanova, Kansas"
source 12
target 11
label 4
label "South"
]

]
