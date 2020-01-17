---
title: "WKEELMIGRATION SEASONALITY DATA TREATMENT"
author: "Cédric Briand, Jan Dag Pohlmann, Estibaliz diaz and Hilaire Drouineau, "
date: "january 2020"
output: html_document
---



# preparing the files

### BE

* No monthly data => remove the file

### DE
* Data for DE_Elbe is pretty much incomplete since only one state reported
  monthly catches. Thus, they are good for relative changes but we have to keep
  track that the absolute numbers are wrong for the EMU - Delete or use?
* Many rows reported as ND,NR,NM etc., with "WHOLE YEAR". -> We will not use
  those anyway, so I deleted them. However, as discussed so many times, this
  information is useful in the sense of knowing that it is not 0-catch, but e.g.
  no monthly data available. (Anyway, we have the original file stored if we
  want to use these information...) 

### ES
* ES_Anda was missing, I have add it. (No data before 2009 and forbidden later).
  In ES_Murc there is monthly data from 2002 on. For 2000 and 2001 data for the
  whole year has been provided. I have leaveD it.


### FI
* Total Landings for the whole country (EMU).  NO edits for the rest, it can be
  used


### FR
FR_Meus, FR_Rhin missing. I guess this is because they are international bassins
withoufh fishery (CEDRIC Confirm, there is no commercial fishery there). NO
edits for the rest, it can be used

### GB
* data for lough neagh not reported monthly -> Derek will provide monthly data
  for Y after Jan 20th, thus for now, the Neagh entries were deleted and a
  seperate file will be provided once available.
* data on Y&S is reported for GB_Total from 2011-2013 -> Assume there is no EMU
  data thus summed for all but GB_Scot & GB_neag, but sent an email to clarify.
  How to treat these? -> confirmed, left it in the sheet as GB_total  
* habitat is defined as NR for a lot of the data, if its unknown what are we
  going to do? -> Check with Cedric if we use those data (Cédric => I would say
  very probably not, if it's there we have it and can compare later on with what
  we have in the database for landings through shiny app, if not then it's
  probably not very important). I have sent an email to Ryan ". I guess that the
  problem is that you do not know where the catches happened exactly; if this is
   the case I´d suggest to writte “FTC” since it includes all the possible
  habitats" and he has agreed 

Jan-Dag: After habitat was recorded, GB_Dee is the only EMU with T, thus I'd
suggest using FC for the other EMUs before 2011. Also, after habitat was
recorded, all glass eel fisheries have habitat "F", so I'd suggest using only F
for glass eel fisheries before 2011. All others FC. -> Awaiting confirmation
from Ryan.
 
* glass eel catch data is reported for whole year (season Feb to May) in GB
  since 2014 for several EMUs -> deleted entries, except if it was 0, then
  converted to respective month according to comment
* GB_NorW was missing in the EMU list and was added to this sheet -> Cedric,
  does the EMU exist in the database? => Yes
* WAITING FOR AN ANSWER -> Jan-Dag: I have the file prepared and will upload it
  once clarified

