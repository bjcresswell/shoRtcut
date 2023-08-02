# Start here

# Following steps are based on https://www.r-bloggers.com/2020/03/defining-your-own-shortcut-in-rstudio/

library(usethis)

# 1. Use this function to automatically create a new r script for your function (need one script per function) or create manually
#usethis::use_r("set_new_chapter")
#usethis::use_r("set_exp_pipe")


# 2. Once you've written your function in the R script above - add it to the addins.dcf file
# With this dcf file, keep listing your add-ins using the same 4-line formula - just need to leave a blank line between each one.

# 3. Build the package and install
# OPTIONAL: define the license of your package
usethis::use_mit_license(copyright_holder	= "Ben Cresswell")

# define dependencies you use in your package
usethis::use_package("rstudioapi")

# OPTIONAL: include your function description to the manual
roxygen2::roxygenise()

# check for errors
devtools::check()
# Returns a "note" about this file - cannot store in the R folder or it messes up the package

# update/create your package
devtools::build()

install.packages(
  # same path as above
  "/Users/jc504838/Library/CloudStorage/OneDrive-JamesCookUniversity/Ben PhD/Data & analysis/shoRtcut_0.1.0.tar.gz",
  # indicate it is a local file
  repos = NULL)

# 4. Check if everything works
shoRtcut:::set_new_chapter()
shoRtcut:::set_exp_pipe()
shoRtcut:::set_native_pipe()
shoRtcut:::set_fwd_assign()



 # 5. Go to Tools
