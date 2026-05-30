> library(wooldridge)
> library(dplyr)
> library(ggplot2)
> library(nlme)
> library(plm)
> 
  > data("prison")
> #BASIC OVERVIEW
  > head(prison)
state year govelec  black     metro    unem     criv     crip    lcriv    lcrip       gcriv
1     1   80       0 0.2560 0.6320000 0.08775 4.447868 44.47638 1.492425 3.794958  0.09878576
2     1   81       0 0.2557 0.6362000 0.10667 4.700944 44.24879 1.547763 3.789828  0.05533838
3     1   82       1 0.2554 0.6404000 0.14367 4.497580 42.05045 1.503539 3.738870 -0.04422402
4     1   83       0 0.2551 0.6446000 0.13667 4.186833 37.08439 1.431945 3.613196 -0.07159472
5     1   84       0 0.2548 0.6488000 0.11167 4.353239 35.04226 1.470920 3.556555  0.03897560
6     1   85       0 0.2545 0.6530001 0.08908 4.630758 35.26680 1.532721 3.562942  0.06180036
gcrip y81 y82 y83 y84 y85 y86 y87 y88 y89 y90 y91 y92 y93    ag0_14    ag15_17   ag18_24
1  0.174785137   0   0   0   0   0   0   0   0   0   0   0   0   0 0.2408834 0.05752439 0.1322547
2 -0.005130053   1   0   0   0   0   0   0   0   0   0   0   0   0 0.2367951 0.05460577 0.1324317
3 -0.050958157   0   1   0   0   0   0   0   0   0   0   0   0   0 0.2336306 0.05197452 0.1317197
4 -0.125673771   0   0   1   0   0   0   0   0   0   0   0   0   0 0.2313167 0.04956787 0.1304016
5 -0.056641579   0   0   0   1   0   0   0   0   0   0   0   0   0 0.2279858 0.04858300 0.1277834
6  0.006387472   0   0   0   0   1   0   0   0   0   0   0   0   0 0.2252706 0.04882960 0.1240876
ag25_34     incpc    polpc     gincpc      gpolpc      cag0_14      cag15_17      cag18_24
1 0.1538264  7673.176 235.0026 0.08963448  0.05418698 -0.001227303 -0.0011926270  7.678985e-05
2 0.1584588  8442.723 227.2263 0.09557420 -0.03364984 -0.004088306 -0.0029186297  1.769924e-04
3 0.1584713  8855.808 219.4395 0.04776863 -0.03487009 -0.003164520 -0.0026312447 -7.120037e-04
4 0.1596340  9411.027 222.5979 0.06080865  0.01429031 -0.002313862 -0.0024066495 -1.318111e-03
5 0.1609312 10267.680 214.3978 0.08711895 -0.03753379 -0.003330898 -0.0009848737 -2.618227e-03
6 0.1625975 10974.390 220.5386 0.06656328  0.02823989 -0.002715244  0.0002466011 -3.695812e-03
cag25_34        cunem      cblack       cmetro     pris    lpris       gpris final1 final2
1 1.989880e-03  0.016750002 -0.05999947 0.0002000046 141.3347 4.951131 -0.02065945      0      0
2 4.632387e-03  0.018919993 -0.03000069 0.0041999817 163.5336 5.097019  0.14588785      0      0
3 1.255035e-05  0.036999997 -0.02999878 0.0042000199 183.6948 5.213276  0.11625719      0      0
4 1.162624e-03 -0.006999998 -0.03000069 0.0041999817 218.6242 5.387354  0.17407846      0      0
5 1.297207e-03 -0.025000000 -0.03000069 0.0041999817 245.0686 5.501538  0.11418390      0      0
6 1.666374e-03 -0.022589998 -0.02999878 0.0042000581 259.2611 5.557836  0.05629730      0      0
> #stucture
  > str(prison)
'data.frame':	714 obs. of  45 variables:
  $ state   : int  1 1 1 1 1 1 1 1 1 1 ...
