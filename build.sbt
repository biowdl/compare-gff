organization := "com.github.biopet"
organizationName := "Biowdl"
name := "compare-gff"

biopetUrlName := "compare-gff"

startYear := Some(2018)

biopetIsTool := false
biopetIsPipeline := true

developers += Developer(id = "rhpvorderman",
                        name = "Ruben Vorderman",
                        email = "r.h.p.vorderman@lumc.nl",
                        url = url("https://github.com/rhpvorderman"))

scalaVersion := "2.11.12"

libraryDependencies += "com.github.biopet" %% "biowdl-test-utils" % "0.1-SNAPSHOT" % Test changing ()
