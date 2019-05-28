#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J run_blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user Carolina.Barros.8371@student.uu.se

module load bioinfo-tools blast

cat genome_oneline.txt | awk '{print substr($0,974287,9793)}' > temp.txt
blastn -db nt -query temp.txt -out gene1.out
cat genome_oneline.txt | awk '{print substr($0,1114895,2553)}' > temp.txt
blastn -db nt -query temp.txt -out gene2.out
cat genome_oneline.txt | awk '{print substr($0,1124461,3984)}' > temp.txt
blastn -db nt -query temp.txt -out gene3.out
cat genome_oneline.txt | awk '{print substr($0,1135599,3545)}' > temp.txt
blastn -db nt -query temp.txt -out gene4.out
cat genome_oneline.txt | awk '{print substr($0,1609679,2143)}' > temp.txt
blastn -db nt -query temp.txt -out gene5.out
cat genome_oneline.txt | awk '{print substr($0,1682535,2940)}' > temp.txt
blastn -db nt -query temp.txt -out gene6.out
cat genome_oneline.txt | awk '{print substr($0,1772848,6398)}' > temp.txt
blastn -db nt -query temp.txt -out gene7.out
cat genome_oneline.txt | awk '{print substr($0,1707240,8029)}' > temp.txt
blastn -db nt -query temp.txt -out gene8.out
cat genome_oneline.txt | awk '{print substr($0,1788568,7863)}' > temp.txt
blastn -db nt -query temp.txt -out gene9.out
cat genome_oneline.txt | awk '{print substr($0,1803042,11026)}' > temp.txt
blastn -db nt -query temp.txt -out gene10.out
cat genome_oneline.txt | awk '{print substr($0,2329419,4614)}' > temp.txt
blastn -db nt -query temp.txt -out gene11.out
cat genome_oneline.txt | awk '{print substr($0,885089,2552)}' > temp.txt
blastn -db nt -query temp.txt -out gene12.out
cat genome_oneline.txt | awk '{print substr($0,1043178,16318)}' > temp.txt
blastn -db nt -query temp.txt -out gene13.out
cat genome_oneline.txt | awk '{print substr($0,1066552,18677)}' > temp.txt
blastn -db nt -query temp.txt -out gene14.out
cat genome_oneline.txt | awk '{print substr($0,1211640,3903)}' > temp.txt
blastn -db nt -query temp.txt -out gene15.out
cat genome_oneline.txt | awk '{print substr($0,1406557,28809)}' > temp.txt
blastn -db nt -query temp.txt -out gene16.out
cat genome_oneline.txt | awk '{print substr($0,1539113,9641)}' > temp.txt
blastn -db nt -query temp.txt -out gene17.out
cat genome_oneline.txt | awk '{print substr($0,1553481,7346)}' > temp.txt
blastn -db nt -query temp.txt -out gene18.out
cat genome_oneline.txt | awk '{print substr($0,1568792,16224)}' > temp.txt
blastn -db nt -query temp.txt -out gene19.out
cat genome_oneline.txt | awk '{print substr($0,1618829,4020)}' > temp.txt
blastn -db nt -query temp.txt -out gene20.out
cat genome_oneline.txt | awk '{print substr($0,1733725,18321)}' > temp.txt
blastn -db nt -query temp.txt -out gene21.out
cat genome_oneline.txt | awk '{print substr($0,1678491,1645)}' > temp.txt
blastn -db nt -query temp.txt -out gene22.out
cat genome_oneline.txt | awk '{print substr($0,165901,592)}' > temp.txt
blastn -db nt -query temp.txt -out gene23.out
cat genome_oneline.txt | awk '{print substr($0,235947,3347)}' > temp.txt
blastn -db nt -query temp.txt -out gene24.out
cat genome_oneline.txt | awk '{print substr($0,240050,18236)}' > temp.txt
blastn -db nt -query temp.txt -out gene25.out
cat genome_oneline.txt | awk '{print substr($0,182886,10276)}' > temp.txt
blastn -db nt -query temp.txt -out gene26.out
cat genome_oneline.txt | awk '{print substr($0,404209,16429)}' > temp.txt
blastn -db nt -query temp.txt -out gene27.out
cat genome_oneline.txt | awk '{print substr($0,430109,15893)}' > temp.txt
blastn -db nt -query temp.txt -out gene28.out
cat genome_oneline.txt | awk '{print substr($0,460995,6072)}' > temp.txt
blastn -db nt -query temp.txt -out gene29.out
cat genome_oneline.txt | awk '{print substr($0,498189,16843)}' > temp.txt
blastn -db nt -query temp.txt -out gene30.out
cat genome_oneline.txt | awk '{print substr($0,870266,8608)}' > temp.txt
blastn -db nt -query temp.txt -out gene31.out
cat genome_oneline.txt | awk '{print substr($0,933104,5900)}' > temp.txt
blastn -db nt -query temp.txt -out gene32.out
cat genome_oneline.txt | awk '{print substr($0,8686,20523)}' > temp.txt
blastn -db nt -query temp.txt -out gene33.out
cat genome_oneline.txt | awk '{print substr($0,103220,42914)}' > temp.txt
blastn -db nt -query temp.txt -out gene34.out
cat genome_oneline.txt | awk '{print substr($0,950416,23028)}' > temp.txt
blastn -db nt -query temp.txt -out gene35.out
cat genome_oneline.txt | awk '{print substr($0,1017443,23700)}' > temp.txt
blastn -db nt -query temp.txt -out gene36.out
cat genome_oneline.txt | awk '{print substr($0,1093936,19527)}' > temp.txt
blastn -db nt -query temp.txt -out gene37.out
cat genome_oneline.txt | awk '{print substr($0,1079774,36132)}' > temp.txt
blastn -db nt -query temp.txt -out gene38.out
cat genome_oneline.txt | awk '{print substr($0,1149216,4239)}' > temp.txt
blastn -db nt -query temp.txt -out gene39.out
cat genome_oneline.txt | awk '{print substr($0,1178976,23106)}' > temp.txt
blastn -db nt -query temp.txt -out gene40.out
cat genome_oneline.txt | awk '{print substr($0,1178163,7586)}' > temp.txt
blastn -db nt -query temp.txt -out gene41.out
cat genome_oneline.txt | awk '{print substr($0,1281562,87558)}' > temp.txt
blastn -db nt -query temp.txt -out gene42.out
cat genome_oneline.txt | awk '{print substr($0,1256664,24085)}' > temp.txt
blastn -db nt -query temp.txt -out gene43.out
cat genome_oneline.txt | awk '{print substr($0,1386294,5805)}' > temp.txt
blastn -db nt -query temp.txt -out gene44.out
cat genome_oneline.txt | awk '{print substr($0,1516525,6685)}' > temp.txt
blastn -db nt -query temp.txt -out gene45.out
cat genome_oneline.txt | awk '{print substr($0,1623588,22759)}' > temp.txt
blastn -db nt -query temp.txt -out gene46.out
cat genome_oneline.txt | awk '{print substr($0,1656916,8680)}' > temp.txt
blastn -db nt -query temp.txt -out gene47.out
cat genome_oneline.txt | awk '{print substr($0,1626833,2371)}' > temp.txt
blastn -db nt -query temp.txt -out gene48.out
cat genome_oneline.txt | awk '{print substr($0,1630236,2574)}' > temp.txt
blastn -db nt -query temp.txt -out gene49.out
cat genome_oneline.txt | awk '{print substr($0,1634193,2305)}' > temp.txt
blastn -db nt -query temp.txt -out gene50.out
cat genome_oneline.txt | awk '{print substr($0,1661553,14135)}' > temp.txt
blastn -db nt -query temp.txt -out gene51.out
cat genome_oneline.txt | awk '{print substr($0,1715304,16802)}' > temp.txt
blastn -db nt -query temp.txt -out gene52.out
cat genome_oneline.txt | awk '{print substr($0,1760255,11353)}' > temp.txt
blastn -db nt -query temp.txt -out gene53.out
cat genome_oneline.txt | awk '{print substr($0,176227,2581)}' > temp.txt
blastn -db nt -query temp.txt -out gene54.out
cat genome_oneline.txt | awk '{print substr($0,222710,2193)}' > temp.txt
blastn -db nt -query temp.txt -out gene55.out
cat genome_oneline.txt | awk '{print substr($0,204700,17180)}' > temp.txt
blastn -db nt -query temp.txt -out gene56.out
cat genome_oneline.txt | awk '{print substr($0,1960678,9207)}' > temp.txt
blastn -db nt -query temp.txt -out gene57.out
cat genome_oneline.txt | awk '{print substr($0,2021265,17941)}' > temp.txt
blastn -db nt -query temp.txt -out gene58.out
cat genome_oneline.txt | awk '{print substr($0,2210977,36593)}' > temp.txt
blastn -db nt -query temp.txt -out gene59.out
cat genome_oneline.txt | awk '{print substr($0,2318949,2641)}' > temp.txt
blastn -db nt -query temp.txt -out gene60.out
cat genome_oneline.txt | awk '{print substr($0,317942,13206)}' > temp.txt
blastn -db nt -query temp.txt -out gene61.out
cat genome_oneline.txt | awk '{print substr($0,314916,2170)}' > temp.txt
blastn -db nt -query temp.txt -out gene62.out
cat genome_oneline.txt | awk '{print substr($0,332246,9448)}' > temp.txt
blastn -db nt -query temp.txt -out gene63.out
cat genome_oneline.txt | awk '{print substr($0,262565,11685)}' > temp.txt
blastn -db nt -query temp.txt -out gene64.out
cat genome_oneline.txt | awk '{print substr($0,280103,4255)}' > temp.txt
blastn -db nt -query temp.txt -out gene65.out
cat genome_oneline.txt | awk '{print substr($0,285021,16671)}' > temp.txt
blastn -db nt -query temp.txt -out gene66.out
cat genome_oneline.txt | awk '{print substr($0,450872,9402)}' > temp.txt
blastn -db nt -query temp.txt -out gene67.out
cat genome_oneline.txt | awk '{print substr($0,486000,6950)}' > temp.txt
blastn -db nt -query temp.txt -out gene68.out
cat genome_oneline.txt | awk '{print substr($0,545473,14867)}' > temp.txt
blastn -db nt -query temp.txt -out gene69.out
cat genome_oneline.txt | awk '{print substr($0,621754,55632)}' > temp.txt
blastn -db nt -query temp.txt -out gene70.out
cat genome_oneline.txt | awk '{print substr($0,557288,8063)}' > temp.txt
blastn -db nt -query temp.txt -out gene71.out
cat genome_oneline.txt | awk '{print substr($0,591701,16455)}' > temp.txt
blastn -db nt -query temp.txt -out gene72.out
cat genome_oneline.txt | awk '{print substr($0,858545,9475)}' > temp.txt
blastn -db nt -query temp.txt -out gene73.out
cat genome_oneline.txt | awk '{print substr($0,4474,6327)}' > temp.txt
blastn -db nt -query temp.txt -out gene74.out
cat genome_oneline.txt | awk '{print substr($0,39617,252)}' > temp.txt
blastn -db nt -query temp.txt -out gene75.out
cat genome_oneline.txt | awk '{print substr($0,40759,33907)}' > temp.txt
blastn -db nt -query temp.txt -out gene76.out
cat genome_oneline.txt | awk '{print substr($0,39249,5797)}' > temp.txt
blastn -db nt -query temp.txt -out gene77.out
cat genome_oneline.txt | awk '{print substr($0,45423,17369)}' > temp.txt
blastn -db nt -query temp.txt -out gene78.out
cat genome_oneline.txt | awk '{print substr($0,64815,34046)}' > temp.txt
blastn -db nt -query temp.txt -out gene79.out
cat genome_oneline.txt | awk '{print substr($0,99840,47945)}' > temp.txt
blastn -db nt -query temp.txt -out gene80.out
cat genome_oneline.txt | awk '{print substr($0,150339,4533)}' > temp.txt
blastn -db nt -query temp.txt -out gene81.out
cat genome_oneline.txt | awk '{print substr($0,158335,6741)}' > temp.txt
blastn -db nt -query temp.txt -out gene82.out
cat genome_oneline.txt | awk '{print substr($0,1050837,14352)}' > temp.txt
blastn -db nt -query temp.txt -out gene83.out
cat genome_oneline.txt | awk '{print substr($0,1115948,9413)}' > temp.txt
blastn -db nt -query temp.txt -out gene84.out
cat genome_oneline.txt | awk '{print substr($0,1125403,11096)}' > temp.txt
blastn -db nt -query temp.txt -out gene85.out
cat genome_oneline.txt | awk '{print substr($0,1186459,45250)}' > temp.txt
blastn -db nt -query temp.txt -out gene86.out
cat genome_oneline.txt | awk '{print substr($0,1241576,11805)}' > temp.txt
blastn -db nt -query temp.txt -out gene87.out
cat genome_oneline.txt | awk '{print substr($0,1254234,114892)}' > temp.txt
blastn -db nt -query temp.txt -out gene88.out
cat genome_oneline.txt | awk '{print substr($0,1397230,59356)}' > temp.txt
blastn -db nt -query temp.txt -out gene89.out
cat genome_oneline.txt | awk '{print substr($0,1442936,14078)}' > temp.txt
blastn -db nt -query temp.txt -out gene90.out
cat genome_oneline.txt | awk '{print substr($0,1473601,27417)}' > temp.txt
blastn -db nt -query temp.txt -out gene91.out
cat genome_oneline.txt | awk '{print substr($0,1485467,15882)}' > temp.txt
blastn -db nt -query temp.txt -out gene92.out
cat genome_oneline.txt | awk '{print substr($0,1524607,24229)}' > temp.txt
blastn -db nt -query temp.txt -out gene93.out
cat genome_oneline.txt | awk '{print substr($0,1593086,14369)}' > temp.txt
blastn -db nt -query temp.txt -out gene94.out
cat genome_oneline.txt | awk '{print substr($0,1553347,54963)}' > temp.txt
blastn -db nt -query temp.txt -out gene95.out
cat genome_oneline.txt | awk '{print substr($0,1676158,1076)}' > temp.txt
blastn -db nt -query temp.txt -out gene96.out
cat genome_oneline.txt | awk '{print substr($0,1692709,13731)}' > temp.txt
blastn -db nt -query temp.txt -out gene97.out
cat genome_oneline.txt | awk '{print substr($0,1780508,13364)}' > temp.txt
blastn -db nt -query temp.txt -out gene98.out
cat genome_oneline.txt | awk '{print substr($0,1835683,34133)}' > temp.txt
blastn -db nt -query temp.txt -out gene99.out
cat genome_oneline.txt | awk '{print substr($0,1815920,8001)}' > temp.txt
blastn -db nt -query temp.txt -out gene100.out
cat genome_oneline.txt | awk '{print substr($0,1826086,8184)}' > temp.txt
blastn -db nt -query temp.txt -out gene101.out
cat genome_oneline.txt | awk '{print substr($0,1835699,4780)}' > temp.txt
blastn -db nt -query temp.txt -out gene102.out
cat genome_oneline.txt | awk '{print substr($0,1849787,21252)}' > temp.txt
blastn -db nt -query temp.txt -out gene103.out
cat genome_oneline.txt | awk '{print substr($0,1874139,8666)}' > temp.txt
blastn -db nt -query temp.txt -out gene104.out
cat genome_oneline.txt | awk '{print substr($0,1872129,29837)}' > temp.txt
blastn -db nt -query temp.txt -out gene105.out
cat genome_oneline.txt | awk '{print substr($0,1918228,15007)}' > temp.txt
blastn -db nt -query temp.txt -out gene106.out
cat genome_oneline.txt | awk '{print substr($0,1936005,22538)}' > temp.txt
blastn -db nt -query temp.txt -out gene107.out
cat genome_oneline.txt | awk '{print substr($0,1945234,11555)}' > temp.txt
blastn -db nt -query temp.txt -out gene108.out
cat genome_oneline.txt | awk '{print substr($0,166285,8073)}' > temp.txt
blastn -db nt -query temp.txt -out gene109.out
cat genome_oneline.txt | awk '{print substr($0,206132,20008)}' > temp.txt
blastn -db nt -query temp.txt -out gene110.out
cat genome_oneline.txt | awk '{print substr($0,244090,13564)}' > temp.txt
blastn -db nt -query temp.txt -out gene111.out
cat genome_oneline.txt | awk '{print substr($0,1961005,76215)}' > temp.txt
blastn -db nt -query temp.txt -out gene112.out
cat genome_oneline.txt | awk '{print substr($0,2049919,55180)}' > temp.txt
blastn -db nt -query temp.txt -out gene113.out
cat genome_oneline.txt | awk '{print substr($0,2041866,159502)}' > temp.txt
blastn -db nt -query temp.txt -out gene114.out
cat genome_oneline.txt | awk '{print substr($0,2193617,7783)}' > temp.txt
blastn -db nt -query temp.txt -out gene115.out
cat genome_oneline.txt | awk '{print substr($0,2204316,19426)}' > temp.txt
blastn -db nt -query temp.txt -out gene116.out
cat genome_oneline.txt | awk '{print substr($0,2242482,3496)}' > temp.txt
blastn -db nt -query temp.txt -out gene117.out
cat genome_oneline.txt | awk '{print substr($0,2265713,6219)}' > temp.txt
blastn -db nt -query temp.txt -out gene118.out
cat genome_oneline.txt | awk '{print substr($0,2328691,2333)}' > temp.txt
blastn -db nt -query temp.txt -out gene119.out
cat genome_oneline.txt | awk '{print substr($0,2204288,6311)}' > temp.txt
blastn -db nt -query temp.txt -out gene120.out
cat genome_oneline.txt | awk '{print substr($0,2251211,9001)}' > temp.txt
blastn -db nt -query temp.txt -out gene121.out
cat genome_oneline.txt | awk '{print substr($0,363730,14715)}' > temp.txt
blastn -db nt -query temp.txt -out gene122.out
cat genome_oneline.txt | awk '{print substr($0,381277,31520)}' > temp.txt
blastn -db nt -query temp.txt -out gene123.out
cat genome_oneline.txt | awk '{print substr($0,446121,204)}' > temp.txt
blastn -db nt -query temp.txt -out gene124.out
cat genome_oneline.txt | awk '{print substr($0,582757,5471)}' > temp.txt
blastn -db nt -query temp.txt -out gene125.out
cat genome_oneline.txt | awk '{print substr($0,550426,2956)}' > temp.txt
blastn -db nt -query temp.txt -out gene126.out
cat genome_oneline.txt | awk '{print substr($0,615220,47933)}' > temp.txt
blastn -db nt -query temp.txt -out gene127.out
cat genome_oneline.txt | awk '{print substr($0,709636,116012)}' > temp.txt
blastn -db nt -query temp.txt -out gene128.out
cat genome_oneline.txt | awk '{print substr($0,894060,10604)}' > temp.txt
blastn -db nt -query temp.txt -out gene129.out