$ year    : int  80 81 82 83 84 85 86 87 88 89 ...
$ govelec : int  0 0 1 0 0 0 1 0 0 0 ...
$ black   : num  0.256 0.256 0.255 0.255 0.255 ...
$ metro   : num  0.632 0.636 0.64 0.645 0.649 ...
$ unem    : num  0.0878 0.1067 0.1437 0.1367 0.1117 ...
$ criv    : num  4.45 4.7 4.5 4.19 4.35 ...
$ crip    : num  44.5 44.2 42.1 37.1 35 ...
$ lcriv   : num  1.49 1.55 1.5 1.43 1.47 ...
$ lcrip   : num  3.79 3.79 3.74 3.61 3.56 ...
$ gcriv   : num  0.0988 0.0553 -0.0442 -0.0716 0.039 ...
$ gcrip   : num  0.17479 -0.00513 -0.05096 -0.12567 -0.05664 ...
$ y81     : int  0 1 0 0 0 0 0 0 0 0 ...
$ y82     : int  0 0 1 0 0 0 0 0 0 0 ...
$ y83     : int  0 0 0 1 0 0 0 0 0 0 ...
$ y84     : int  0 0 0 0 1 0 0 0 0 0 ...
$ y85     : int  0 0 0 0 0 1 0 0 0 0 ...
$ y86     : int  0 0 0 0 0 0 1 0 0 0 ...
$ y87     : int  0 0 0 0 0 0 0 1 0 0 ...
$ y88     : int  0 0 0 0 0 0 0 0 1 0 ...
$ y89     : int  0 0 0 0 0 0 0 0 0 1 ...
$ y90     : int  0 0 0 0 0 0 0 0 0 0 ...
$ y91     : int  0 0 0 0 0 0 0 0 0 0 ...
$ y92     : int  0 0 0 0 0 0 0 0 0 0 ...
$ y93     : int  0 0 0 0 0 0 0 0 0 0 ...
$ ag0_14  : num  0.241 0.237 0.234 0.231 0.228 ...
$ ag15_17 : num  0.0575 0.0546 0.052 0.0496 0.0486 ...
$ ag18_24 : num  0.132 0.132 0.132 0.13 0.128 ...
$ ag25_34 : num  0.154 0.158 0.158 0.16 0.161 ...
$ incpc   : num  7673 8443 8856 9411 10268 ...
$ polpc   : num  235 227 219 223 214 ...
$ gincpc  : num  0.0896 0.0956 0.0478 0.0608 0.0871 ...
$ gpolpc  : num  0.0542 -0.0336 -0.0349 0.0143 -0.0375 ...
$ cag0_14 : num  -0.00123 -0.00409 -0.00316 -0.00231 -0.00333 ...
$ cag15_17: num  -0.001193 -0.002919 -0.002631 -0.002407 -0.000985 ...
$ cag18_24: num  7.68e-05 1.77e-04 -7.12e-04 -1.32e-03 -2.62e-03 ...
$ cag25_34: num  1.99e-03 4.63e-03 1.26e-05 1.16e-03 1.30e-03 ...
$ cunem   : num  0.0168 0.0189 0.037 -0.007 -0.025 ...
$ cblack  : num  -0.06 -0.03 -0.03 -0.03 -0.03 ...
$ cmetro  : num  0.0002 0.0042 0.0042 0.0042 0.0042 ...
$ pris    : num  141 164 184 219 245 ...
$ lpris   : num  4.95 5.1 5.21 5.39 5.5 ...
$ gpris   : num  -0.0207 0.1459 0.1163 0.1741 0.1142 ...
$ final1  : int  0 0 0 0 0 0 0 0 0 0 ...
$ final2  : int  0 0 0 0 0 0 0 0 0 0 ...
- attr(*, "time.stamp")= chr "25 Jun 2011 23:03"
> 
> pdim(pdata)
Balanced Panel: n = 51, T = 14, N = 714
> #summary
> summary(prison)
state         year         govelec           black             metro       
Min.   : 1   Min.   :80.0   Min.   :0.0000   Min.   :0.00200   Min.   :0.1530  
1st Qu.:13   1st Qu.:83.0   1st Qu.:0.0000   1st Qu.:0.02025   1st Qu.:0.4578  
Median :26   Median :86.5   Median :0.0000   Median :0.07100   Median :0.6714  
Mean   :26   Mean   :86.5   Mean   :0.2507   Mean   :0.10533   Mean   :0.6417  
3rd Qu.:39   3rd Qu.:90.0   3rd Qu.:0.7500   3rd Qu.:0.14808   3rd Qu.:0.8159  
Max.   :51   Max.   :93.0   Max.   :1.0000   Max.   :0.70300   Max.   :1.0000  
unem              criv              crip           lcriv             lcrip      
Min.   :0.02142   Min.   : 0.4756   Min.   :20.97   Min.   :-0.7431   Min.   :3.043  
1st Qu.:0.05300   1st Qu.: 2.8244   1st Qu.:38.67   1st Qu.: 1.0383   1st Qu.:3.655  
Median :0.06600   Median : 4.5155   Median :45.19   Median : 1.5075   Median :3.811  
Mean   :0.06849   Mean   : 5.0786   Mean   :46.44   Mean   : 1.4261   Mean   :3.804  
3rd Qu.:0.08096   3rd Qu.: 6.5006   3rd Qu.:54.39   3rd Qu.: 1.8719   3rd Qu.:3.996  
Max.   :0.18033   Max.   :29.2180   Max.   :88.39   Max.   : 3.3748   Max.   :4.482  
gcriv              gcrip                y81               y82               y83         
Min.   :-0.35428   Min.   :-0.209739   Min.   :0.00000   Min.   :0.00000   Min.   :0.00000  
1st Qu.:-0.03504   1st Qu.:-0.043984   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000  
Median : 0.02389   Median :-0.002035   Median :0.00000   Median :0.00000   Median :0.00000  
Mean   : 0.01918   Mean   :-0.003045   Mean   :0.07143   Mean   :0.07143   Mean   :0.07143  
3rd Qu.: 0.07547   3rd Qu.: 0.036102   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000  
Max.   : 0.47724   Max.   : 0.233607   Max.   :1.00000   Max.   :1.00000   Max.   :1.00000  
y84               y85               y86               y87               y88         
Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   Min.   :0.00000  
1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000  
Median :0.00000   Median :0.00000   Median :0.00000   Median :0.00000   Median :0.00000  
Mean   :0.07143   Mean   :0.07143   Mean   :0.07143   Mean   :0.07143   Mean   :0.07143  
3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000  
Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   Max.   :1.00000  
y89               y90               y91               y92               y93         
Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   Min.   :0.00000   Min.   :0.00000  
1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000   1st Qu.:0.00000  
Median :0.00000   Median :0.00000   Median :0.00000   Median :0.00000   Median :0.00000  
Mean   :0.07143   Mean   :0.07143   Mean   :0.07143   Mean   :0.07143   Mean   :0.07143  
3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000   3rd Qu.:0.00000  
Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   Max.   :1.00000   Max.   :1.00000  
ag0_14          ag15_17           ag18_24          ag25_34           incpc      
Min.   :0.1630   Min.   :0.02595   Min.   :0.0848   Min.   :0.1346   Min.   : 6883  
1st Qu.:0.2111   1st Qu.:0.04214   1st Qu.:0.1057   1st Qu.:0.1618   1st Qu.:11605  
Median :0.2220   Median :0.04603   Median :0.1166   Median :0.1690   Median :14263  
Mean   :0.2237   Mean   :0.04586   Mean   :0.1169   Mean   :0.1705   Mean   :14782  
3rd Qu.:0.2320   3rd Qu.:0.04926   3rd Qu.:0.1278   3rd Qu.:0.1774   3rd Qu.:17542  
Max.   :0.3273   Max.   :0.06109   Max.   :0.1520   Max.   :0.2357   Max.   :29859  
polpc           gincpc             gpolpc             cag0_14              cag15_17         
Min.   :161.1   Min.   :-0.05730   Min.   :-0.246643   Min.   :-0.0092589   Min.   :-4.827e-03  
1st Qu.:220.7   1st Qu.: 0.04187   1st Qu.:-0.013915   1st Qu.:-0.0024030   1st Qu.:-2.226e-03  
Median :249.9   Median : 0.05696   Median : 0.008362   Median :-0.0009346   Median :-1.074e-03  
Mean   :267.8   Mean   : 0.05967   Mean   : 0.008005   Mean   :-0.0008981   Mean   :-1.100e-03  
3rd Qu.:288.6   3rd Qu.: 0.07388   3rd Qu.: 0.027872   3rd Qu.: 0.0005453   3rd Qu.:-4.014e-06  
Max.   :907.9   Max.   : 0.24951   Max.   : 0.450907   Max.   : 0.0078852   Max.   : 3.084e-03  
cag18_24            cag25_34              cunem                cblack         
Min.   :-0.010630   Min.   :-8.652e-03   Min.   :-0.0418400   Min.   :-0.450005  
1st Qu.:-0.003680   1st Qu.:-2.845e-03   1st Qu.:-0.0070000   1st Qu.: 0.009999  
Median :-0.002491   Median :-6.662e-05   Median :-0.0007900   Median : 0.020000  
Mean   :-0.002448   Mean   :-2.618e-04   Mean   : 0.0005246   Mean   : 0.030098  
3rd Qu.:-0.001178   3rd Qu.: 1.760e-03   3rd Qu.: 0.0086400   3rd Qu.: 0.070000  
Max.   : 0.005333   Max.   : 1.049e-02   Max.   : 0.0465800   Max.   : 0.490002  
cmetro               pris             lpris           gpris              final1        
Min.   :-0.003500   Min.   :  20.83   Min.   :3.036   Min.   :-0.21496   Min.   :0.000000  
1st Qu.: 0.000000   1st Qu.: 113.04   1st Qu.:4.728   1st Qu.: 0.02488   1st Qu.:0.000000  
Median : 0.000800   Median : 172.45   Median :5.150   Median : 0.06491   Median :0.000000  
Mean   : 0.001596   Mean   : 199.98   Mean   :5.130   Mean   : 0.06647   Mean   :0.008403  
3rd Qu.: 0.002200   3rd Qu.: 251.90   3rd Qu.:5.529   3rd Qu.: 0.10496   3rd Qu.:0.000000  
Max.   : 0.014300   Max.   :1286.84   Max.   :7.160   Max.   : 0.36459   Max.   :1.000000  
final2       
Min.   :0.00000  
1st Qu.:0.00000  
Median :0.00000  
Mean   :0.01681  
3rd Qu.:0.00000  
Max.   :1.00000  
> 
  > # Dimensions
  > dim(prison)
