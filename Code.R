#Exponential Model

## Exponential Model Example
plotexp <- function(y0,r,maxt){
        curve(
        y0*exp(r*x),
        from=0,
        to=maxt,
        xlab='Time',
        ylab='Disease Incidence',
        col='mediumblue')
}
plotexp(0.0017, 0.01579, 100)


#Monomolecular model

## Monomolecular Model Example
plotmono <- function(y0,r,maxt){
        curve(
        1-(1-y0)*exp(-r*x),
        from=0,
        to=maxt,
        xlab='Time',
        ylab='Disease Incidence',
        col='mediumblue')
}
plotmono(0.0017, 0.00242, 2000)


#Logistic model

## Logistic Model Example
plotlog <- function(y0,r,maxt){
        curve(
        1/(1+(1-y0)/y0*exp(-r*x)),
        from=0,
        to=maxt,
        xlab='Time',
        ylab='Disease Incidence',
        col='mediumblue'
        )
}
plotlog(0.001, 0.01636, 1000)


#Gompertz Model

## Gompertz Model Example
plotgomp <- function(y0,r,maxt){
        curve(
        exp(log(y0)*exp(-r*x)),
        from=0, to=maxt, xlab='Time',
        ylab='Disease Incidence',
        col='mediumblue'
        )
}
plotgomp(0.0017,0.02922, 250)


#Weibull Model

## Weibull Model Example
plotweib <- function(a,b,c,maxt){
        curve(
                1-exp(-((x-a)/b)^c),
                from=0,
                to=maxt,
                xlab='Time',
                ylab='Disease Incidence',
                col='mediumblue'
        )
}
plotweib(1, 331.10, 10.04, 500)



#https://www.apsnet.org/edcenter/disimpactmngmnt/topc/EcologyAndEpidemiologyInR/DiseaseProgress/Pages/GrowthModels.aspx
