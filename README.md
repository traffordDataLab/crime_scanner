## Crime Scanner

[Crime Scanner](http://www.trafforddatalab.io/crime_scanner/index.html) allows you to interactively visualise street level crime and anti-social behaviour (ASB) incidents in your area. You can filter counts of crime and ASB over the last three years and see the results in linked visualisations.   

#### Data
The application retrieves police recorded crime and incidents of anti-social behaviour in England from [data.police.uk](https://data.police.uk/). Thirteen different [crime categories](https://www.police.uk/about-this-site/faqs/#what-do-the-crime-categories-mean) are available. Crime and anti-social behaviour incidents can be filtered by Local Authority District, Electoral ward and [best-fitting](http://geoportal.statistics.gov.uk/datasets/500d4283cbe54e3fa7f358399ba3783e_0) Lower-layer Super Output Area (LSOA) levels.

#### Please note
- The loading time for some larger Local Authority Districts may be longer because the application is retrieving larger volumes of data. The orange progress bar provides a real time indication of the loading time.
- The location of crimes and incidents of anti-social behaviour are approximate. Crime and ASB data published on [data.police.uk](https://data.police.uk/) are subject to a [location anonymisation process](https://data.police.uk/about/#location-anonymisation) which is intended to ensure the privacy of victims of crime. A review of the process can be found in [Tompson et al. (2015)](https://www.tandfonline.com/doi/abs/10.1080/15230406.2014.972456)
- Some offences such as domestic violence are not available.
- Not all crimes are reported to the police.
- Crime rates have been calculated using the number of residents in each area. This is an imperfect denominator because it doesn't necessarily reflect the daytime population of an area or the number of criminal targets available.

#### Sharing
[Crime Scanner](http://www.trafforddatalab.io/crime_scanner/index.html) can be set to load data for a specific area by bookmarking the page once the reported crime and ASB data have loaded. The application can also be embedded in your website using an iframe. For example,

``` <iframe src="http://www.trafforddatalab.io/crime_scanner/?code=E08000009&name=Trafford" width="100%" height="800px"></iframe>
```

#### Credits

Police recorded crime data from the [Home Office](https://www.gov.uk/government/organisations/home-office) and mid-2017 [population estimates](https://www.ons.gov.uk/peoplepopulationandcommunity/populationandmigration/populationestimates) from the Office for National Statistics are used under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/). Digital vector boundaries derive from the [Open Geography Portal](http://geoportal.statistics.gov.uk/).

#### Keeping safe
- Contact your [local police force](https://www.police.uk/contact/force-websites/).
- Pass information anonymously to the police via [CrimeStoppers](http://www.crimestoppers-uk.org/).
- Join your local [Neighbourhood Watch](http://www.ourwatch.org.uk) group.
- Report graffiti and fly tipping to your local council via [FixMyStreet](http://www.fixmystreet.com/).