### HR
* data for 2018 is preliminary, which I think we don't want. -> delete these
  rows? (wasn't done by me)
* otherwise no edits needed 

### IE
* no edits needed. Esti: I  have deleted some extra "0"s in the rows below and
  changed some months with lower case to upper case

### DK

* data for 2019 is preliminary, which I think we don't want. -> delete these
  rows? (wasn't done by me)
* otherwise no edits needed 

### LTU
* I have sent this mail to Arvydas: in some "eel_value" rows there was a "0" in
  places where "eel_missvaluequal" was NC or NR. I have deleted those "0"s,
  since this would mean 0 catches, not no data. I have found that in the T -
  Curonian Lagoon for some months (Jan, Feb, March, Nov and DEC) you have
  included 0 catches. I have checked the closure document, and I have seen that
  the fishery is closed during this months. Therefore, I think that it would be
  more correct not to include this months, (o catches means you have gone
  fishing and your catches have been 0. Please let me know if I´m correct.
  Arvydas´s answer: The main fishing gear for eel in the Curonian Lagoon is eel
  Fyke nets, fishing period are from April to October. The catch of eel depends
  on natural conditions. The water temperature is very low between November and
  March in Curonian Lagoon, which makes the eels passive and its does not
  migrate. But at the this  time (autumn, winter) in Curonian Lagoon fishermen
  used small mesh size traps for fishing for lamprey and smelt, and eels are
  sometimes caught like bycatch.  Eels are recorded by fishermen, so they appear
  in the statistics  (a few kilograms). But I agree that it would be more
  correct not to include this months. On the other hand, the increase  eel
  catches in November reflects climate change.SO i´LL DELETE Jan, Feb, March,
  Nov and DEC) 
* In some cases they have included data by month and also a total by year adding
  up all those months. I deleted the total because it duplicated the
  information.  
* In some cases, they don't have data by month and put "NC" or "ND" and then for
  the same year they do include whole year data. I deleted the NC and ND for
  months and left the annual data. 

### LV
* I have sent this mail to Janis. In the case of Latvia there was not a contact
  person to check the data, so I though you might be related to that.  In this
  way, I wanted to check with you that “0” catches is correct. You have included
  0 catches during oct, nov, dec, jan, feb, marc, apr. 0 catches mean that
  fisher have gone fishing and their catches have been 0. Is that the case? If
  the fishery was closed during these months you should write NP (no pertinent
  ). I have checked the closures files and they only describe closures during
  2018 and 2019 and they only mention closures during nov, dic, jan. Could you
  clarify please if the 0 s correspond to 0 catches or to a fishery closure?
  ANSWER: Yes, that is correct - 0 catches mean that fisher have gone fishing
  and their catches have been 0. There is no eel speciffic fisheries in coastal
  waters  - eel is a bycatch. In fresh waters also many fishermen use fyke nets
  and focus on multiple species, only some use eel specific gear. SO NO CHANGES
  NEEDED
* LV_Latv changed to LV_tota

### NL
* There are 0s in the catches, but they vary from year to year, so I understand
  that they do not correspond to closures in the fishery.
* I have changed  from NL_Neth  to NL_total
* ICes area was not included and I have included it =>(Cédric unless we are
  dealing with coastal or marine areas corresponding to ICES division, and I
  don't think we will have much of those, I don't think we are gonna use the
  ICES area). 

### NO
* I have found that eel_lfs_code is missing in some rows (see attached).
  Caroline has asked me to include YS in those cases
* I have sent a mail to Caroline to confirm that "0"s correspond to real 0
  catches. ANSWER FROM CAROLINE: "The fishery closed starting in from 2011. It
  opened partially in 2016 (and it is still the same today): to only a few
  fishers which could fish from July to October." and me answer "SO I understand
  that for the 2011-2015 period I should change the “0” catches to NP( this
  means that fishery was closed) and the rest of the 0s really mean 0 cacthes
  (there was a a fishery activity but catches were 0). Right?" ANSWER: right

### PL
* Data for the 2000-2003 is tagged as low quality. Should we use it?

### SE
* Message for Josephine , I have found that eel_lfs_code is missing in some rows
  (see attached). What should I include?. Answer from Josephine: "Also, if
  lifestage is also missing in certain places, that too would be because it’s
  missing in the original file, i.e. in the data we get from Swam. This is not
  an easy fix problem but Swam are at least aware that their data is far from
  perfect and they are working on improving their database, but that does not
  help us now. I’m sorry I don’t have a better answer to this…". So I have
  deleted the rows that do not contain life stage


# reading the files





```r
load(file=str_c(datawd1,"list_seasonality.Rdata"))
# list_seasonality is a list with all data sets (readme, data, series) as elements of the list
# below we extract the list of data and bind them all in a single data.frame
# to do so, I had to constrain the column type during file reading (see functions.R)
res <- map(list_seasonality,function(X){			X[["data"]]		}) %>% 
		bind_rows()
Hmisc::describe(res)
```

```
## res 
## 
##  14  Variables      12537  Observations
## ---------------------------------------------------------------------------
## eel_typ_name 
##        n  missing distinct 
##    12365      172        2 
##                                           
## Value      com_landings_kg rec_landings_kg
## Frequency            12209             156
## Proportion           0.987           0.013
## ---------------------------------------------------------------------------
## eel_year 
##        n  missing distinct     Info     Mean      Gmd      .05      .10 
##    12365      172      115    0.997     2010    7.506     2001     2002 
##      .25      .50      .75      .90      .95 
##     2006     2011     2015     2017     2018 
## 
## lowest : 1905 1906 1907 1908 1909, highest: 2015 2016 2017 2018 2019
## ---------------------------------------------------------------------------
## eel_month 
##        n  missing distinct 
##    12365      172       15 
## 
## APR (1008, 0.082), AUG (1084, 0.088), Dec (1, 0.000), DEC (974, 0.079),
## FEB (834, 0.067), JAN (849, 0.069), JUL (1110, 0.090), JUN (1080, 0.087),
## MAR (891, 0.072), MAY (1023, 0.083), NOV (1099, 0.089), OCT (1060, 0.086),
## REMAIN YEAR (213, 0.017), SEP (1029, 0.083), WHOLE YEAR (110, 0.009)
## ---------------------------------------------------------------------------
## eel_value 
##         n   missing  distinct      Info      Mean       Gmd       .05 
##     12327       210      6148      0.99      7052     13297     0.000 
##       .10       .25       .50       .75       .90       .95 
##     0.000     2.605   111.200   970.200  4964.700 22502.220 
## 
## lowest :      0.000      0.025      0.050      0.080      0.100
## highest: 667428.571 680000.000 701015.873 704158.730 805841.270
## ---------------------------------------------------------------------------
## eel_missvaluequal 
##        n  missing distinct 
##       39    12498        3 
##                             
## Value         ND    NM    NP
## Frequency      9    19    11
## Proportion 0.231 0.487 0.282
## ---------------------------------------------------------------------------
## eel_emu_nameshort 
##        n  missing distinct 
##    12365      172       46 
## 
## lowest : DE_Eide  DE_Elbe  DE_Schl  DE_Warn  DK_total
## highest: PL_Oder  PL_Vist  SE_East  SE_Inla  SE_West 
## ---------------------------------------------------------------------------
## eel_cou_code 
##        n  missing distinct 
##    12537        0       13 
##                                                                       
## Value          0    DE    DK    ES    FI    FR    GB    HR    IE    NL
## Frequency    172  2058   464  1074    96  3947  2452    72    35   430
## Proportion 0.014 0.164 0.037 0.086 0.008 0.315 0.196 0.006 0.003 0.034
##                             
## Value         NO    PL    SE
## Frequency    217   702   818
## Proportion 0.017 0.056 0.065
## ---------------------------------------------------------------------------
## eel_lfs_code 
##        n  missing distinct 
##    12365      172        4 
##                                   
## Value          G     S     Y    YS
## Frequency   2198  2921  3926  3320
## Proportion 0.178 0.236 0.318 0.268
## ---------------------------------------------------------------------------
## eel_hty_code 
##        n  missing distinct 
##    12365      172        7 
##                                                     
## Value          C     F    FT   FTC    MO     T    TC
## Frequency   1927  3441    12  1350   464  4532   639
## Proportion 0.156 0.278 0.001 0.109 0.038 0.367 0.052
## ---------------------------------------------------------------------------
## eel_area_division 
##        n  missing distinct 
##     4817     7720       12 
##                                                                       
## Value         27.3.a 27.3.b, c    27.3.d    27.4.b    27.4.c    27.7.a
## Frequency        460       728      1176       816       171       152
## Proportion     0.095     0.151     0.244     0.169     0.035     0.032
##                                                                       
## Value         27.7.d    27.7.e    27.8.c    27.9.a    37.1.1    37.2.1
## Frequency         86        82       404       257       413        72
## Proportion     0.018     0.017     0.084     0.053     0.086     0.015
## ---------------------------------------------------------------------------
## eel_comment 
##        n  missing distinct 
##     2371    10166       30 
## 
## lowest : 27.4.a also included                                                                                                                       All marine areas                                                                                                                           All marine areas. Preliminary data                                                                                                         area information is incomplete, but almost everything is from Ivc                                                                          Bristol Channel                                                                                                                           
## highest: total landings of one fisherman were reported monthly. But proportion of silvereel of total landings were only provided as a total (120kg) total landings of one fisherman were reported monthy. But proportion of silvereel of total landings were only provided as a total (100kg)  Two days fished using one fyke net (AUG). No eels caught                                                                                   two fishermen only reported yearly catch for yellow and silver eel combined which are excluded (total of 15kg in 2009)                     Vessels of the Nalón stop from February 17 to March 18, 2011.                                                                             
## ---------------------------------------------------------------------------
## source 
##        n  missing distinct 
##    12537        0       12 
## 
## lowest : DE_commercial_landings DK_commercial_landings ES_commercial_landings FL_commercial_landings FR_commercial_landings
## highest: IE_commercial_landings NL_commercial_landings NO_commercial_landings PL_commercial_landings SE_commercial_landings
## ---------------------------------------------------------------------------
## country 
##        n  missing distinct 
##    12537        0       12 
##                                                                       
## Value         DE    DK    ES    FL    FR    GB    HR    IE    NL    NO
## Frequency   2058   464  1074    96  3947  2452   244    35   430   217
## Proportion 0.164 0.037 0.086 0.008 0.315 0.196 0.019 0.003 0.034 0.017
##                       
## Value         PL    SE
## Frequency    702   818
## Proportion 0.056 0.065
## ---------------------------------------------------------------------------
## datasource 
##              n        missing       distinct          value 
##          12537              0              1 wkeelmigration 
##                          
## Value      wkeelmigration
## Frequency           12537
## Proportion              1
## ---------------------------------------------------------------------------
```

```r
print(res[is.na(res$eel_emu_nameshort),],n=1000)
```

```
## # A tibble: 172 x 14
##     eel_typ_name eel_year eel_month eel_value eel_missvaluequ~
##     <chr>           <dbl> <chr>         <dbl> <chr>           
##   1 <NA>               NA <NA>             NA <NA>            
##   2 <NA>               NA <NA>             NA <NA>            
##   3 <NA>               NA <NA>             NA <NA>            
##   4 <NA>               NA <NA>             NA <NA>            
##   5 <NA>               NA <NA>             NA <NA>            
##   6 <NA>               NA <NA>             NA <NA>            
##   7 <NA>               NA <NA>             NA <NA>            
##   8 <NA>               NA <NA>             NA <NA>            
##   9 <NA>               NA <NA>             NA <NA>            
##  10 <NA>               NA <NA>             NA <NA>            
##  11 <NA>               NA <NA>             NA <NA>            
##  12 <NA>               NA <NA>             NA <NA>            
##  13 <NA>               NA <NA>             NA <NA>            
##  14 <NA>               NA <NA>             NA <NA>            
##  15 <NA>               NA <NA>             NA <NA>            
##  16 <NA>               NA <NA>             NA <NA>            
##  17 <NA>               NA <NA>             NA <NA>            
##  18 <NA>               NA <NA>             NA <NA>            
##  19 <NA>               NA <NA>             NA <NA>            
##  20 <NA>               NA <NA>             NA <NA>            
##  21 <NA>               NA <NA>             NA <NA>            
##  22 <NA>               NA <NA>             NA <NA>            
##  23 <NA>               NA <NA>             NA <NA>            
##  24 <NA>               NA <NA>             NA <NA>            
##  25 <NA>               NA <NA>             NA <NA>            
##  26 <NA>               NA <NA>             NA <NA>            
##  27 <NA>               NA <NA>             NA <NA>            
##  28 <NA>               NA <NA>             NA <NA>            
##  29 <NA>               NA <NA>             NA <NA>            
##  30 <NA>               NA <NA>             NA <NA>            
##  31 <NA>               NA <NA>             NA <NA>            
##  32 <NA>               NA <NA>             NA <NA>            
##  33 <NA>               NA <NA>             NA <NA>            
##  34 <NA>               NA <NA>             NA <NA>            
##  35 <NA>               NA <NA>             NA <NA>            
##  36 <NA>               NA <NA>             NA <NA>            
##  37 <NA>               NA <NA>             NA <NA>            
##  38 <NA>               NA <NA>             NA <NA>            
##  39 <NA>               NA <NA>             NA <NA>            
##  40 <NA>               NA <NA>             NA <NA>            
##  41 <NA>               NA <NA>             NA <NA>            
##  42 <NA>               NA <NA>             NA <NA>            
##  43 <NA>               NA <NA>             NA <NA>            
##  44 <NA>               NA <NA>             NA <NA>            
##  45 <NA>               NA <NA>             NA <NA>            
##  46 <NA>               NA <NA>             NA <NA>            
##  47 <NA>               NA <NA>             NA <NA>            
##  48 <NA>               NA <NA>             NA <NA>            
##  49 <NA>               NA <NA>             NA <NA>            
##  50 <NA>               NA <NA>             NA <NA>            
##  51 <NA>               NA <NA>             NA <NA>            
##  52 <NA>               NA <NA>             NA <NA>            
##  53 <NA>               NA <NA>             NA <NA>            
##  54 <NA>               NA <NA>             NA <NA>            
##  55 <NA>               NA <NA>             NA <NA>            
##  56 <NA>               NA <NA>             NA <NA>            
##  57 <NA>               NA <NA>             NA <NA>            
##  58 <NA>               NA <NA>             NA <NA>            
##  59 <NA>               NA <NA>             NA <NA>            
##  60 <NA>               NA <NA>             NA <NA>            
##  61 <NA>               NA <NA>             NA <NA>            
##  62 <NA>               NA <NA>             NA <NA>            
##  63 <NA>               NA <NA>             NA <NA>            
##  64 <NA>               NA <NA>             NA <NA>            
##  65 <NA>               NA <NA>             NA <NA>            
##  66 <NA>               NA <NA>             NA <NA>            
##  67 <NA>               NA <NA>             NA <NA>            
##  68 <NA>               NA <NA>             NA <NA>            
##  69 <NA>               NA <NA>             NA <NA>            
##  70 <NA>               NA <NA>             NA <NA>            
##  71 <NA>               NA <NA>             NA <NA>            
##  72 <NA>               NA <NA>             NA <NA>            
##  73 <NA>               NA <NA>             NA <NA>            
##  74 <NA>               NA <NA>             NA <NA>            
##  75 <NA>               NA <NA>             NA <NA>            
##  76 <NA>               NA <NA>             NA <NA>            
##  77 <NA>               NA <NA>             NA <NA>            
##  78 <NA>               NA <NA>             NA <NA>            
##  79 <NA>               NA <NA>             NA <NA>            
##  80 <NA>               NA <NA>             NA <NA>            
##  81 <NA>               NA <NA>             NA <NA>            
##  82 <NA>               NA <NA>             NA <NA>            
##  83 <NA>               NA <NA>             NA <NA>            
##  84 <NA>               NA <NA>             NA <NA>            
##  85 <NA>               NA <NA>             NA <NA>            
##  86 <NA>               NA <NA>             NA <NA>            
##  87 <NA>               NA <NA>             NA <NA>            
##  88 <NA>               NA <NA>             NA <NA>            
##  89 <NA>               NA <NA>             NA <NA>            
##  90 <NA>               NA <NA>             NA <NA>            
##  91 <NA>               NA <NA>             NA <NA>            
##  92 <NA>               NA <NA>             NA <NA>            
##  93 <NA>               NA <NA>             NA <NA>            
##  94 <NA>               NA <NA>             NA <NA>            
##  95 <NA>               NA <NA>             NA <NA>            
##  96 <NA>               NA <NA>             NA <NA>            
##  97 <NA>               NA <NA>             NA <NA>            
##  98 <NA>               NA <NA>             NA <NA>            
##  99 <NA>               NA <NA>             NA <NA>            
## 100 <NA>               NA <NA>             NA <NA>            
## 101 <NA>               NA <NA>             NA <NA>            
## 102 <NA>               NA <NA>             NA <NA>            
## 103 <NA>               NA <NA>             NA <NA>            
## 104 <NA>               NA <NA>             NA <NA>            
## 105 <NA>               NA <NA>             NA <NA>            
## 106 <NA>               NA <NA>             NA <NA>            
## 107 <NA>               NA <NA>             NA <NA>            
## 108 <NA>               NA <NA>             NA <NA>            
## 109 <NA>               NA <NA>             NA <NA>            
## 110 <NA>               NA <NA>             NA <NA>            
## 111 <NA>               NA <NA>             NA <NA>            
## 112 <NA>               NA <NA>             NA <NA>            
## 113 <NA>               NA <NA>             NA <NA>            
## 114 <NA>               NA <NA>             NA <NA>            
## 115 <NA>               NA <NA>             NA <NA>            
## 116 <NA>               NA <NA>             NA <NA>            
## 117 <NA>               NA <NA>             NA <NA>            
## 118 <NA>               NA <NA>             NA <NA>            
## 119 <NA>               NA <NA>             NA <NA>            
## 120 <NA>               NA <NA>             NA <NA>            
## 121 <NA>               NA <NA>             NA <NA>            
## 122 <NA>               NA <NA>             NA <NA>            
## 123 <NA>               NA <NA>             NA <NA>            
## 124 <NA>               NA <NA>             NA <NA>            
## 125 <NA>               NA <NA>             NA <NA>            
## 126 <NA>               NA <NA>             NA <NA>            
## 127 <NA>               NA <NA>             NA <NA>            
## 128 <NA>               NA <NA>             NA <NA>            
## 129 <NA>               NA <NA>             NA <NA>            
## 130 <NA>               NA <NA>             NA <NA>            
## 131 <NA>               NA <NA>             NA <NA>            
## 132 <NA>               NA <NA>             NA <NA>            
## 133 <NA>               NA <NA>             NA <NA>            
## 134 <NA>               NA <NA>             NA <NA>            
## 135 <NA>               NA <NA>             NA <NA>            
## 136 <NA>               NA <NA>             NA <NA>            
## 137 <NA>               NA <NA>             NA <NA>            
## 138 <NA>               NA <NA>             NA <NA>            
## 139 <NA>               NA <NA>             NA <NA>            
## 140 <NA>               NA <NA>             NA <NA>            
## 141 <NA>               NA <NA>             NA <NA>            
## 142 <NA>               NA <NA>             NA <NA>            
## 143 <NA>               NA <NA>             NA <NA>            
## 144 <NA>               NA <NA>             NA <NA>            
## 145 <NA>               NA <NA>             NA <NA>            
## 146 <NA>               NA <NA>             NA <NA>            
## 147 <NA>               NA <NA>             NA <NA>            
## 148 <NA>               NA <NA>             NA <NA>            
## 149 <NA>               NA <NA>             NA <NA>            
## 150 <NA>               NA <NA>             NA <NA>            
## 151 <NA>               NA <NA>             NA <NA>            
## 152 <NA>               NA <NA>             NA <NA>            
## 153 <NA>               NA <NA>             NA <NA>            
## 154 <NA>               NA <NA>             NA <NA>            
## 155 <NA>               NA <NA>             NA <NA>            
## 156 <NA>               NA <NA>             NA <NA>            
## 157 <NA>               NA <NA>             NA <NA>            
## 158 <NA>               NA <NA>             NA <NA>            
## 159 <NA>               NA <NA>             NA <NA>            
## 160 <NA>               NA <NA>             NA <NA>            
## 161 <NA>               NA <NA>             NA <NA>            
## 162 <NA>               NA <NA>             NA <NA>            
## 163 <NA>               NA <NA>             NA <NA>            
## 164 <NA>               NA <NA>             NA <NA>            
## 165 <NA>               NA <NA>             NA <NA>            
## 166 <NA>               NA <NA>             NA <NA>            
## 167 <NA>               NA <NA>             NA <NA>            
## 168 <NA>               NA <NA>             NA <NA>            
## 169 <NA>               NA <NA>             NA <NA>            
## 170 <NA>               NA <NA>             NA <NA>            
## 171 <NA>               NA <NA>             NA <NA>            
## 172 <NA>               NA <NA>             NA <NA>            
## # ... with 9 more variables: eel_emu_nameshort <chr>, eel_cou_code <chr>,
## #   eel_lfs_code <chr>, eel_hty_code <chr>, eel_area_division <chr>,
## #   eel_comment <chr>, source <chr>, country <chr>, datasource <chr>
```

```r
# all NA print(res[is.na(res$eel_emu_nameshort),],n=1000)
res <- res[!is.na(res$eel_emu_nameshort),]
# describe file again
Hmisc::describe(res)
```

```
## res 
## 
##  14  Variables      12365  Observations
## ---------------------------------------------------------------------------
## eel_typ_name 
##        n  missing distinct 
##    12365        0        2 
##                                           
## Value      com_landings_kg rec_landings_kg
## Frequency            12209             156
## Proportion           0.987           0.013
## ---------------------------------------------------------------------------
## eel_year 
##        n  missing distinct     Info     Mean      Gmd      .05      .10 
##    12365        0      115    0.997     2010    7.506     2001     2002 
##      .25      .50      .75      .90      .95 
##     2006     2011     2015     2017     2018 
## 
## lowest : 1905 1906 1907 1908 1909, highest: 2015 2016 2017 2018 2019
## ---------------------------------------------------------------------------
## eel_month 
##        n  missing distinct 
##    12365        0       15 
## 
## APR (1008, 0.082), AUG (1084, 0.088), Dec (1, 0.000), DEC (974, 0.079),
## FEB (834, 0.067), JAN (849, 0.069), JUL (1110, 0.090), JUN (1080, 0.087),
## MAR (891, 0.072), MAY (1023, 0.083), NOV (1099, 0.089), OCT (1060, 0.086),
## REMAIN YEAR (213, 0.017), SEP (1029, 0.083), WHOLE YEAR (110, 0.009)
## ---------------------------------------------------------------------------
## eel_value 
##         n   missing  distinct      Info      Mean       Gmd       .05 
##     12327        38      6148      0.99      7052     13297     0.000 
##       .10       .25       .50       .75       .90       .95 
##     0.000     2.605   111.200   970.200  4964.700 22502.220 
## 
## lowest :      0.000      0.025      0.050      0.080      0.100
## highest: 667428.571 680000.000 701015.873 704158.730 805841.270
## ---------------------------------------------------------------------------
## eel_missvaluequal 
##        n  missing distinct 
##       39    12326        3 
##                             
## Value         ND    NM    NP
## Frequency      9    19    11
## Proportion 0.231 0.487 0.282
## ---------------------------------------------------------------------------
## eel_emu_nameshort 
##        n  missing distinct 
##    12365        0       46 
## 
## lowest : DE_Eide  DE_Elbe  DE_Schl  DE_Warn  DK_total
## highest: PL_Oder  PL_Vist  SE_East  SE_Inla  SE_West 
## ---------------------------------------------------------------------------
## eel_cou_code 
##        n  missing distinct 
##    12365        0       12 
##                                                                       
## Value         DE    DK    ES    FI    FR    GB    HR    IE    NL    NO
## Frequency   2058   464  1074    96  3947  2452    72    35   430   217
## Proportion 0.166 0.038 0.087 0.008 0.319 0.198 0.006 0.003 0.035 0.018
##                       
## Value         PL    SE
## Frequency    702   818
## Proportion 0.057 0.066
## ---------------------------------------------------------------------------
## eel_lfs_code 
##        n  missing distinct 
##    12365        0        4 
##                                   
## Value          G     S     Y    YS
## Frequency   2198  2921  3926  3320
## Proportion 0.178 0.236 0.318 0.268
## ---------------------------------------------------------------------------
## eel_hty_code 
##        n  missing distinct 
##    12365        0        7 
##                                                     
## Value          C     F    FT   FTC    MO     T    TC
## Frequency   1927  3441    12  1350   464  4532   639
## Proportion 0.156 0.278 0.001 0.109 0.038 0.367 0.052
## ---------------------------------------------------------------------------
## eel_area_division 
##        n  missing distinct 
##     4817     7548       12 
##                                                                       
## Value         27.3.a 27.3.b, c    27.3.d    27.4.b    27.4.c    27.7.a
## Frequency        460       728      1176       816       171       152
## Proportion     0.095     0.151     0.244     0.169     0.035     0.032
##                                                                       
## Value         27.7.d    27.7.e    27.8.c    27.9.a    37.1.1    37.2.1
## Frequency         86        82       404       257       413        72
## Proportion     0.018     0.017     0.084     0.053     0.086     0.015
## ---------------------------------------------------------------------------
## eel_comment 
##        n  missing distinct 
##     2371     9994       30 
## 
## lowest : 27.4.a also included                                                                                                                       All marine areas                                                                                                                           All marine areas. Preliminary data                                                                                                         area information is incomplete, but almost everything is from Ivc                                                                          Bristol Channel                                                                                                                           
## highest: total landings of one fisherman were reported monthly. But proportion of silvereel of total landings were only provided as a total (120kg) total landings of one fisherman were reported monthy. But proportion of silvereel of total landings were only provided as a total (100kg)  Two days fished using one fyke net (AUG). No eels caught                                                                                   two fishermen only reported yearly catch for yellow and silver eel combined which are excluded (total of 15kg in 2009)                     Vessels of the Nalón stop from February 17 to March 18, 2011.                                                                             
## ---------------------------------------------------------------------------
## source 
##        n  missing distinct 
##    12365        0       12 
## 
## lowest : DE_commercial_landings DK_commercial_landings ES_commercial_landings FL_commercial_landings FR_commercial_landings
## highest: IE_commercial_landings NL_commercial_landings NO_commercial_landings PL_commercial_landings SE_commercial_landings
## ---------------------------------------------------------------------------
## country 
##        n  missing distinct 
##    12365        0       12 
##                                                                       
## Value         DE    DK    ES    FL    FR    GB    HR    IE    NL    NO
## Frequency   2058   464  1074    96  3947  2452    72    35   430   217
## Proportion 0.166 0.038 0.087 0.008 0.319 0.198 0.006 0.003 0.035 0.018
##                       
## Value         PL    SE
## Frequency    702   818
## Proportion 0.057 0.066
## ---------------------------------------------------------------------------
## datasource 
##              n        missing       distinct          value 
##          12365              0              1 wkeelmigration 
##                          
## Value      wkeelmigration
## Frequency           12365
## Proportion              1
## ---------------------------------------------------------------------------
```

```r
# All ND, NP or NM
print(res[is.na(res$eel_value),],n=40)
```

```
## # A tibble: 38 x 14
##    eel_typ_name eel_year eel_month eel_value eel_missvaluequ~
##    <chr>           <dbl> <chr>         <dbl> <chr>           
##  1 com_landing~     2000 WHOLE YE~        NA NM              
##  2 com_landing~     2001 WHOLE YE~        NA NM              
##  3 com_landing~     2002 WHOLE YE~        NA NM              
##  4 com_landing~     2003 WHOLE YE~        NA NM              
##  5 com_landing~     2004 WHOLE YE~        NA NM              
##  6 com_landing~     2005 WHOLE YE~        NA NM              
##  7 com_landing~     2006 WHOLE YE~        NA NM              
##  8 com_landing~     2007 WHOLE YE~        NA NM              
##  9 com_landing~     2008 WHOLE YE~        NA NM              
## 10 com_landing~     2000 WHOLE YE~        NA NM              
## 11 com_landing~     2001 WHOLE YE~        NA NM              
## 12 com_landing~     2002 WHOLE YE~        NA NM              
## 13 com_landing~     2003 WHOLE YE~        NA NM              
## 14 com_landing~     2004 WHOLE YE~        NA NM              
## 15 com_landing~     2005 WHOLE YE~        NA NM              
## 16 com_landing~     2006 WHOLE YE~        NA NM              
## 17 com_landing~     2007 WHOLE YE~        NA NM              
## 18 com_landing~     2008 WHOLE YE~        NA NM              
## 19 com_landing~     2000 WHOLE YE~        NA ND              
## 20 com_landing~     2001 WHOLE YE~        NA ND              
## 21 com_landing~     2002 WHOLE YE~        NA ND              
## 22 com_landing~     2003 WHOLE YE~        NA ND              
## 23 com_landing~     2004 WHOLE YE~        NA ND              
## 24 com_landing~     2005 WHOLE YE~        NA ND              
## 25 com_landing~     2006 WHOLE YE~        NA ND              
## 26 com_landing~     2007 WHOLE YE~        NA ND              
## 27 com_landing~     2008 WHOLE YE~        NA ND              
## 28 com_landing~     2009 WHOLE YE~        NA NP              
## 29 com_landing~     2010 WHOLE YE~        NA NP              
## 30 com_landing~     2011 WHOLE YE~        NA NP              
## 31 com_landing~     2012 WHOLE YE~        NA NP              
## 32 com_landing~     2013 WHOLE YE~        NA NP              
## 33 com_landing~     2014 WHOLE YE~        NA NP              
## 34 com_landing~     2015 WHOLE YE~        NA NP              
## 35 com_landing~     2016 WHOLE YE~        NA NP              
## 36 com_landing~     2017 WHOLE YE~        NA NP              
## 37 com_landing~     2018 WHOLE YE~        NA NP              
## 38 com_landing~     2019 WHOLE YE~        NA NP              
## # ... with 9 more variables: eel_emu_nameshort <chr>, eel_cou_code <chr>,
## #   eel_lfs_code <chr>, eel_hty_code <chr>, eel_area_division <chr>,
## #   eel_comment <chr>, source <chr>, country <chr>, datasource <chr>
```

```r
# removing those rows
res <- res[!is.na(res$eel_value),]
nrow(res) 
```

```
## [1] 12327
```

```r
unique(res$eel_month)
```

```
##  [1] "JAN"         "FEB"         "MAR"         "APR"         "MAY"        
##  [6] "JUN"         "JUL"         "AUG"         "SEP"         "OCT"        
## [11] "NOV"         "DEC"         "WHOLE YEAR"  "REMAIN YEAR" "Dec"
```

```r
res$eel_month <- tolower(res$eel_month)
# removing whole year and missing year
resw <- res[res$eel_month%in%c("whole year"),]
print(resw)
```

```
## # A tibble: 72 x 14
##    eel_typ_name eel_year eel_month eel_value eel_missvaluequ~
##    <chr>           <dbl> <chr>         <dbl> <chr>           
##  1 com_landing~     2001 whole ye~   30402   <NA>            
##  2 com_landing~     2000 whole ye~   35489   <NA>            
##  3 com_landing~     2014 whole ye~     138.  <NA>            
##  4 com_landing~     2014 whole ye~    6233.  <NA>            
##  5 com_landing~     2014 whole ye~    5626.  <NA>            
##  6 com_landing~     2014 whole ye~      33.9 <NA>            
##  7 com_landing~     2015 whole ye~      17   <NA>            
##  8 com_landing~     2015 whole ye~     106.  <NA>            
##  9 com_landing~     2015 whole ye~    1301.  <NA>            
## 10 com_landing~     2015 whole ye~    1378.  <NA>            
## # ... with 62 more rows, and 9 more variables: eel_emu_nameshort <chr>,
## #   eel_cou_code <chr>, eel_lfs_code <chr>, eel_hty_code <chr>,
## #   eel_area_division <chr>, eel_comment <chr>, source <chr>,
## #   country <chr>, datasource <chr>
```

```r
# ONLY GB_Neag and this is whole_year not remain year
resr <- res[res$eel_month%in%c("remain year"),]
print(resr)
```

```
## # A tibble: 213 x 14
##    eel_typ_name eel_year eel_month eel_value eel_missvaluequ~
##    <chr>           <dbl> <chr>         <dbl> <chr>           
##  1 com_landing~     1922 remain y~    419000 <NA>            
##  2 com_landing~     1923 remain y~    172000 <NA>            
##  3 com_landing~     1924 remain y~    190000 <NA>            
##  4 com_landing~     1925 remain y~    137000 <NA>            
##  5 com_landing~     1926 remain y~    173000 <NA>            
##  6 com_landing~     1927 remain y~    148000 <NA>            
##  7 com_landing~     1928 remain y~    187000 <NA>            
##  8 com_landing~     1929 remain y~     88000 <NA>            
##  9 com_landing~     1930 remain y~    146000 <NA>            
## 10 com_landing~     1931 remain y~    227000 <NA>            
## # ... with 203 more rows, and 9 more variables: eel_emu_nameshort <chr>,
## #   eel_cou_code <chr>, eel_lfs_code <chr>, eel_hty_code <chr>,
## #   eel_area_division <chr>, eel_comment <chr>, source <chr>,
## #   country <chr>, datasource <chr>
```

```r
res <-res[!res$eel_month%in%c("whole year", "remain year"),]
# recode the month
res$eel_month <- recode(res$eel_month, 
		"mar"=3, 
		"apr"=4, 
		"may"=5, 
		"jun"=6,
		"jul"=7,
		"aug"=8,
		"sep"=9,
		"oct"=10,
		"nov"=11,
		"dec"=12, 
		"jan"=1, 
		"feb"=2
)
Hmisc::describe(res$eel_month)
```

```
## res$eel_month 
##        n  missing distinct     Info     Mean      Gmd      .05      .10 
##    12042        0       12    0.993    6.719     3.86        1        2 
##      .25      .50      .75      .90      .95 
##        4        7       10       11       12 
##                                                                       
## Value          1     2     3     4     5     6     7     8     9    10
## Frequency    849   834   891  1008  1023  1080  1110  1084  1029  1060
## Proportion 0.071 0.069 0.074 0.084 0.085 0.090 0.092 0.090 0.085 0.088
##                       
## Value         11    12
## Frequency   1099   975
## Proportion 0.091 0.081
```

```r
# number of data per emu
#res %>% mutate("freq"=1) %>% filter(eel_year>2000 & eel_year<2019) %>%
#xtabs ( formula=freq ~ eel_year + eel_month +eel_emu_nameshort)


res <- res[order(res$eel_typ_name,res$eel_emu_nameshort, res$eel_year, res$eel_month,res$eel_lfs_code,res$eel_hty_code),]
res$id <- 1:nrow(res)

# some of the data have more than two rows per month per year, it's OK for germany but there is a problem with the
# Polish file
res %>% mutate("freq"=1) %>% filter(eel_year>2000 & eel_year<2019) %>%
		xtabs ( formula=freq ~ eel_year + eel_month +eel_emu_nameshort +eel_lfs_code)%>%
		as.data.frame() %>% filter(Freq>2)%>% kable()%>% kable_styling() %>%
		scroll_box(width = "500px", height = "200px")
```

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:200px; overflow-x: scroll; width:500px; "><table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_year </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_month </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_emu_nameshort </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_lfs_code </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Freq </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> DE_Eide </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 8 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 25 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 22 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2003 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 26 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2003 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 10 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 15 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 9 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> PL_Oder </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> PL_Vist </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> PL_Vist </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 4 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> PL_Vist </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> PL_Vist </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> PL_Vist </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 5 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> PL_Vist </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:right;"> 3 </td>
  </tr>
</tbody>
</table></div>

```r
# temporarily dropping those files
res <-res%>%filter(!eel_emu_nameshort%in% c('PL_Oder','PL_Vist'))

# SEARCHING FOR DUPLICATES-----------------------------------------------------------

duplicates <- res %>% mutate("freq"=1) %>% filter(eel_year>2000 & eel_year<2019) %>%
		xtabs ( formula=freq ~ eel_year + eel_month +eel_emu_nameshort +eel_lfs_code+eel_hty_code+eel_typ_name)%>%
		as.data.frame() %>% filter(Freq>1)

kable(duplicates)%>% kable_styling() %>%
		scroll_box(width = "500px", height = "200px")
```

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:200px; overflow-x: scroll; width:500px; "><table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_year </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_month </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_emu_nameshort </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_lfs_code </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_hty_code </th>
   <th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;"> eel_typ_name </th>
   <th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;"> Freq </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Murc </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> C </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Murc </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> C </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Murc </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> C </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> SE_Inla </td>
   <td style="text-align:left;"> S </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 5 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 7 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 8 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> IE_West </td>
   <td style="text-align:left;"> Y </td>
   <td style="text-align:left;"> F </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2003 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2003 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2003 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2003 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2003 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2001 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2002 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2003 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Astu </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Cata </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> FI_total </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> FI_total </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> FI_total </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> FI_total </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> FI_total </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> FI_total </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> FI_total </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> FI_total </td>
   <td style="text-align:left;"> YS </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> com_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 2 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 3 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 11 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2004 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2005 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2006 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2007 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2008 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2009 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2010 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2011 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2012 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2013 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2014 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2015 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2016 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2017 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 2018 </td>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> ES_Basq </td>
   <td style="text-align:left;"> G </td>
   <td style="text-align:left;"> T </td>
   <td style="text-align:left;"> rec_landings_kg </td>
   <td style="text-align:right;"> 2 </td>
  </tr>
</tbody>
</table></div>

```r
# =>DUPLICATED VALUES SENT TO ESTI ...

colnames(res) <-gsub("eel_","",colnames(res))


# COMMERCIAL AND RECREATIONAL -----------------------------------------------------------

# The only recreational landings there are the boat fishery for glass eel in Spain
# I'm not using the type, we'll work with both commercial and recreational as a single category.

res %>% filter(typ_name=="rec_landings_kg") %>% select(emu_nameshort) %>% distinct()
```

```
## # A tibble: 2 x 1
##   emu_nameshort
##   <chr>        
## 1 ES_Basq      
## 2 ES_Cata
```

```r
# Currently I have what I have identified as duplicates, since I'm calculating percentage I do the sum

res1 <- 	res %>%	group_by(emu_nameshort,lfs_code,hty_code,year,month) %>% 
		summarize(value=sum(value))


unique(res$emu_nameshort)
```

```
##  [1] "DE_Eide"  "DE_Elbe"  "DE_Schl"  "DE_Warn"  "DK_total" "ES_Astu" 
##  [7] "ES_Cant"  "ES_Cata"  "ES_Gali"  "ES_Mino"  "ES_Murc"  "ES_Vale" 
## [13] "FI_total" "FR_Adou"  "FR_Arto"  "FR_Bret"  "FR_Cors"  "FR_Garo" 
## [19] "FR_Loir"  "FR_Rhin"  "FR_Rhon"  "FR_Sein"  "GB_Angl"  "GB_Dee"  
## [25] "GB_Humb"  "GB_Nort"  "GB_NorW"  "GB_Seve"  "GB_SouE"  "GB_SouW" 
## [31] "GB_Tham"  "GB_total" "GB_Wale"  "HR_total" "IE_East"  "IE_West" 
## [37] "NL_total" "NO_total" "SE_East"  "SE_Inla"  "SE_West"  "ES_Basq"
```

```r
unique(res$hty_code)
```

```
## [1] "C"   "F"   "T"   "MO"  "FTC" "FT"  "TC"
```

```r
table(res$hty_code)
```



<table>
 <thead>
  <tr>
   <th style="text-align:right;"> C </th>
   <th style="text-align:right;"> F </th>
   <th style="text-align:right;"> FT </th>
   <th style="text-align:right;"> FTC </th>
   <th style="text-align:right;"> MO </th>
   <th style="text-align:right;"> T </th>
   <th style="text-align:right;"> TC </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 1776 </td>
   <td style="text-align:right;"> 3173 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 1341 </td>
   <td style="text-align:right;"> 464 </td>
   <td style="text-align:right;"> 4384 </td>
   <td style="text-align:right;"> 199 </td>
  </tr>
</tbody>
</table>

```r
# there are only three lines with hty code 'FT' in Ireland, I'm correcting them to F
res$hty_code[res$hty_code=='FT'] <- 'F'

# Now I don't remember why we put this  :it's fortunate that we don't use that in a dabase. 
# How will we ever treat those categories ?
# "FTC" "FT"  "TC" 

unique(res$lfs_code) # OK
```

```
## [1] "S"  "Y"  "YS" "G"
```





# Silver eels


```r
fnplot <- function(emu, lfs, hty,colfill="grey10"){
	res2 <- res %>% 
			filter(emu_nameshort==emu,
					lfs_code==lfs,
					hty_code %in% hty) %>%
			group_by(emu_nameshort,year,month)%>%
			summarize(value=sum(value))
	
	res3 <- left_join (res2,					
					res2 %>% group_by(emu_nameshort,year)%>%		
							summarize(sum_per_year=sum(value,na.rm=TRUE)),
					by = c("emu_nameshort","year")) %>%	
			mutate(perc_per_month=100*value/sum_per_year) 
	
	if (nrow(res3)>1){
		
		g <- ggplot(res3,aes(x = month)) +
				geom_col(aes(y=perc_per_month),fill=colfill,color="black")+
				xlab("month")+
				ylab("percentage catch")+
				facet_wrap(~year)+
				theme_bw()+
				ggtitle(str_c("Percentage per month ",emu, " ", lfs," ",paste0(hty,collapse="+")))
		
		print(g)
	}
}


for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'S',
			hty = c("C","TC","T"),
			emu=the_emu)
}
```

![plot of chunk s](figure/s-1.png)![plot of chunk s](figure/s-2.png)![plot of chunk s](figure/s-3.png)![plot of chunk s](figure/s-4.png)![plot of chunk s](figure/s-5.png)![plot of chunk s](figure/s-6.png)

```
## Warning: Removed 26 rows containing missing values (position_stack).
```

![plot of chunk s](figure/s-7.png)

```
## Warning: Removed 39 rows containing missing values (position_stack).
```

![plot of chunk s](figure/s-8.png)

```
## Warning: Removed 30 rows containing missing values (position_stack).
```

![plot of chunk s](figure/s-9.png)

```
## Warning: Removed 9 rows containing missing values (position_stack).
```

![plot of chunk s](figure/s-10.png)![plot of chunk s](figure/s-11.png)

```
## Warning: Removed 31 rows containing missing values (position_stack).
```

![plot of chunk s](figure/s-12.png)

```
## Warning: Removed 7 rows containing missing values (position_stack).
```

![plot of chunk s](figure/s-13.png)![plot of chunk s](figure/s-14.png)![plot of chunk s](figure/s-15.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'S',
			hty = c("F"),
			emu=the_emu, 
			colfill= "navyblue")	
}
```

![plot of chunk s](figure/s-16.png)![plot of chunk s](figure/s-17.png)![plot of chunk s](figure/s-18.png)![plot of chunk s](figure/s-19.png)![plot of chunk s](figure/s-20.png)![plot of chunk s](figure/s-21.png)![plot of chunk s](figure/s-22.png)![plot of chunk s](figure/s-23.png)![plot of chunk s](figure/s-24.png)

```
## Warning: Removed 9 rows containing missing values (position_stack).
```

![plot of chunk s](figure/s-25.png)

```
## Warning: Removed 8 rows containing missing values (position_stack).
```

![plot of chunk s](figure/s-26.png)![plot of chunk s](figure/s-27.png)![plot of chunk s](figure/s-28.png)![plot of chunk s](figure/s-29.png)![plot of chunk s](figure/s-30.png)![plot of chunk s](figure/s-31.png)

# Glass eel


```r
res %>% filter(lfs_code=="G") %>% select(hty_code) %>% distinct()
```

```
## # A tibble: 3 x 1
##   hty_code
##   <chr>   
## 1 T       
## 2 F       
## 3 FTC
```

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'G',
			hty = c("T"),
			emu=the_emu, 
			colfill= "tomato1")	
}
```

![plot of chunk g](figure/g-1.png)![plot of chunk g](figure/g-2.png)![plot of chunk g](figure/g-3.png)![plot of chunk g](figure/g-4.png)![plot of chunk g](figure/g-5.png)![plot of chunk g](figure/g-6.png)![plot of chunk g](figure/g-7.png)![plot of chunk g](figure/g-8.png)![plot of chunk g](figure/g-9.png)![plot of chunk g](figure/g-10.png)![plot of chunk g](figure/g-11.png)![plot of chunk g](figure/g-12.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'G',
			hty = c("F"),
			emu=the_emu, 
			colfill= "violetred")	
}
```

![plot of chunk g](figure/g-13.png)![plot of chunk g](figure/g-14.png)![plot of chunk g](figure/g-15.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'G',
			hty = c("FTC"),
			emu=the_emu, 
			colfill= "firebrick")	
}
```

