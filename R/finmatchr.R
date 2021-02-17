#' @import shiny
#' @import jsTreeR
#' @import flexdashboard
#' @import rmarkdown
#' @import magick
#' @import svgPanZoom
#' @import visNetwork
#' @import neo4r
#' @import aws.s3
#' @importFrom magrittr "%>%"
#' @importFrom purrr map map_df map_chr map_lgl map2_lgl
#' @importFrom dplyr mutate select rename filter group_by ungroup recode case_when left_join anti_join distinct rowwise bind_rows slice arrange
#' @importFrom tidyr nest unnest
#' @importFrom tibble tibble add_column as_tibble
#' @importFrom tools file_ext
#' @importFrom igraph graph_from_data_frame groups components
#' @importFrom openssl md5
#' @importFrom lubridate year month day
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
