library(shiny)
library(leaflet)
library(leaflet.extras)


# functions, to decode route received from API
source('functions.R')

# geometry test Bolzano-Trento
# geometry <- "{hwzGevedAUu@g@eBq@cC_@gAIOYa@\\IJCf@OnC{@n@Uh@OHCt@Wj@On@Sz@YjA]|@Y~@]FAH@J?J?LCDDHLDRDp@Dt@DrAHjAHh@Nj@FdBFzAL`BTnBTnB`@vDj@lEb@hD`@fDx@~Dd@jCp@lDv@pEZzA~@hE|@|Ch@zAZv@DJx@dB|@~AhCvDb@n@vEhGlBhCf@v@fBbD|@jBjB|Dl@pANZf@v@p@x@RLJHr@l@nChCJFJBT?d@C\\ITMPULSRYnBqET]NITAVB\\b@\\^LP`@l@dB|Bb@p@d@`@h@d@|@\\RLTPX`@Xn@Nd@Jj@Dj@@n@Ct@It@Ot@YlAmAnEYlAWjAGl@Al@@d@Df@Jd@P`@Tb@\\Rb@Hf@@r@M|As@l@Yf@Ob@KTCTAj@@f@Jd@Nb@Rj@d@lA~@`CbC~BlC~GlJxB|CzBzC~BzCvA~AzBvBhA~@nAz@hBhAhBz@~@^bAb@xAf@xBf@lBXlCVvBJvB?fCO~C]fCg@fDeAnBs@vBiAfJ_GdNcJlBwAdDiCtG_GlEcEvFkFzEqEdDyCpB{ArBqAdBy@|BgArBu@xCu@jCg@pD_@nDKfDDrDNzD\\|Hn@~Jx@`F`@fFb@fMbAzDd@xDz@tDlAnD~A`EdCzHtE~FfDxFnD~EpCtEpCnIbFlIxElI`FvJzF|JxFjJjFpKfGnK`GfK`GtGrDjFvCpDjBvAp@zAl@|DnA~Cr@dDl@jGdAzDl@z@N~Cf@jBXpCd@~F~@dG`AdCb@pC`@h@HvATvIvArEr@jG`AfFx@jEv@zB\\|BVhCVvDTvE@`FExFMdEBbCAlMb@zDJ~DXvDd@lCh@vAT`TvFZHzMhDhD~@fFpBrExB|CdBjEbCxRtMhDvBlBfAfBbApF|BlD|@tBh@zBj@tEhAfDx@rCr@|Bl@zD~@rHhBdUvFvCr@dAXdBf@j@Pn@VlAf@|@b@b@Tr@b@|@j@~CvBjD~BtCnB`KjH~IlG`EpCbBtAbB~AzC`D~AlBtAhBv[|e@~BhDdBrB~BzCxDbEhEvD|FvEneAhy@jJpHfOhLhNxKxClBvErCxH`EdEbBhExAlEnAlE~@tCl@fH`Aly@dL~Dl@tCr@pCz@vClAnIjEpQpJ~C`B~Az@pBtA`BpAhB`Bte@te@xCxCtAfB|A|BhC~DfHjLtCrEvAnB~BtCxMvNbBxBtB~Cj@|@jAbCfAhC`@dAxGnSxHlVpBdHlDjOlGdYbCrK|CrMxD|P~Hb\\|Hp\\lAhFXjAzFtUvIt[zEhQ`Mxc@|L`d@bAhDlAbDtAzCn@fA~AlC`BpBz@bAlBfBtBzAlBlAlB|@~IpDnJnDlb@~O`LvEdLhEtM|E`Bt@~Ax@xBtApBxAxCfC~AdBfBtBjBhC~E|HzIbObEzGvGpKxAtBxNfRdB|BdFzGbFrGnC`D~AdB`BxAnBxAdBjAhBdAhLvGjGhDzMrH`IhEjGnDlGtDlIjF`PtJtEpCtEnCh@\\d@\\z@l@t@l@z@r@x@t@pBpB|GhHzGdHzGdHxG|GjCnCzC~C`DhDdC~BhBpAdBdA~@d@hBv@~DpA|FtA|KhCzEhAvElAvFvA`G|AlG~AhD~@jD`ApCdAfBn@vD|AlGlChGbC`DpApFxBrFxBrFxBpFzBrFvBxBr@xBh@hBZfBP`BJjBD|AEn@AvCShDe@zCy@vBs@bFoBjCeAnR_IdA_@n@Md@OxA[T?NBb@NVJTDXEVQNYH]Dk@BaAB}ANy@Ra@h@_@f@Of@B^Fz@HnC?tABfAHH?TE^MZMZIXGXAXFZCVM\\Ab@@fC^fBBj@At@If@OrB]rMiC|RuDxJkB`FoA~EkBjDgBxCkBzC{BhNkMfBaBbJmIzIiIj@w@j@mAPs@Z_BTu@b@aBb@{AL_@NURSVKVEX?z@FX?TCTGl@YbAo@dAk@`DeBzByAlEqC|@}@nAoAzA}B~@mBxA{C~HcQv@gBf@q@fB_C\\k@N_@D[DaAQkAGa@Gg@Iw@@c@Lo@FUDWB[?[E[EWKUIOMKUIMCMAWKMIGEOU_@y@gBcHm@}Bs@wCEu@?YB[BI@KFUJSJSRMFCLGvBeABAr@]JGpAeAZOFCt@]FCPKTKJE`Ac@PK`DyAJGlCoApAm@b@SRKFEv@]PIdAc@f@WDCnAk@\\QPITK~@c@zAs@jAg@FBRJFBp@^bAj@BB`Af@\\Tb@XDBDD`@VD@rAv@FDB@t@b@XNLH`CtA~@l@LH@BBDBF@P?L@J@NFHHFvBnADDLHTJRJTBXBx@b@LJhAx@H@bAITCfAMRCHEn@I`@EP?r@Ij@IDAd@K@A^Ix@E\\CZEPEPSp@cANMFGZYLG"
# path <- decode(geometry, multiplier=1e5)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    output$map <- renderLeaflet({
        start <- c(input$startlong,input$startlat)
        end <- c(input$endlong,input$endlat)
        url <- paste0('http://router.project-osrm.org/route/v1/driving/',
                      paste(start, collapse = ','), ';',
                      paste(end, collapse = ','), "?overview=full")
        route <- fromJSON(file = url)
        route$routes[[1]]$distance
        # decode osrm geometry
        path <- decode(route$routes[[1]]$geometry, multiplier=1e5)
        leaflet() %>%
            addProviderTiles(providers$CartoDB.DarkMatter) %>% 
            #addMarkers(data=df, lat=~lat,lng=~lng) %>% 
            addPolylines(data=path, color = 'skyblue') %>% 
            addFullscreenControl()
    })
    
})