![plot of chunk g](figure/g-16.png)![plot of chunk g](figure/g-17.png)![plot of chunk g](figure/g-18.png)![plot of chunk g](figure/g-19.png)


# Yellow


```r
res %>% filter(lfs_code=="Y") %>% select(hty_code) %>% distinct()
```

```
## # A tibble: 5 x 1
##   hty_code
##   <chr>   
## 1 C       
## 2 F       
## 3 T       
## 4 MO      
## 5 FTC
```

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'Y',
			hty = c("C"),
			emu=the_emu, 
			colfill= "green")	
}
```

![plot of chunk y](figure/y-1.png)![plot of chunk y](figure/y-2.png)![plot of chunk y](figure/y-3.png)![plot of chunk y](figure/y-4.png)

```
## Warning: Removed 20 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-5.png)

```
## Warning: Removed 39 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-6.png)

```
## Warning: Removed 8 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-7.png)![plot of chunk y](figure/y-8.png)![plot of chunk y](figure/y-9.png)

```
## Warning: Removed 31 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-10.png)

```
## Warning: Removed 7 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-11.png)![plot of chunk y](figure/y-12.png)![plot of chunk y](figure/y-13.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'Y',
			hty = c("F"),
			emu=the_emu, 
			colfill= "greenyellow")	
}
```

![plot of chunk y](figure/y-14.png)![plot of chunk y](figure/y-15.png)![plot of chunk y](figure/y-16.png)![plot of chunk y](figure/y-17.png)![plot of chunk y](figure/y-18.png)![plot of chunk y](figure/y-19.png)![plot of chunk y](figure/y-20.png)![plot of chunk y](figure/y-21.png)![plot of chunk y](figure/y-22.png)![plot of chunk y](figure/y-23.png)![plot of chunk y](figure/y-24.png)![plot of chunk y](figure/y-25.png)![plot of chunk y](figure/y-26.png)![plot of chunk y](figure/y-27.png)

```
## Warning: Removed 8 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-28.png)![plot of chunk y](figure/y-29.png)![plot of chunk y](figure/y-30.png)![plot of chunk y](figure/y-31.png)![plot of chunk y](figure/y-32.png)![plot of chunk y](figure/y-33.png)![plot of chunk y](figure/y-34.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'Y',
			hty = c("T"),
			emu=the_emu, 
			colfill= "limegreen")	
}
```

![plot of chunk y](figure/y-35.png)![plot of chunk y](figure/y-36.png)

```
## Warning: Removed 12 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-37.png)

