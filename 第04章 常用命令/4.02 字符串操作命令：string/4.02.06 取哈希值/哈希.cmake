string(MD5 res "abc")
message("${res}") # 输出：900150983cd24fb0d6963f7d28e17f72

string(SHA1 res "abc")
message("${res}") # 输出：a9993e364706816aba3e25717850c26c9cd0d89d

string(SHA224 res "abc")
message("${res}") # 输出：23097d223405d8228642a477bda255b32aadbce4bda0b3f7e36c9da7

string(SHA256 res "abc")
message("${res}") # 输出：ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad

string(SHA384 res "abc")
message("${res}") # 输出：cb00753f45a35e8bb5a03d699ac65007272c32ab0eded1631a8b605a43ff5bed8086072ba1e7cc2358baeca134c825a7

string(SHA512 res "abc")
message("${res}") # 输出：ddaf35a193617abacc417349ae20413112e6fa4e89a97ea20a9eeee64b55d39a2192992a274fc1a836ba3c23a3feebbd454d4423643ce80e2a9ac94fa54ca49f

string(SHA3_224 res "abc")
message("${res}") # 输出：e642824c3f8cf24ad09234ee7d3c766fc9a3a5168d0c94ad73b46fdf

string(SHA3_256 res "abc")
message("${res}") # 输出：3a985da74fe225b2045c172d6bd390bd855f086e3e9d525b46bfe24511431532

string(SHA3_384 res "abc")
message("${res}") # 输出：ec01498288516fc926459f58e2c6ad8df9b473cb0fc08c2596da7cf0e49be4b298d88cea927ac7f539f1edf228376d25

string(SHA3_512 res "abc")
message("${res}") # 输出：b751850b1a57168a5693cd924b6b096e08f621827444f70d884f5d0240d2712e10e116e9192af3c91a7ec57647e3934057340b4cf408d5a56592f8274eec53f0