[1] 714  45
> 
  > # Column names
  > names(prison)
[1] "state"    "year"     "govelec"  "black"    "metro"    "unem"     "criv"     "crip"    
[9] "lcriv"    "lcrip"    "gcriv"    "gcrip"    "y81"      "y82"      "y83"      "y84"     
[17] "y85"      "y86"      "y87"      "y88"      "y89"      "y90"      "y91"      "y92"     
[25] "y93"      "ag0_14"   "ag15_17"  "ag18_24"  "ag25_34"  "incpc"    "polpc"    "gincpc"  
[33] "gpolpc"   "cag0_14"  "cag15_17" "cag18_24" "cag25_34" "cunem"    "cblack"   "cmetro"  
[41] "pris"     "lpris"    "gpris"    "final1"   "final2"  
> 
  > # Number of observations per state
  > table(prison$state)

1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 
14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 
33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 
14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 14 
> 
  > # Summary of observations per state
  > summary(table(prison$state))
Number of cases in table: 714 
Number of factors: 1 
> 
  > # Number of years
  > table(prison$year)

80 81 82 83 84 85 86 87 88 89 90 91 92 93 
51 51 51 51 51 51 51 51 51 51 51 51 51 51 
> #check missing values
  > colSums(is.na(prison))
state     year  govelec    black    metro     unem     criv     crip    lcriv    lcrip 
0        0        0        0        0        0        0        0        0        0 
gcriv    gcrip      y81      y82      y83      y84      y85      y86      y87      y88 
0        0        0        0        0        0        0        0        0        0 
y89      y90      y91      y92      y93   ag0_14  ag15_17  ag18_24  ag25_34    incpc 
0        0        0        0        0        0        0        0        0        0 
polpc   gincpc   gpolpc  cag0_14 cag15_17 cag18_24 cag25_34    cunem   cblack   cmetro 
0        0        0        0        0        0        0        0        0        0 
pris    lpris    gpris   final1   final2 
0        0        0        0        0 
> # Mean, sd, min, max
  > prison %>%
  +     summarise(
    +         mean_crime = mean(lcriv),
    +         sd_crime   = sd(lcriv),
    +         min_crime  = min(lcriv),
    +         max_crime  = max(lcriv)
    +     )