```
## Warning: Removed 72 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-38.png)![plot of chunk y](figure/y-39.png)![plot of chunk y](figure/y-40.png)![plot of chunk y](figure/y-41.png)![plot of chunk y](figure/y-42.png)

```
## Warning: Removed 60 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-43.png)

```
## Warning: Removed 6 rows containing missing values (position_stack).
```

![plot of chunk y](figure/y-44.png)![plot of chunk y](figure/y-45.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'Y',
			hty = c("MO"),
			emu=the_emu, 
			colfill= "olivedrab")	
}
```

![plot of chunk y](figure/y-46.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'Y',
			hty = c("FTC"),
			emu=the_emu, 
			colfill= "springgreen")	
}
```

![plot of chunk y](figure/y-47.png)![plot of chunk y](figure/y-48.png)![plot of chunk y](figure/y-49.png)![plot of chunk y](figure/y-50.png)![plot of chunk y](figure/y-51.png)![plot of chunk y](figure/y-52.png)![plot of chunk y](figure/y-53.png)![plot of chunk y](figure/y-54.png)![plot of chunk y](figure/y-55.png)![plot of chunk y](figure/y-56.png)

# Yellow silver


```r
res %>% filter(lfs_code=="YS") %>% select(hty_code) %>% distinct()
```

