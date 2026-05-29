
> library(plm)
> library(lmtest)
> library(sandwich)
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

