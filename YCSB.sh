# make clean
# make BIND_ROCKSDB=1 EXTRA_CXXFLAGS=-I/home/yjn/Desktop/VLDB/rocksdb/include EXTRA_LDFLAGS="-L/home/yjn/Desktop/VLDB/rocksdb -lsnappy"
# echo ">>>>>>>>>>>>> ROCKSDB <<<<<<<<<<<<<<<<"

# rm -r /tmp/*
# echo "WORKLOAD A"
# ./ycsb -load -run -db rocksdb -P workloads/workloada -P rocksdb/rocksdb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD B"
# ./ycsb -load -run -db rocksdb -P workloads/workloadb -P rocksdb/rocksdb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD C"
# ./ycsb -load -run -db rocksdb -P workloads/workloadc -P rocksdb/rocksdb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD D"
# ./ycsb -load -run -db rocksdb -P workloads/workloadd -P rocksdb/rocksdb.properties -s

# # rm -r /tmp/*
# # echo "WORKLOAD E"
# # ./ycsb -load -run -db rocksdb -P workloads/workloade -P rocksdb/rocksdb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD F"
# ./ycsb -load -run -db rocksdb -P workloads/workloadf -P rocksdb/rocksdb.properties -s



# make clean
# make BIND_LEVELDB=1 EXTRA_CXXFLAGS=-I/home/yjn/Desktop/VLDB/leveldb EXTRA_LDFLAGS="-L/home/yjn/Desktop/VLDB/leveldb/build -lsnappy"
# echo ">>>>>>>>>>>>> LEVELDB <<<<<<<<<<<<<<<<"

# rm -r /tmp/*
# echo "WORKLOAD A"
# ./ycsb -load -run -db leveldb -P workloads/workloada -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD B"
# ./ycsb -load -run -db leveldb -P workloads/workloadb -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD C"
# ./ycsb -load -run -db leveldb -P workloads/workloadc -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD D"
# ./ycsb -load -run -db leveldb -P workloads/workloadd -P leveldb/leveldb.properties -s

# # rm -r /tmp/*
# # echo "WORKLOAD E"
# # ./ycsb -load -run -db leveldb -P workloads/workloade -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD F"
# ./ycsb -load -run -db leveldb -P workloads/workloadf -P leveldb/leveldb.properties -s



make clean
make BIND_LEVELDB=1 EXTRA_CXXFLAGS=-I/home/yjn/Desktop/VLDB/leader-tree EXTRA_LDFLAGS="-L/home/yjn/Desktop/VLDB/leader-tree/build -lsnappy"
echo ">>>>>>>>>>>>> LEADER-TREE <<<<<<<<<<<<<<<<"

rm -r /tmp/*
echo "WORKLOAD A"
./ycsb -load -run -db leveldb -P workloads/workloada -P leveldb/leveldb.properties -s

rm -r /tmp/*
echo "WORKLOAD B"
./ycsb -load -run -db leveldb -P workloads/workloadb -P leveldb/leveldb.properties -s

rm -r /tmp/*
echo "WORKLOAD C"
./ycsb -load -run -db leveldb -P workloads/workloadc -P leveldb/leveldb.properties -s

rm -r /tmp/*
echo "WORKLOAD D"
./ycsb -load -run -db leveldb -P workloads/workloadd -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD E"
# ./ycsb -load -run -db leveldb -P workloads/workloade -P leveldb/leveldb.properties -s

rm -r /tmp/*
echo "WORKLOAD F"
./ycsb -load -run -db leveldb -P workloads/workloadf -P leveldb/leveldb.properties -s

rm -r /tmp/*



# make clean
# make BIND_LEVELDB=1 EXTRA_CXXFLAGS=-I/home/yjn/Desktop/VLDB/Bourbon EXTRA_LDFLAGS="-L/home/yjn/Desktop/VLDB/Bourbon/build -lsnappy"
# echo ">>>>>>>>>>>>> BOURBON <<<<<<<<<<<<<<<<"

# rm -r /tmp/*
# echo "WORKLOAD A"
# ./ycsb -load -run -db leveldb -P workloads/workloada -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD B"
# ./ycsb -load -run -db leveldb -P workloads/workloadb -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD C"
# ./ycsb -load -run -db leveldb -P workloads/workloadc -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD D"
# ./ycsb -load -run -db leveldb -P workloads/workloadd -P leveldb/leveldb.properties -s

# # rm -r /tmp/*
# # echo "WORKLOAD E"
# # ./ycsb -load -run -db leveldb -P workloads/workloade -P leveldb/leveldb.properties -s

# rm -r /tmp/*
# echo "WORKLOAD F"
# ./ycsb -load -run -db leveldb -P workloads/workloadf -P leveldb/leveldb.properties -s

# rm -r /tmp/*
