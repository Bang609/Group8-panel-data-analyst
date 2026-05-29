> install.packages("wooldridge")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/wooldridge_1.4-4.zip'
Content type 'application/zip' length 4233101 bytes (4.0 MB)
downloaded 4.0 MB

package ‘wooldridge’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\DELL\AppData\Local\Temp\RtmpamCfgm\downloaded_packages
> library(wooldridge)
Warning message:
  package ‘wooldridge’ was built under R version 4.5.3 
> data("prison")
> force(prison)
state year govelec  black     metro    unem     criv     crip    lcriv    lcrip         gcriv
1      1   80       0 0.2560 0.6320000 0.08775 4.447868 44.47638 1.492425 3.794958  0.0987857580
2      1   81       0 0.2557 0.6362000 0.10667 4.700944 44.24879 1.547763 3.789828  0.0553383827
3      1   82       1 0.2554 0.6404000 0.14367 4.497580 42.05045 1.503539 3.738870 -0.0442240238
4      1   83       0 0.2551 0.6446000 0.13667 4.186833 37.08439 1.431945 3.613196 -0.0715947151
5      1   84       0 0.2548 0.6488000 0.11167 4.353239 35.04226 1.470920 3.556555  0.0389755964
6      1   85       0 0.2545 0.6530001 0.08908 4.630758 35.26680 1.532721 3.562942  0.0618003607
7      1   86       1 0.2542 0.6572000 0.09833 5.665331 37.87350 1.734365 3.634252  0.2016447783
8      1   87       0 0.2539 0.6614000 0.07775 5.686924 39.58107 1.738170 3.678351  0.0038042068
9      1   88       0 0.2536 0.6656000 0.07208 5.728628 41.05592 1.745476 3.714935  0.0073065758
10     1   89       0 0.2533 0.6698000 0.07025 6.036973 41.25161 1.797903 3.719690  0.0524265766
11     1   90       1 0.2530 0.6740000 0.06775 7.069136 41.96889 1.955738 3.736928  0.1578354836
12     1   91       0 0.2527 0.6782000 0.07200 8.439609 45.20342 2.132936 3.811173  0.1771978140
13     1   92       0 0.2524 0.6824000 0.07300 8.712421 43.94321 2.164750 3.782898  0.0318138599
14     1   93       0 0.2521 0.6866000 0.07500 7.804156 40.98352 2.054657 3.713170 -0.1100933552
15     2   80       0 0.0340 0.4340000 0.09592 4.773632 57.03980 1.563107 4.043749 -0.0358538628
16     2   81       0 0.0347 0.4317000 0.09233 6.069378 58.93301 1.803256 4.076401  0.2401486635
17     2   82       1 0.0354 0.4294000 0.09983 6.071111 54.39778 1.803542 3.996323  0.0002855062
18     2   83       0 0.0361 0.4271000 0.10308 6.024590 53.05123 1.795849 3.971258 -0.0076922178
19     2   84       0 0.0368 0.4248000 0.10150 6.046692 53.43969 1.799511 3.978554  0.0036619902
20     2   85       0 0.0375 0.4225000 0.09608 5.697369 51.85714 1.740004 3.948493 -0.0595070124
21     2   86       1 0.0382 0.4202000 0.10908 5.599265 55.71140 1.722635 4.020185 -0.0173691511
22     2   87       0 0.0389 0.4179000 0.10800 4.435993 47.94249 1.489751 3.870002 -0.2328838110
gcrip y81 y82 y83 y84 y85 y86 y87 y88 y89 y90 y91 y92 y93    ag0_14    ag15_17
1   0.174785137   0   0   0   0   0   0   0   0   0   0   0   0   0 0.2408834 0.05752439
2  -0.005130053   1   0   0   0   0   0   0   0   0   0   0   0   0 0.2367951 0.05460577
3  -0.050958157   0   1   0   0   0   0   0   0   0   0   0   0   0 0.2336306 0.05197452
4  -0.125673771   0   0   1   0   0   0   0   0   0   0   0   0   0 0.2313167 0.04956787
5  -0.056641579   0   0   0   1   0   0   0   0   0   0   0   0   0 0.2279858 0.04858300
6   0.006387472   0   0   0   0   1   0   0   0   0   0   0   0   0 0.2252706 0.04882960
7   0.071309566   0   0   0   0   0   1   0   0   0   0   0   0   0 0.2224449 0.05010020
8   0.044099331   0   0   0   0   0   0   1   0   0   0   0   0   0 0.2204234 0.05006227
9   0.036583900   0   0   0   0   0   0   0   1   0   0   0   0   0 0.2196819 0.04870775
10  0.004755497   0   0   0   0   0   0   0   0   1   0   0   0   0 0.2191067 0.04640199
11  0.017238140   0   0   0   0   0   0   0   0   0   1   0   0   0 0.2182716 0.04493827
12  0.074244261   0   0   0   0   0   0   0   0   0   0   1   0   0 0.2176039 0.04425428
13 -0.028274536   0   0   0   0   0   0   0   0   0   0   0   1   0 0.2153214 0.04398260
14 -0.069728136   0   0   0   0   0   0   0   0   0   0   0   0   1 0.2135180 0.04370671
15 -0.008919716   0   0   0   0   0   0   0   0   0   0   0   0   0 0.2686567 0.05472637
16  0.032651901   1   0   0   0   0   0   0   0   0   0   0   0   0 0.2679426 0.05263158
17 -0.080077887   0   1   0   0   0   0   0   0   0   0   0   0   0 0.2644444 0.04888889
18 -0.025065184   0   0   1   0   0   0   0   0   0   0   0   0   0 0.2684426 0.04713115
19  0.007295609   0   0   0   1   0   0   0   0   0   0   0   0   0 0.2704280 0.04669261
20 -0.030061007   0   0   0   0   1   0   0   0   0   0   0   0   0 0.2763158 0.04699248
21  0.071691751   0   0   0   0   0   1   0   0   0   0   0   0   0 0.2794118 0.04779412
22 -0.150182486   0   0   0   0   0   0   1   0   0   0   0   0   0 0.2820037 0.04823748
ag18_24   ag25_34     incpc    polpc      gincpc       gpolpc       cag0_14      cag15_17
1  0.1322547 0.1538264  7673.176 235.0026  0.08963448  0.054186985 -0.0012273026 -1.192627e-03
2  0.1324317 0.1584588  8442.723 227.2263  0.09557420 -0.033649836 -0.0040883063 -2.918630e-03
3  0.1317197 0.1584713  8855.808 219.4395  0.04776863 -0.034870092 -0.0031645203 -2.631245e-03
4  0.1304016 0.1596340  9411.027 222.5979  0.06080865  0.014290308 -0.0023138619 -2.406650e-03
5  0.1277834 0.1609312 10267.680 214.3978  0.08711895 -0.037533790 -0.0033308982 -9.848737e-04
6  0.1240876 0.1625975 10974.390 220.5386  0.06656328  0.028239885 -0.0027152442  2.466011e-04
7  0.1197395 0.1638276 11666.695 226.8036  0.06117388  0.028011635 -0.0028256797  1.270604e-03
8  0.1160648 0.1643836 12289.268 241.1706  0.05198810  0.061420135 -0.0020214843 -3.793716e-05
9  0.1135686 0.1635189 13052.042 256.2624  0.06021827  0.060697336 -0.0007415009 -1.354513e-03
10 0.1116625 0.1620347 13967.873 268.8834  0.06781531  0.048075687 -0.0005752182 -2.305765e-03
11 0.1098765 0.1597531 14896.788 280.4938  0.06438571  0.042274062 -0.0008350944 -1.463714e-03
12 0.1092910 0.1574572 15600.990 288.9731  0.04618876  0.029781904 -0.0006676865 -6.839943e-04
13 0.1087482 0.1546641 16494.385 290.0435  0.05568562  0.003697216 -0.0022825049 -2.716780e-04
14 0.1084309 0.1523764 17105.346 296.8474  0.03637102  0.023187270 -0.0018033790 -2.758885e-04
15 0.1492537 0.2263682 13784.794 315.9204  0.11593349 -0.100668892 -0.0092589185 -4.826984e-03
16 0.1387560 0.2344498 15385.251 305.9809  0.10984322 -0.031967748 -0.0007141304 -2.094788e-03
17 0.1311111 0.2355556 17119.225 280.0000  0.10679276 -0.088732965 -0.0034981347 -3.742690e-03
18 0.1250000 0.2356557 17930.697 268.8524  0.04631210 -0.040626895  0.0039981841 -1.757741e-03
19 0.1206226 0.2315175 17625.547 286.1868 -0.01716480  0.062481925  0.0019853783 -4.385424e-04
20 0.1165414 0.2255639 18430.637 294.5489  0.04466494  0.028800262  0.0058877752  2.998781e-04
21 0.1139706 0.2169118 17821.215 277.2059 -0.03362473 -0.060684443  0.0030959891  8.016348e-04
22 0.1113173 0.2096475 17252.170 318.7384 -0.03245166  0.139610261  0.0025919343  4.433584e-04
cag18_24      cag25_34        cunem      cblack        cmetro     pris    lpris
1   7.678985e-05  1.989880e-03  0.016750002 -0.05999947  0.0002000046 141.3347 4.951131
2   1.769924e-04  4.632387e-03  0.018919993 -0.03000069  0.0041999817 163.5336 5.097019
3  -7.120037e-04  1.255035e-05  0.036999997 -0.02999878  0.0042000199 183.6948 5.213276
4  -1.318111e-03  1.162624e-03 -0.006999998 -0.03000069  0.0041999817 218.6242 5.387354
5  -2.618227e-03  1.297207e-03 -0.025000000 -0.03000069  0.0041999817 245.0686 5.501538
6  -3.695812e-03  1.666374e-03 -0.022589998 -0.02999878  0.0042000581 259.2611 5.557836
7  -4.348116e-03  1.230106e-03  0.009250002 -0.03000069  0.0041999817 270.5512 5.600461
8  -3.674717e-03  5.559158e-04 -0.020580005 -0.03000069  0.0041999817 288.1763 5.663573
9  -2.496166e-03 -8.646774e-04 -0.005669994 -0.02999878  0.0041999817 313.8730 5.748989
10 -1.906061e-03 -1.484146e-03 -0.001830006 -0.03000069  0.0042000581 307.0825 5.727117
11 -1.785984e-03 -2.281656e-03 -0.002499995 -0.03000069  0.0041999817 336.8486 5.819633
12 -5.855942e-04 -2.295875e-03  0.004249997 -0.02999878  0.0041999817 379.3827 5.938545
13 -5.427647e-04 -2.793121e-03  0.000999999 -0.03000069  0.0041999817 400.9780 5.993906
14 -3.173351e-04 -2.287684e-03  0.002000008 -0.03000069  0.0042000581 409.3282 6.014517
15  5.333138e-03  1.048727e-02  0.002670002  0.04000020  0.0015999984 132.0099 4.882877
16 -1.049775e-02  8.081608e-03 -0.003590002  0.06999993 -0.0023000336 142.0398 4.956107
17 -7.644873e-03  1.105785e-03  0.007500000  0.06999993 -0.0022999954 170.5742 5.139170
18 -6.111107e-03  1.001930e-04  0.003249998  0.06999993 -0.0022999954 193.7778 5.266712
19 -4.377432e-03 -4.138241e-03 -0.001580000  0.07000017 -0.0022999954 219.6721 5.392136
20 -4.081211e-03 -5.953598e-03 -0.005419998  0.06999993 -0.0022999954 251.5564 5.527668
21 -2.570772e-03 -8.652134e-03  0.013000002  0.06999993 -0.0022999954 287.5940 5.661550
22 -2.653332e-03 -7.264271e-03 -0.001079998  0.07000017 -0.0022999954 306.2500 5.724402
gpris final1 final2
1  -0.02065945      0      0
2   0.14588785      0      0
3   0.11625719      0      0
4   0.17407846      0      0
5   0.11418390      0      0
6   0.05629730      0      0
7   0.04262590      0      0
8   0.06311131      0      0
9   0.08541584      0      0
10 -0.02187204      0      0
11  0.09251690      0      0
12  0.11891174      0      0
13  0.05536127      0      0
14  0.02061081      0      0
15  0.08718824      0      0
16  0.07323027      0      0
17  0.18306303      0      0
18  0.12754202      0      0
19  0.12542391      0      0
20  0.13553143      0      0
21  0.13388205      0      0
22  0.06285238      0      0
[ reached 'max' / getOption("max.print") -- omitted 692 rows ]
> view(prison)
Error in view(prison) : could not find function "view"

