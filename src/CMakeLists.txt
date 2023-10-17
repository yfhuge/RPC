set(SRC_LIST logger.cc 
            mcrpcapplication.cc 
            mcrpcchannel.cc 
            mcrpcconfig.cc 
            mcrpcheader.pb.cc 
            mcrpccontroller.cc 
            mcrpcprovide.cc 
            zookeeperutil.cc)
            
add_library(mcrpc ${SRC_LIST})
target_link_libraries(mcrpc muduo_net muduo_base pthread zookeeper_mt)