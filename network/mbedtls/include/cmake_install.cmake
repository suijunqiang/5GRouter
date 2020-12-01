# Install script for directory: /home/sui/src/kevin/mqttclient-master/network/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/aes.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/aesni.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/arc4.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/aria.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/asn1.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/asn1write.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/base64.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/bignum.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/blowfish.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/bn_mul.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/camellia.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ccm.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/certs.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/chacha20.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/chachapoly.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/check_config.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/cipher.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/cipher_internal.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/cmac.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/compat-1.3.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/config.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/debug.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/des.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/dhm.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ecdh.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ecdsa.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ecjpake.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ecp.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ecp_internal.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/entropy.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/entropy_poll.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/error.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/gcm.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/havege.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/hkdf.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/md.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/md2.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/md4.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/md5.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/md_internal.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/net.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/net_sockets.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/nist_kw.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/oid.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/padlock.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/pem.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/pk.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/pk_internal.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/pkcs11.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/pkcs12.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/pkcs5.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/platform.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/platform_time.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/platform_util.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/poly1305.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ripemd160.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/rsa.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/rsa_internal.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/sha1.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/sha256.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/sha512.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ssl.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ssl_internal.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/threading.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/timing.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/version.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/x509.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/x509_crl.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/x509_crt.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/x509_csr.h"
    "/home/sui/src/kevin/mqttclient-master/network/mbedtls/include/mbedtls/xtea.h"
    )
endif()