> library(wooldridge)
> library(tidyverse)
Error in library(tidyverse) : there is no package called ‘tidyverse’

> data("prison")
> 
  > # View first observations
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
> View(prison)
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
> write.csv(prison, "prison.csv", row.names = FALSE)
> 
  > install.packages("tidyverse")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
also installing the dependencies ‘gargle’, ‘uuid’, ‘ids’, ‘rematch2’, ‘timechange’, ‘selectr’, ‘xml2’, ‘conflicted’, ‘dtplyr’, ‘googledrive’, ‘googlesheets4’, ‘lubridate’, ‘modelr’, ‘reprex’, ‘rvest’
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/gargle_1.6.1.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/uuid_1.2-2.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/ids_1.0.1.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/rematch2_2.1.2.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/timechange_0.4.0.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/selectr_0.5-1.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/xml2_1.5.2.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/conflicted_1.2.0.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/dtplyr_1.3.3.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/googledrive_2.1.2.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/googlesheets4_1.1.2.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/lubridate_1.9.5.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/modelr_0.1.11.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/reprex_2.1.1.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/rvest_1.0.5.zip'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/tidyverse_2.0.0.zip'
package ‘gargle’ successfully unpacked and MD5 sums checked
package ‘uuid’ successfully unpacked and MD5 sums checked
package ‘ids’ successfully unpacked and MD5 sums checked
package ‘rematch2’ successfully unpacked and MD5 sums checked
package ‘timechange’ successfully unpacked and MD5 sums checked
package ‘selectr’ successfully unpacked and MD5 sums checked
package ‘xml2’ successfully unpacked and MD5 sums checked
package ‘conflicted’ successfully unpacked and MD5 sums checked
package ‘dtplyr’ successfully unpacked and MD5 sums checked
package ‘googledrive’ successfully unpacked and MD5 sums checked
package ‘googlesheets4’ successfully unpacked and MD5 sums checked
package ‘lubridate’ successfully unpacked and MD5 sums checked
package ‘modelr’ successfully unpacked and MD5 sums checked
package ‘reprex’ successfully unpacked and MD5 sums checked
package ‘rvest’ successfully unpacked and MD5 sums checked
package ‘tidyverse’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\DELL\AppData\Local\Temp\RtmpamCfgm\downloaded_packages
> install.packages("plm")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/plm_2.6-7.zip'
Content type 'application/zip' length 1893290 bytes (1.8 MB)
downloaded 1.8 MB

