version 1.0

import "tasks/gffcompare.wdl" as gffcompare

workflow CompareGff {
    input {
        File sampleGtf
        Array[File] databases
        String outputDir
    }

    scatter (database in databases) {
        call gffcompare.GffCompare as GffCompare {
            input:
                inputGtfFiles = [sampleGtf],
                referenceAnnotation = database,
                outputDir = outputDir + "/" + basename(database) + ".d"
        }
    }

    output {
        Array[File] annotatedGtfs = GffCompare.annotated
    }

}