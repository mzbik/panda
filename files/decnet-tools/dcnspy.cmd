!COMMAND FILE FOR OBTAINING ALL FILES RELEVANT TO DCNSPY

INFORMATION LOGICAL-NAMES FROM*:
INFORMATION LOGICAL-NAMES TO*:

;Files required to build product
COPY FROM-SOURCE:DCNSPY.CMD TO-SOURCE:*.*.-1
COPY FROM-SOURCE:DCNSPY.CTL TO-SOURCE:*.*.-1
COPY FROM-SOURCE:DCNSPY.MAC TO-SOURCE:*.*.-1

;Documentation for product

;Final product
COPY FROM-SOURCE:DCNSPY.EXE TO-SUBSYS:*.*.-1