package ‘plm’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\DELL\AppData\Local\Temp\RtmpamCfgm\downloaded_packages
> install.packages("lmtest")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/lmtest_0.9-40.zip'
Content type 'application/zip' length 411677 bytes (402 KB)
downloaded 402 KB

package ‘lmtest’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\DELL\AppData\Local\Temp\RtmpamCfgm\downloaded_packages
> install.packages("sandwich")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/sandwich_3.1-1.zip'
Content type 'application/zip' length 1506188 bytes (1.4 MB)
downloaded 1.4 MB

package ‘sandwich’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\DELL\AppData\Local\Temp\RtmpamCfgm\downloaded_packages
> install.packages("nlme")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/DELL/AppData/Local/R/win-library/4.5’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.5/nlme_3.1-169.zip'
Content type 'application/zip' length 2402424 bytes (2.3 MB)
downloaded 2.3 MB

package ‘nlme’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\DELL\AppData\Local\Temp\RtmpamCfgm\downloaded_packages
> summary(table(prison$state))
Number of cases in table: 714 
Number of factors: 1 
> getwd()
[1] "D:/Downloads/;l,;d"
> library(tidyverse)
── Attaching core tidyverse packages ────────────────────────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.2.1     ✔ readr     2.1.5
✔ forcats   1.0.1     ✔ stringr   1.5.1
✔ ggplot2   4.0.1     ✔ tibble    3.2.1
✔ lubridate 1.9.5     ✔ tidyr     1.3.2
✔ purrr     1.2.2     
── Conflicts ──────────────────────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package to force all conflicts to become errors
Warning messages:
  1: package ‘tidyverse’ was built under R version 4.5.3 
