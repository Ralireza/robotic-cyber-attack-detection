# robotic-cyber-attack-detection
implement a paper in Matlab: Detection of Cyber-attacks to indoor real time localization systems for autonomous robots

original dataset :
[ this link ](http://robotica.unileon.es/index.php/Benchmark_dataset_for_training/testing_of_Machine_Learning_Models_to_detect_cyber-attacks_to_an_indoor_real_time_localization_system_for_autonomous_robots)

## result for DOS attack
| classifier | accuracy | precision | recall | Fscore |
| --- | --- | --- | --- | --- | 
"knn" | 0.68413 | 0.61538 | 0.97125 | 0.75341
"rf"     |     0.73651  |   0.65806    |  0.97764 |   0.78663
"ab"     |      0.4619  |   0.45638   |    0.4345  |  0.44517
"nb"     |     0.96508  |   0.99322   |    0.9361  |  0.96382
"lda"    |     0.97778  |         1   |   0.95527  |  0.97712
"lr"     |     0.49683  |   0.49683   |         1  | 0.66384
"cart"   |     0.73651  |   0.65806   |   0.97764   | 0.78663


## result for spoofing attack
| classifier | accuracy | precision | recall | Fscore |
| --- | --- | --- | --- | --- | 
"knn"    |     0.71609  |   0.63489 |           1 |   0.77667
"rf"     |     0.98265   |  0.96605  |          1 |   0.98273
"ab"      |    0.99842    | 0.99682  |          1 |   0.99841
"nb"       |   0.96215  |   0.92878   |         1 |   0.96308
"lda"       |  0.77918   |  0.69265   |   0.99361 |   0.81627
"lr"      |    0.49369  |   0.49369   |         1 |   0.66103
"cart"    |    0.91956   |  0.85989   |         1  |  0.92467
