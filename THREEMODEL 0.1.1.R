
> library(plm)
> library(lmtest)
> library(nlme)
> library(sandwich)
> library(corrplot)
> #convert to panel data
  > pdata <- pdata.frame(prison, index = c("state", "year"))
  > 
    > #ESTIMATE POLS MODEL
    > pols <- plm(lcriv ~ govelec + unem + black + metro + lpris,
      +     data = pdata,
      +     model = "pooling"
      + )
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

> #BREUSCH-PAGAN LM TEST
> plmtest(pols, type = "bp")
    
    Lagrange Multiplier Test - (Breusch-Pagan)
    
    data:  lcriv ~ govelec + unem + black + metro + lpris
    chisq = 1993.3, df = 1, p-value < 2.2e-16
    alternative hypothesis: significant effects

> #POLS is not appropriate due to significant panel effects.
> coeftest(pols, vcov = vcovHC(
+         pols,type = "HC1")
+ )
  
  t test of coefficients:
    
    Estimate Std. Error t value  Pr(>|t|)    
  (Intercept) -2.775755   0.455137 -6.0987 1.758e-09 ***
    govelec     -0.014183   0.013197 -1.0748  0.282851    
  unem         3.681583   1.342701  2.7419  0.006262 ** 
    black        0.440253   0.277029  1.5892  0.112463    
  metro        1.412483   0.165481  8.5356 < 2.2e-16 ***
    lpris        0.584895   0.078466  7.4541 2.648e-13 ***
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
  
> #FGLS is estimated as an additional estimator for robustness checks. 
> #However, LM and Hausman tests indicate that the FE model 
> #remains the preferred specification.
> fgls <- gls(
  +     lcriv ~ govelec + unem + black + metro + lpris,
  +     data = prison,
  +     weights = varIdent(form = ~1 | state)
  + )
  > summary(fgls)
  Generalized least squares fit by REML
  Model: lcriv ~ govelec + unem + black + metro + lpris 
  Data: prison 
  AIC      BIC    logLik
  127.6594 387.7187 -6.829711
  
  Variance function:
    Structure: Different standard deviations per stratum
  Formula: ~1 | state 
  Parameter estimates:
    1         2         3         4         5         6         7         8         9 
  1.0000000 3.0106589 0.9042270 1.0333011 2.1566359 1.1185108 1.5873818 1.2781533 1.3983637 
  10        11        12        13        14        15        16        17        18 
  1.8753412 0.7786044 2.9244133 1.8405591 2.0517094 1.4821774 0.7413817 1.0235382 0.6953204 
  19        20        21        22        23        24        25        26        27 
  0.5064417 2.3626833 0.6445631 2.3380245 1.3001379 0.6363400 1.7096546 1.4963239 2.2774201 
  28        29        30        31        32        33        34        35        36 
  0.6163623 1.5114282 3.7132479 1.6072970 5.7335071 2.6326415 0.9900782 6.0512711 1.5706853 
  37        38        39        40        41        42        43        44        45 
  0.5929557 1.4100922 1.6062532 1.5521878 0.8938151 2.8532517 1.0830642 0.6822032 2.0769723 
  46        47        48        49        50        51 
  2.1517426 3.6609095 0.6407016 1.2574963 2.8722973 2.3161028 
  
  Coefficients:
    Value  Std.Error   t-value p-value
  (Intercept) -1.7989751 0.08394741 -21.42979  0.0000
  govelec      0.0132468 0.01584945   0.83579  0.4036
  unem        -0.1474794 0.30722652  -0.48003  0.6314
  black        0.9567163 0.07802205  12.26213  0.0000
  metro        1.2811477 0.04003178  32.00326  0.0000
  lpris        0.4569584 0.01611651  28.35343  0.0000
  
  Correlation: 
    (Intr) govelc unem   black  metro 
  govelec -0.056                            
  unem    -0.347 -0.090                     
  black    0.636  0.000 -0.264              
  metro   -0.176 -0.009  0.036 -0.134       
  lpris   -0.919  0.037  0.117 -0.643 -0.130
  
  Standardized residuals:
    Min         Q1        Med         Q3        Max 
  -2.6631420 -0.9122802 -0.1131138  0.7919655  2.9278780 
  
  Residual standard error: 0.161743 
  Degrees of freedom: 714 total; 708 residual

> #FEM
> fe <- plm(lcriv ~ govelec + unem + black + metro + lpris,
                  +     data = pdata,
                  +     model = "within"
                  + )
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
> 
> #REM
> re <- plm(lcriv ~ govelec + unem + black + metro + lpris,
                  +     data = pdata,
                  +     model = "random"
                  + )
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
> 
> #HAUSMAN TEST
> 
> phtest(fe, re)

	Hausman Test

data:  lcriv ~ govelec + unem + black + metro + lpris
chisq = 53.907, df = 5, p-value = 2.191e-10
alternative hypothesis: one model is inconsistent

> #ROBUST SE FOR FE
> coeftest(
+     fe,
+     vcov = vcovHC(
+         fe,
+         method = "arellano",
+         type = "HC1",
+         cluster = "group"
+     )
+ )

t test of coefficients:

          Estimate Std. Error t value  Pr(>|t|)    
govelec  0.0137078  0.0055966  2.4493 0.0145721 *  
unem    -1.9302993  0.5737299 -3.3645 0.0008114 ***
black    0.3398246  1.7041181  0.1994 0.8420007    
metro    2.1671312  1.2893723  1.6808 0.0932832 .  
lpris    0.1493387  0.0434099  3.4402 0.0006180 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

> library(modelsummary)
> modelsummary(
+     list(
+         "POLS" = pols,
+         "FE" = fe
+     ),
+     output = "model_comparison_ver_norobust.html"
>  modelsummary(
+     list("POLS" = pols,
+         "FE" = fe),
+     vcov = list(NULL, vcovHC(fe,
+             method = "arellano",
+             type = "HC1",
+             cluster = "group"
+         )
+     ),
+     output = "model_comparison.html"
+ )
> 
> capture.output(
+     summary(pols),
+     file = "pols_results.txt"
+ )
> 
> capture.output(
+     summary(fe),
+     file = "fe_results.txt"
+ )
> 
> capture.output(
+     summary(re),
+     file = "re_results.txt"
+ )
> 
> capture.output(
+     phtest(fe, re),
+     file = "hausman.txt"
+ )
> 
> capture.output(
+     plmtest(pols, type = "bp"),
+     file = "lm_test.txt"
+ )
> capture.output(
+      summary(fgls),
+     file = "fgls.txt"
+    )