2: package ‘ggplot2’ was built under R version 4.5.2 
3: package ‘tidyr’ was built under R version 4.5.3 
4: package ‘readr’ was built under R version 4.5.1 
5: package ‘purrr’ was built under R version 4.5.3 
6: package ‘dplyr’ was built under R version 4.5.3 
7: package ‘lubridate’ was built under R version 4.5.3 
> library(plm)

Attaching package: ‘plm’

The following objects are masked from ‘package:dplyr’:
  
  between, lag, lead

Warning message:
  package ‘plm’ was built under R version 4.5.3 
> library(dplyr)
> library(ggplot2)
> library(lmtest)
Loading required package: zoo

Attaching package: ‘zoo’

The following objects are masked from ‘package:base’:
  
  as.Date, as.Date.numeric

Warning message:
  package ‘lmtest’ was built under R version 4.5.3 
> library(sandwich)
Warning message:
  package ‘sandwich’ was built under R version 4.5.3 

> pdata <- pdata.frame(prison, index = c("state", "year"))
> 
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
> 
  > ggplot(prison, aes(x = govelec)) +
  +     geom_histogram(bins = 20)
> 
  > ggplot(prison, aes(x = density, y = confinements)) +
  +     geom_point() +
  +     geom_smooth(method = "lm")