mean_crime  sd_crime  min_crime max_crime
1   1.426112 0.6546603 -0.7431197  3.374785
> 
  > #crime rate distribution
  > ggplot(prison, aes(x = lcriv)) +
  +     geom_histogram(bins = 30) +
  +     labs(
    +         title = "Distribution of Log Violent Crime Rate",
    +         x = "lcriv",
    +         y = "Frequency"
    +     )
> #prison population distribution
  > ggplot(prison, aes(x = lpris)) +
  +     geom_histogram(bins = 30) +
  +     labs(
    +         title = "Distribution of Log Prison Population",
    +         x = "lpris",
    +         y = "Frequency"
    +     )
#lpris vs lcriv
ggplot(prison, aes(x = lpris, y = lcriv)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(
    title = "Relationship between Prison Population and Crime",
    x = "lpris",
    y = "lcriv"
  )
#unemployment vs crime
ggplot(prison, aes(x = unem, y = lcriv)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(
    title = "Unemployment and Crime",
    x = "Unemployment",
    y = "lcriv"
  )
> ggplot(prison, aes(x = lcriv)) +
  +     geom_histogram(bins = 30) +
  +     labs(
    +         title = "Distribution of Log Violent Crime Rate",
    +         x = "lcriv",
    +         y = "Frequency"
    +     )
> #lpris vs lcriv
  > ggplot(prison, aes(x = lpris, y = lcriv)) +
  +     geom_point() +
  +     geom_smooth(method = "lm") +
  +     labs(
    +         title = "Relationship between Prison Population and Crime",
    +         x = "lpris",
    +         y = "lcriv"
    +     )
`geom_smooth()` using formula = 'y ~ x'
> #unemployment vs crime
  > ggplot(prison, aes(x = unem, y = lcriv)) +
  +     geom_point() +
  +     geom_smooth(method = "lm") +
  +     labs(
    +         title = "Unemployment and Crime",
    +         x = "Unemployment",
    +         y = "lcriv"
    +     )
`geom_smooth()` using formula = 'y ~ x'
> #CORRELATION MATRIX
  > vars <- prison %>%
  +     select(lcriv, govelec, unem, black, metro, lpris)
> 
  > cor(vars)
lcriv     govelec        unem       black       metro       lpris
lcriv    1.00000000 -0.05035669  0.15277320  0.58380454  0.65486543  0.71214970
govelec -0.05035669  1.00000000  0.04183379 -0.01721738 -0.01520658 -0.07209724
unem     0.15277320  0.04183379  1.00000000  0.18946746 -0.01825685  0.04253125
black    0.58380454 -0.01721738  0.18946746  1.00000000  0.30755370  0.63439605
metro    0.65486543 -0.01520658 -0.01825685  0.30755370  1.00000000  0.27976065
lpris    0.71214970 -0.07209724  0.04253125  0.63439605  0.27976065  1.00000000
> #BOXPLOTS
  > ggplot(prison, aes(y = lcriv)) +
  +     geom_boxplot() +
  +     labs(
    +         title = "Boxplot of lcriv"
    +     )
>
> ggplot(prison,aes(x = factor(year),
                    +            y = lcriv)) + geom_boxplot() +
+     labs(title = "Distribution of Crime Rate by Year",
           +         x = "Year",
           +         y = "Log Crime Rate"
           +     ) +
+     theme_minimal()
>
  > sample_states <- unique(prison$state)[1:10]
> 
> ggplot(subset(prison, state %in% sample_states),
         +     aes(year, lcriv, group = state)
         + ) +
+     geom_line(alpha = 0.6) +
+     labs(title = "Crime Rate Trends Across Selected States",
           +         x = "Year",
           +         y = "Log Crime Rate"
           +     )
#EXPORT DATASET
> write.csv(prison, "prison.csv", row.names = FALSE)
