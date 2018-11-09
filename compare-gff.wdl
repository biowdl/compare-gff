version 1.0

import "tasks/gffcomare.wdl" as gffcompare

workflow CompareGff {
    input {
        File sampleGtf
        Array[File] databases
        String outputDir
    }
    scatter (database in databases) {
        String databaseOutputDir = outputDir + "/" + sub(basename(database), "\.g[tf]f$", ".d")
        call gffcompare.GffCompare as GffCompare {
            input:
                inputGtfFiles = [sampleGtf],
                referenceAnnotation = database,
                outputDir = databaseOutputDir
        }
    }

}