Error in `geom_point()`:
  ! Problem while computing aesthetics.
ℹ Error occurred in the 1st layer.
Caused by error:
  ! object 'confinements' not found
Run `rlang::last_trace()` to see where the error occurred.

> ggplot(prison, aes(x = density, y = confinements)) +
  +     geom_point() +
  +     geom_smooth(method = "lm")
Error in `geom_point()`:
  ! Problem while computing aesthetics.
ℹ Error occurred in the 1st layer.
Caused by error:
  ! object 'confinements' not found
Run `rlang::last_trace()` to see where the error occurred.

> library(lmtest)
> 
  > ggplot(prison, aes(x = density, y = confinements)) +
  +     geom_point() +
  +     geom_smooth(method = "lm")
Error in `geom_point()`:
  ! Problem while computing aesthetics.
ℹ Error occurred in the 1st layer.
Caused by error:
  ! object 'confinements' not found
Run `rlang::last_trace()` to see where the error occurred.

> pols <- plm(lcriv ~ govelec + unem + black + metro + lpris,
              +     data = pdata,
              +     model = "pooling"
              + )
> 
  > summary(pols)
Pooling Model

Call:
  plm(formula = lcriv ~ govelec + unem + black + metro + lpris, 
      data = pdata, model = "pooling")

Balanced Panel: n = 51, T = 14, N = 714

Residuals:
  Min.    1st Qu.     Median    3rd Qu.       Max. 
-1.0734225 -0.2182112  0.0055003  0.2138991  1.1836184 

