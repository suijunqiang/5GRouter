# How to build 
1, cmake .
2, vim make-libmqttclient.sh
    add -lcurl
    INC =   -lpthread \\
                <br>-lcurl \\</br>
        -I../common \\
        -I../common/log \\
        -I../network/mbedtls/include \\
        -I../network/mbedtls/include/mbedtls \\
        -I../network/mbedtls/wrapper \\
        -I../mqtt \\
        -I../mqttclient \\
        -I../network \\
        -I../platform/linux \\
        -I../test
3, vim CMakeLists.txt
    add 2 line of curl 
    set(CMAKE_C_FLAGS "-Wall")
    set(CMAKE_C_FLAGS "-lpthread")
    set(CMAKE_C_FLAGS <br>"-lcurl"</br>)
    set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS} -O0 -g -ggdb")
    set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS} -O3 -DNDEBUG")

    if(CMAKE_COMPILER_IS_GNUCXX)
        set(CMAKE_CXX_FLAGS "-std=c++11")
        set(CMAKE_CXX_FLAGS "-lpthread")
        set(CMAKE_CXX_FLAGS <br>"-lcurl"</br>)
        set(CMAKE_CXX_FLAGS "-Wall")
        set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} -O0 -g -ggdb")
        set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} -O3")
    endif(CMAKE_COMPILER_IS_GNUCXX)

