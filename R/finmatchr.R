#' @import shiny
#' @import htmlwidgets
#' @import flexdashboard
#' @import rmarkdown
#' @import tidyverse
#' @import magick
#' @import svgPanZoom
#' @import neo4r
#' @import aws.s3
#' @import tools
#' @export
finmatchr <- function( params = list( neo4j_url = "http://localhost:7474",
                                      neo4j_user = "neo4j",
                                      neo4j_pass = "neo4j",
                                      s3_bucket = "bucket",
                                      s3_access_key = "minioadmin",
                                      s3_secret_key = "minioadmin",
                                      s3_region = "",
                                      s3_endpoint = "localhost:9000",
                                      ssl = F ) ) {
  rmarkdown::run( 'finmatchr.Rmd', render_args = list( params = params ), shiny_args = list(launch.browser = TRUE ) )
}