Coefficients:
  Estimate Std. Error  t-value  Pr(>|t|)    
(Intercept) -2.775755   0.143297 -19.3706 < 2.2e-16 ***
  govelec     -0.014183   0.028189  -0.5031  0.615025    
unem         3.681583   0.564662   6.5200 1.337e-10 ***
  black        0.440253   0.135356   3.2525  0.001198 ** 
  metro        1.412483   0.057228  24.6818 < 2.2e-16 ***
  lpris        0.584895   0.027538  21.2396 < 2.2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Total Sum of Squares:    305.58
Residual Sum of Squares: 74.855
R-Squared:      0.75504
Adj. R-Squared: 0.75331
F-statistic: 436.445 on 5 and 708 DF, p-value: < 2.22e-16
> plmtest(pols, type = "bp")

Lagrange Multiplier Test - (Breusch-Pagan)

data:  lcriv ~ govelec + unem + black + metro + lpris
chisq = 1993.3, df = 1, p-value < 2.2e-16
alternative hypothesis: significant effects

> fe <- plm(lcriv ~ govelec + unem + black + metro + lpris,
            +     data = pdata,
            +     model = "within"
            + )
> 
  > summary(fe)
Oneway (individual) effect Within Model

Call:
  plm(formula = lcriv ~ govelec + unem + black + metro + lpris, 
      data = pdata, model = "within")

Balanced Panel: n = 51, T = 14, N = 714

Residuals:
  Min.   1st Qu.    Median   3rd Qu.      Max. 
-0.462216 -0.090449 -0.011117  0.092992  0.544930 

Coefficients:
  Estimate Std. Error t-value  Pr(>|t|)    
govelec  0.013708   0.012126  1.1304    0.2587    
unem    -1.930299   0.345633 -5.5848 3.425e-08 ***
  black    0.339825   1.433483  0.2371    0.8127    
metro    2.167131   0.393673  5.5049 5.298e-08 ***
  lpris    0.149339   0.020748  7.1977 1.676e-12 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Total Sum of Squares:    17.161
Residual Sum of Squares: 12.531
R-Squared:      0.2698
Adj. R-Squared: 0.20876
F-statistic: 48.624 on 5 and 658 DF, p-value: < 2.22e-16
> re <- plm(lcriv ~ govelec + unem + black + metro + lpris,
            +     data = pdata,
            +     model = "random"
            + )
> 
  > summary(re)
Oneway (individual) effect Random Effect Model 
(Swamy-Arora's transformation)

Call:
plm(formula = lcriv ~ govelec + unem + black + metro + lpris, 
    data = pdata, model = "random")

Balanced Panel: n = 51, T = 14, N = 714

Effects:
                  var std.dev share
idiosyncratic 0.01904 0.13800 0.219
individual    0.06803 0.26083 0.781
theta: 0.86

Residuals:
      Min.    1st Qu.     Median    3rd Qu.       Max. 
-0.4649710 -0.0976934 -0.0072977  0.0941012  0.5805904 

Coefficients:
             Estimate Std. Error z-value  Pr(>|z|)    
(Intercept) -0.573225   0.138660 -4.1340 3.565e-05 ***
govelec      0.012496   0.012549  0.9958    0.3194    
unem        -1.600337   0.353009 -4.5334 5.804e-06 ***
black        1.683369   0.326994  5.1480 2.633e-07 ***
metro        1.565638   0.163401  9.5816 < 2.2e-16 ***
lpris        0.180077   0.019326  9.3178 < 2.2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Total Sum of Squares:    22.815
Residual Sum of Squares: 14.448
R-Squared:      0.36672
Adj. R-Squared: 0.36225
Chisq: 409.998 on 5 DF, p-value: < 2.22e-16
> phtest(fe, re)

	Hausman Test

data:  lcriv ~ govelec + unem + black + metro + lpris
chisq = 53.907, df = 5, p-value = 2.191e-10
alternative hypothesis: one model is inconsistent