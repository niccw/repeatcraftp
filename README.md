# RepeatCraft pipeline

#### Overview
RepeatCraft pipeline incorporates tools for repeat element classification based on both sequence similarity and structural features. The pipeline defragments closely spanced repeat loci in the genomes, reconstructing longer copies thus allowing for a better annotation and sequence comparisons. A Shiny web application is also developed as a user interface for the RepeatCraft pipeline, and allow easy access and study of repeat elements. It is availavle at [https://github.com/niccw/repeatCraft](https://github.com/niccw/repeatCraft).

#### What does RepeatCraft do?



#### Run RepeatCraft
RepeatCraft can be ran by calling `repatcraft.py`, it takes the following arguments and options:
```
usage: repeatcraft.py [-h] [-r RMGFF] [-u RMOUT] [-c CONFIG] [-o OUTPUT]
                      [-m MERGE]

RepeatCraft pipeline for improving repeat elements annotationby defragments
closely spanced repeat elements,based on sequence similarity and structural
features from different annotators

optional arguments:
  -h, --help            show this help message and exit
  -r RMGFF, --rmgff RMGFF
                        RepeatMasker GFF
  -u RMOUT, --rmout RMOUT
                        RepeatMasker OUT
  -c CONFIG, --config CONFIG
                        Configuration file. Default = repeatcraft.cfg
  -o OUTPUT, --output OUTPUT
                        Output file name
  -m MERGE, --merge MERGE
                        Merge the GFF. Default = False, RepeatCraft will only
                        add LTRgroup and TEgroup label at theattribute column
```

The example folder contains the sample inputs `example_input.gff` `example_input.out` (GFF and OUT files from RepeatMasker), the configuration file `repeatcraft.cfg` and the mapfile `mapfile.tsv`which is used in short TEs labelling. By default, the merge flag is `False` and RepeatCraft would only add label to the attribute column, `example_rclabel.gff` is the example output. If `-m True`, the repeats will be merged based on the labels added in the previous two step, and the strand (+/-) will follow the orientation of the largest repeat in the group. 

##### Parameters in repeatcraft.cfg

