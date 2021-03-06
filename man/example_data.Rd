\name{example_data}
\alias{example_data}
\docType{data}
\title{
Pollen data from four European sequences
}
\description{
Tibble cointaining four European sequences obtained the Neotoma database (Goring et al., 2015) with age-depth models from Bchron (Haslett & Parnell, 2008) and hamronised pollen taxa.
}
\usage{data("example_data")}
\format{
  A data frame with 4 observations on the following 6 variables.
  \describe{
    \item{\code{dataset.id}}{a character vector containing Neotoma unique number for each sequence}
    \item{\code{collection.handle}}{a character vector containing Neotoma sequence name abberation}
    \item{\code{lat}}{a numeric vector of Latitude}
    \item{\code{long}}{a numeric vector of Longitude}
    \item{\code{sample_age}}{a list vector including tibble with estimated ages for each level}
    \item{\code{age_uncertainty }}{Matrix with all age uncertainties from age-depth model. Each collumn represent one level. Each row is one age-depth simulation}
    \item{\code{pollen_data}}{a list vector cointaining tibbles with pollen counts of taxa in each level}
  }
}
\details{
We obtained pollen data from the Neotoma database (Williams, Grimm, et al., 2018) using the Neotoma R package (Goring et al., 2015). We chose four European sequences (A–D). 
I each sequence, taxa were standardised to the taxonomically highest pollen morphotype (Level = MHVar2) using the pollen harmonisation table in Giesecke et al. (2019). To develop age-depth models, we used the pre-selected radiometric control points provided in Giesecke et al. (2014) and calibrated the radiocarbon dates using the IntCal13 Northern Hemisphere calibration curve (Reimer et al., 2013). For each sequence, we constructed an age-depth model using the Bchron R package (Haslett and Parnell, 2008) to generate 1000 possible age estimates for all sample depths at the original sampling resolution of the original pollen sequences. We used these 1000 draws to build posterior estimates of age uncertainty. We calculated the median age estimate for each sample depth to obtain the default age used in following analyses. 
In each sequence, we excluded all levels that contained less than 150 pollen counts of terrestrial taxa, and all levels beyond a 3000-years extrapolation of the oldest chronological control point. In addition, we excluded all levels with an age older than 8500 cal yr BP to ensure focus on the period with substantial human impact.

}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
Giesecke, T., Davis, B., Brewer, S., Finsinger, W., Wolters, S., Blaauw, M., de Beaulieu, J.L., Binney, H., Fyfe, R.M., Gaillard, M.J., Gil-Romera, G., van der Knaap, W.O., Kuneš, P., Kühl, N., van Leeuwen, J.F.N., Leydet, M., Lotter, A.F., Ortu, E., Semmler, M., Bradshaw, R.H.W., 2013. Towards mapping the late Quaternary vegetation change of Europe. Veg. Hist. Archaeobot. 23, 75–86. https://doi.org/10.1007/s00334-012-0390-y

Giesecke, T., Wolters, S., van Leeuwen, J.F.N., van der Knaap, P.W.O., Leydet, M., Brewer, S., 2019. Postglacial change of the floristic diversity gradient in Europe. Nat. Commun. 10. https://doi.org/10.1038/s41467-019-13233-y

Goring, S., Dawson, A., Simpson, G.L., Ram, K., Graham, R.W., Grimm, E.C., Williams, J.W., 2015. Neotoma: A programmatic interface to the Neotoma paleoecological database. Open Quat. 1, 1–17. https://doi.org/10.5334/oq.ab

Haslett, J., Parnell, A., 2008. A simple monotone process with application to radiocarbon-dated depth chronologies. J. R. Stat. Soc. Ser. C Appl. Stat. 57, 399–418. https://doi.org/10.1111/j.1467-9876.2008.00623.x

Reimer, P.J., Bard, E., Bayliss, A., Beck, J.W., Blackwell, P.G., Ramsey, C.B., Buck, C.E., Cheng, H., Edwards, R.L., Friedrich, M., Grootes, P.M., Guilderson, T.P., Haflidason, H., Hajdas, I., Hatté, C., Heaton, T.J., Hoffmann, D.L., Hogg, A.G., Hughen, K.A., 

Kaiser, K.F., Kromer, B., Manning, S.W., Niu, M., Reimer, R.W., Richards, D.A., Scott, E.M., Southon, J.R., Staff, R.A., Turney, C.S.M., van der Plicht, J., 2013. IntCal13 and Marine13 Radiocarbon Age Calibration Curves 0–50,000 years cal BP. Radiocarbon 55, 1869–1887. https://doi.org/10.2458/azu_js_rc.55.16947
}
\examples{
data(example_data)
}
\keyword{datasets}
