library(rmarkdown)
library(optparse)

# Pandoc needs a UTF-8 locale?
Sys.setenv(LC_ALL="en_US.UTF-8")
Sys.setenv(LANG="en_US.UTF-8")
Sys.setenv(LANGUAGE="en_US.UTF-8")

option_list = list(
    make_option(c("--baseurl"), type="character", default="/",
                help="the base url", metavar="character"),
    make_option(c("--host"), type="character", default="0.0.0.0",
                help="the host ip", metavar="character"),
    make_option(c("--port"), type="integer", default=8000,
                help="the port", metavar="number")
);

opt_parser = OptionParser(option_list = option_list);
arguments = parse_args(opt_parser, positional_arguments = 1);
opt = arguments$options
rmdFile = arguments$args

rmarkdown::run(
    rmdFile,
    shiny_args = list(
        host=opt$host,
        port=opt$port,
        launch.browser=FALSE
    )
)
