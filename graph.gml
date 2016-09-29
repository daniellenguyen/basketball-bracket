graph [
comment "Basketball bracket tree"
comment "South is 1, West is 2, East is 3, Midwest is 4"
directed 1
id 1
label "entire graph"

comment "South"

node [
name "Kansas"
label "South,public"
id 11
]

node [
name "Austin Peay"
label "South,public"
id 116
]

node [
name "Colorado"
label "South,public"
id 18
]

node [
name "Connecticut"
label "South,public"
id 19
]

node [
name "Maryland"
label "South,public"
id 15
]

node [
name "South Dakota St."
label "South,public"
id 112
]

node [
name "California"
label "South,public"
id 14
]

node [
name "Hawaii"
label "South,public"
id 113
]

node [
name "Arizona"
label "South,public"
id 16
]

node [
name "Wichita State"
label "South,public"
id 111
]

node [
name "Miami (Fla.)"
label "South,private"
id 13
]

node [
name "Buffalo"
label "South,public"
id 114
]

node [
name "Iowa"
label "South,public"
id 17
]

node [
name "Temple"
label "South,public"
id 110
]

node [
name "Villanova"
label "South,private"
id 12
]

node [
name "UNC Asheville"
label "South,public"
id 115
]

comment "West"

node [
name "Oregon"
label "West,public"
id 21
]

node [
name "Holy Cross"
label "West,private"
id 216
]

node [
name "Saint Joseph's"
label "West,private"
id 28
]

node [
name "Cincinnati"
label "West,public"
id 29
]

node [
name "Baylor"
label "West,private"
id 25
]

node [
name "Yale"
label "West,private"
id 212
]

node [
name "Duke"
label "West,private"
id 24
]

node [
name "UNCW"
label "West,public"
id 213
]

node [
name "Texas"
label "West,public"
id 26
]

node [
name "UNI"
label "West,public"
id 211
]

node [
name "Texas AM"
label "West,public"
id 23
]

node [
name "Green Bay"
label "West,public"
id 214
]

node [
name "Oregon State"
label "West,public"
id 27
]

node [
name "VCU"
label "West,public"
id 210
]

node [
name "Oklahoma"
label "West,public"
id 22
]

node [
name "CSU Bakersfield"
label "West,public"
id 215
]

comment "East"

node [
name "North Carolina"
label "East,public"
id 31
]

node [
name "FGCU"
label "East,public"
id 316
]

node [
name "USC"
label "East,private"
id 38
]

node [
name "Providence"
label "East,private"
id 39
]

node [
name "Indiana"
label "East,public"
id 35
]

node [
name "Chattanooga"
label "East,public"
id 312
]

node [
name "Kentucky"
label "East,public"
id 34
]

node [
name "Stony Brook"
label "East,public"
id 313
]

node [
name "Notre Dame"
label "East,private"
id 36
]

node [
name "Michigan"
label "East,public"
id 311
]

node [
name "West Virginia"
label "East,public"
id 33
]

node [
name "Steph. F. Austin"
label "East,public"
id 314
]

node [
name "Wisconsin"
label "East,public"
id 37
]

node [
name "Pittsburgh"
label "East,public-private"
id 310
]

node [
name "Xavier"
label "East,private"
id 32
]

node [
name "Weber State"
label "East,public"
id 315
]

comment "Midwest"

node [
name "Virginia"
label "Midwest,public"
id 41
]

node [
name "Hampton"
label "Midwest,private"
id 416
]

node [
name "Texas Tech"
label "Midwest,public"
id 48
]

node [
name "Butler"
label "Midwest,private"
id 49
]

node [
name "Purdue"
label "Midwest,public"
id 45
]

node [
name "Little Rock"
label "Midwest,public"
id 412
]

node [
name "Iowa State"
label "Midwest,public"
id 44
]

node [
name "Iona"
label "Midwest,private"
id 413
]

node [
name "Seton Hall"
label "Midwest,private"
id 46
]

node [
name "Gonzaga"
label "Midwest,private"
id 411
]

node [
name "Utah"
label "Midwest,public"
id 43
]

node [
name "Fresno State"
label "Midwest,public"
id 414
]

node [
name "Dayton"
label "Midwest,private"
id 47
]

node [
name "Syracuse"
label "Midwest,private"
id 410
]

node [
name "Michigan State"
label "Midwest,public"
id 42
]

node [
name "Middle Tenn."
label "Midwest,public"
id 415
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
comment "Miami (Fla.), Buffalo"
source 13
target 114
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

comment "West edges"

edge [
comment "Oregon, Holy Cross"
source 21
target 216
label 1
label "West"
]

edge [
comment "Saint Joseph's, Cincinnati"
source 28
target 29
label 1
label "West"
]

edge [
comment "Yale, Baylor"
source 212
target 25
label 1
label "West"
]

edge [
comment "Duke, UNCW"
source 24
target 213
label 1
label "West"
]

edge [
comment "UNI, Texas"
source 211
target 26
label 1
label "West"
]

edge [
comment "Texas A&M, Green Bay"
source 23
target 214
label 1
label "West"
]

edge [
comment "VCU, Oregon State"
source 210
target 27
label 1
label "West"
]

edge [
comment "Oklahoma, CSU Bakersfield"
source 22
target 215
label 1
label "West"
]

edge [
comment "Oregon, Saint Joseph's"
source 21
target 28
label 2
label "West"
]

edge [
comment "Duke, Yale"
source 24
target 212
label 2
label "West"
]

edge [
comment "Texas A&M, UNI"
source 23
target 211
label 2
label "West"
]

edge [
comment "Oklahoma, VCU"
source 22
target 210
label 2
label "West"
]

edge [
comment "Oregon, Duke"
source 21
target 24
label 3
label "West"
]

edge [
comment "Oklahoma, Texas A&M"
source 22
target 23
label 3
label "West"
]

edge [
comment "Oklahoma, Oregon"
source 22
target 21
label 4
label "West"
]

comment "East edges"

edge [
comment "North Carolina, FGCU"
source 31
target 316
label 1
label "East"
]

edge [
comment "Providence, USC"
source 39
target 38
label 1
label "East"
]

edge [
comment "Indiana, Chattanooga"
source 35
target 312
label 1
label "East"
]

edge [
comment "Kentucky, Stony Brook"
source 34
target 313
label 1
label "East"
]

edge [
comment "Notre Dame, Michigan"
source 36
target 311
label 1
label "East"
]

edge [
comment "Steph. F. Austin, West Virginia"
source 314
target 33
label 1
label "East"
]

edge [
comment "Wisconsin, Pittsburgh"
source 37
target 310
label 1
label "East"
]

edge [
comment "Xavier, Weber State"
source 32
target 315
label 1
label "East"
]

edge [
comment "North Carolina, Providence"
source 31
target 39
label 2
label "East"
]

edge [
comment "Indiana, Kentucky"
source 35
target 34
label 2
label "East"
]

edge [
comment "Notre Dame, Steph. F. Austin"
source 36
target 314
label 2
label "East"
]

edge [
comment "Wisconsin, Xavier"
source 37
target 32
label 2
label "East"
]

edge [
comment "North Carolina, Indiana"
source 31
target 35
label 3
label "East"
]

edge [
comment "Notre Dame, Wisconsin"
source 36
target 37
label 3
label "East"
]

edge [
comment "North Carolina, Notre Dame"
source 31
target 36
label 4
label "East"
]

comment "Midwest edges"

edge [
comment "Virginia, Hampton"
source 41
target 416
label 1
label "Midwest"
]

edge [
comment "Butler, Texas Tech"
source 49
target 48
label 1
label "Midwest"
]

edge [
comment "Little Rock, Purdue"
source 412
target 45
label 1
label "Midwest"
]

edge [
comment "Iowa State, Iona"
source 44
target 413
label 1
label "Midwest"
]

edge [
comment "Gonzaga, Seton Hall"
source 411
target 46
label 1
label "Midwest"
]

edge [
comment "Utah, Fresno State"
source 43
target 414
label 1
label "Midwest"
]

edge [
comment "Syracuse, Dayton"
source 410
target 47
label 1
label "Midwest"
]

edge [
comment "Middle Tenn., Michigan State"
source 415
target 42
label 1
label "Midwest"
]

edge [
comment "Virginia, Butler"
source 41
target 49
label 2
label "Midwest"
]

edge [
comment "Iowa State, Little Rock"
source 44
target 412
label 2
label "Midwest"
]

edge [
comment "Gonzaga, Utah"
source 411
target 43
label 2
label "Midwest"
]

edge [
comment "Syracuse, Middle Tenn."
source 410
target 415
label 2
label "Midwest"
]

edge [
comment "Virginia, Iowa State"
source 41
target 44
label 3
label "Midwest"
]

edge [
comment "Syracuse, Gonzaga"
source 410
target 411
label 3
label "Midwest"
]

edge [
comment "Syracuse, Virginia"
source 410
target 41
label 4
label "Midwest"
]

comment "Final Four"

edge [
comment "Villanova, Oklahoma"
source 12
target 22
label "Final Four"
]

edge [
comment "North Carolina, Syracuse"
source 31
target 410
label "Final Four"
]

edge [
comment "Villanova, North Carolina"
source 12
target 31
label "Final Four"
]

]
