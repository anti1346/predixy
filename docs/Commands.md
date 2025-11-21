# Supported redis commands

## Bitmap
| Command | Note |
| :---- | ---- |
|BITCOUNT| |
|BITFIELD| |
|BITFIELD_RO| |
|BITOP| |
|BITPOS| |
|GETBIT| |
|SETBIT| |

## Cluster management
| Command | Note |
| :---- | ---- |
|CLUSTER INFO| |
|CLUSTER NODES| |
|CLUSTER SLOTS| |

## Connection management
| Command | Note |
| :---- | ---- |
|AUTH| |
|CLIENT LIST| |
|CLIENT KILL| just kill by addr|
|CLIENT GETNAME| |
|CLIENT SETNAME| max name length is 256 bytes|
|ECHO| |
|PING| |
|QUIT| |
|RESET| |
|SELECT| |

## Generic
| Command | Note |
| :---- | ---- |
|DEL| [Note1](#Note1) |
|DUMP| |
|EXISTS| [Note1](#Note1) |
|EXPIRE| |
|EXPIREAT| |
|EXPIRETIME| |
|KEYS| |
|MIGRATE| |
|MOVE| |
|OBJECT| |
|PERSIST| |
|PEXPIRE| |
|PEXPIREAT| |
|PEXPIRETIME| |
|PTTL| |
|RANDOMKEY| |
|RENAME| |
|RENAMENX| |
|RESTORE| |
|SCAN| The redis masters can't over 1024 |
|SORT| |
|SORT_RO| |
|TOUCH| [Note1](#Note1) |
|TTL| |
|TYPE| |
|UNLINK| [Note1](#Note1) |

## Geospatial indices
| Command | Note |
| :---- | ---- |
|GEOADD| |
|GEODIST| |
|GEOHASH| |
|GEOPOS| |
|GEORADIUS| [Note5](#Note5)|
|GEORADIUS_RO| |
|GEORADIUSBYMEMBER| [Note5](#Note5)|
|GEORADIUSBYMEMBER_RO| |
|GEOSEARCH| |
|GEOSEARCHSTORE| [Note5](#Note5)|

## Hash
| Command | Note |
| :---- | ---- |
|HDEL| |
|HEXISTS| |
|HGET| |
|HGETALL| |
|HINCRBY| |
|HINCRBYFLOAT| |
|HKEYS| |
|HLEN| |
|HMGET| |
|HMSET| |
|HRANDFIELD| |
|HSCAN| |
|HSET| |
|HSETNX| |
|HSTRLEN| |
|HVALS| |

## HyperLogLog
| Command | Note |
| :---- | ---- |
|PFADD| |
|PFCOUNT| |
|PFMERGE| |

## List
| Command | Note |
| :---- | ---- |
|BLMOVE| [Note4](#Note4) [Note5](#Note5)|
|BLMPOP| [Note4](#Note4) [Note5](#Note5)|
|BLPOP| [Note4](#Note4) |
|BRPOP| [Note4](#Note4) |
|BRPOPLPUSH| [Note4](#Note4) |
|LINDEX| |
|LINSERT| |
|LLEN| |
|LMOVE| [Note5](#Note5)|
|LMPOP| [Note5](#Note5)|
|LPOP| |
|LPOS| |
|LPUSH| |
|LPUSHX| |
|LRANGE| |
|LREM| |
|LSET| |
|LTRIM| |
|RPOP| |
|RPOPLPUSH| |
|RPUSH| |
|RPUSHX| |

## Pub/Sub
| Command | Note |
| :---- | ---- |
|PSUBSCRIBE| |
|PUBLISH| |
|PUBSUB CHANNELS| |
|PUBSUB NUMPAT| |
|PUBSUB NUMSUB| |
|PUBSUB SHARDCHANNELS| |
|PUBSUB SHARDNUMSUB| |
|PUNSUBSCRIBE| |
|SUBSCRIBE| |
|UNSUBSCRIBE| |
|SSUBSCRIBE| |
|SPUBLISH| |
|SUNSUBSCRIBE| |

## Script and functions
| Command | Note |
| :---- | ---- |
|EVAL| |
|EVAL_RO| |
|EVALSHA| |
|EVALSHA_RO| |
|SCRIPT EXISTS| [Note2](#Note2) |
|SCRIPT FLUSH| [Note2](#Note2) |
|SCRIPT KILL| [Note2](#Note2) |
|SCRIPT LOAD| [Note2](#Note2) |
|FCALL| |
|FCALL_RO| |
|FUNCTION DELETE| |
|FUNCTION DUMP| |
|FUNCTION FLUSH| |
|FUNCTION KILL| |
|FUNCTION LIST| |
|FUNCTION LOAD| |
|FUNCTION RESTORE| |
|FUNCTION STATS| |

## Server management
| Command | Note |
| :---- | ---- |
|COMMAND| |
|COMMAND COUNT| |
|COMMAND GETKEYS| |
|COMMAND INFO| |
|CONFIG GET| [Note3](#Note3) |
|CONFIG RESETSTAT| [Note2](#Note2) |
|CONFIG REWRITE| [Note2](#Note2) |
|CONFIG SET| [Note3](#Note2) |
|DBSIZE| [Note3](#Note3) |
|FLUSHALL| |
|FLUSHDB| |
|INFO| [Note3](#Note3) |
|LASTSAVE| |
|LOLWUT| |
|MEMORY DOCTOR| |
|MEMORY HELP| |
|MEMORY MALLOC-STATS| |
|MEMORY PURGE| |
|MEMORY STATS| |
|MEMORY USAGE| |
|MONITOR| |
|ROLE| Always return master |
|SHUTDOWN| |
|SLOWLOG GET| |
|SLOWLOG LEN| |
|SLOWLOG RESET| |
|SWAPDB| |
|TIME| |

## Set
| Command | Note |
| :---- | ---- |
|SADD| |
|SCARD| |
|SDIFF| |
|SDIFFSTORE| |
|SINTER| |
|SINTERCARD| |
|SINTERSTORE| |
|SISMEMBER| |
|SMEMBERS| |
|SMISMEMBER| |
|SMOVE| |
|SPOP| |
|SRANDMEMBER| |
|SREM| |
|SSCAN| |
|SUNION| |
|SUNIONSTORE| |

## Sorted set
| Command | Note |
| :---- | ---- |
|BZMPOP| [Note4](#Note4) [Note5](#Note5)|
|BZPOPMAX| [Note4](#Note4)|
|BZPOPMIN| [Note4](#Note4)|
|ZADD| |
|ZCARD| |
|ZCOUNT| |
|ZDIFF| |
|ZDIFFSTORE| [Note5](#Note5)|
|ZINCRBY| |
|ZINTER| [Note5](#Note5)|
|ZINTERCARD| [Note5](#Note5)|
|ZINTERSTORE| [Note5](#Note5)|
|ZLEXCOUNT| |
|ZMPOP| [Note5](#Note5)|
|ZMSCORE| |
|ZPOPMAX| |
|ZPOPMIN| |
|ZRANDMEMBER| |
|ZRANGE| |
|ZRANGEBYLEX| |
|ZRANGEBYSCORE| |
|ZRANGESTORE| [Note5](#Note5)|
|ZRANK| |
|ZREM| |
|ZREMRANGEBYLEX| |
|ZREMRANGEBYRANK| |
|ZREMRANGEBYSCORE| |
|ZREVRANGE| |
|ZREVRANGEBYLEX| |
|ZREVRANGEBYSCORE| |
|ZREVRANK| |
|ZSCAN| |
|ZSCORE| |
|ZUNION| [Note5](#Note5)|
|ZUNIONSTORE| [Note5](#Note5)|

## Stream
| Command | Note |
| :---- | ---- |
|XACK| |
|XADD| |
|XAUTOCLAIM| |
|XCLAIM| |
|XDEL| |
|XGROUP| |
|XINFO| |
|XLEN| |
|XPENDING| |
|XRANGE| |
|XREAD| |
|XBLOCKREAD| [Note4](#Note4) |
|XREADGROUP| |
|XBLOCKREADGROUP| [Note4](#Note4) |
|XREVRANGE| |
|XTRIM| |

## String
| Command | Note |
| :---- | ---- |
|APPEND| |
|DECR| |
|DECRBY| |
|GET| |
|GETDEL| |
|GETEX| |
|GETRANGE| |
|GETSET| |
|INCR| |
|INCRBY| |
|INCRBYFLOAT| |
|LCS| |
|MGET| [Note1](#Note1) |
|MSET| [Note1](#Note1) |
|MSETNX| [Note1](#Note1) |
|PSETEX| |
|SET| |
|SETEX| |
|SETNX| |
|SETRANGE| |
|STRLEN| |
|SUBSTR| |

## Transactions
| Command | Note |
| :---- | ---- |
|WATCH| | 
|UNWATCH| |
|MULTI| |
|EXEC| |
|DISCARD| |

Can't cross slot/shard

## Note

### Note1
Predixy will split one command with multi-keys to multi command with single key. 

### Note2
Predixy will send the command to all redis nodes, someone response error will lead the command response error

### Note3
Predixy will send the command to all redis nodes, and merge the response to client

### Note4
The block command don't use in the pipeline

### Note5
If the command with multi-keys, the client must keep all the keys in the same slot/shard