```
## # A tibble: 5 x 1
##   hty_code
##   <chr>   
## 1 C       
## 2 F       
## 3 T       
## 4 FTC     
## 5 TC
```

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'YS',
			hty = c("C"),
			emu=the_emu, 
			colfill= "plum")	
}
```

![plot of chunk ys](figure/ys-1.png)![plot of chunk ys](figure/ys-2.png)![plot of chunk ys](figure/ys-3.png)![plot of chunk ys](figure/ys-4.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'YS',
			hty = c("F"),
			emu=the_emu, 
			colfill= "purple")	
}
```

![plot of chunk ys](figure/ys-5.png)![plot of chunk ys](figure/ys-6.png)![plot of chunk ys](figure/ys-7.png)![plot of chunk ys](figure/ys-8.png)![plot of chunk ys](figure/ys-9.png)![plot of chunk ys](figure/ys-10.png)![plot of chunk ys](figure/ys-11.png)![plot of chunk ys](figure/ys-12.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'YS',
			hty = c("T"),
			emu=the_emu, 
			colfill= "magenta")	
}
```

![plot of chunk ys](figure/ys-13.png)![plot of chunk ys](figure/ys-14.png)![plot of chunk ys](figure/ys-15.png)![plot of chunk ys](figure/ys-16.png)![plot of chunk ys](figure/ys-17.png)![plot of chunk ys](figure/ys-18.png)![plot of chunk ys](figure/ys-19.png)![plot of chunk ys](figure/ys-20.png)![plot of chunk ys](figure/ys-21.png)![plot of chunk ys](figure/ys-22.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'YS',
			hty = c("FTC"),
			emu=the_emu, 
			colfill= "violet")	
}
```

![plot of chunk ys](figure/ys-23.png)

```r
for (the_emu in unique(res$emu_nameshort)){
	fnplot(lfs = 'YS',
			hty = c("TC"),
			emu=the_emu, 
			colfill= "hotpink")	
}
```

![plot of chunk ys](figure/ys-24.png)