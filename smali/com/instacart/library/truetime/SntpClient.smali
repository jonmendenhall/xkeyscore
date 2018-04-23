.class public Lcom/instacart/library/truetime/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final INDEX_ORIGINATE_TIME:I = 0x18

.field private static final INDEX_RECEIVE_TIME:I = 0x20

.field private static final INDEX_ROOT_DELAY:I = 0x4

.field private static final INDEX_ROOT_DISPERSION:I = 0x8

.field private static final INDEX_TRANSMIT_TIME:I = 0x28

.field private static final INDEX_VERSION:I = 0x0

.field private static final NTP_MODE:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field public static final RESPONSE_INDEX_DISPERSION:I = 0x5

.field public static final RESPONSE_INDEX_ORIGINATE_TIME:I = 0x0

.field public static final RESPONSE_INDEX_RECEIVE_TIME:I = 0x1

.field public static final RESPONSE_INDEX_RESPONSE_TICKS:I = 0x7

.field public static final RESPONSE_INDEX_RESPONSE_TIME:I = 0x3

.field public static final RESPONSE_INDEX_ROOT_DELAY:I = 0x4

.field public static final RESPONSE_INDEX_SIZE:I = 0x8

.field public static final RESPONSE_INDEX_STRATUM:I = 0x6

.field public static final RESPONSE_INDEX_TRANSMIT_TIME:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SntpClient"


# instance fields
.field private _cachedDeviceUptime:J

.field private _cachedSntpTime:J

.field private _sntpInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/instacart/library/truetime/SntpClient;->_sntpInitialized:Z

    return-void
.end method

.method private doubleMillis(J)D
    .locals 2

    long-to-double p1, p1

    const-wide v0, 0x4050624dd2f1a9fcL    # 65.536

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public static getClockOffset([J)J
    .locals 6

    const/4 v0, 0x1

    .line 76
    aget-wide v0, p0, v0

    const/4 v2, 0x0

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/4 v4, 0x3

    aget-wide v4, p0, v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getRoundTripDelay([J)J
    .locals 6

    const/4 v0, 0x3

    .line 67
    aget-wide v0, p0, v0

    const/4 v2, 0x0

    aget-wide v2, p0, v2

    sub-long/2addr v0, v2

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/4 v4, 0x1

    aget-wide v4, p0, v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private read([BI)J
    .locals 5

    .line 303
    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    .line 304
    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    .line 305
    aget-byte v2, p1, v2

    add-int/lit8 p2, p2, 0x3

    .line 306
    aget-byte p1, p1, p2

    .line 308
    invoke-direct {p0, v0}, Lcom/instacart/library/truetime/SntpClient;->ui(B)I

    move-result p2

    int-to-long v3, p2

    const/16 p2, 0x18

    shl-long/2addr v3, p2

    .line 309
    invoke-direct {p0, v1}, Lcom/instacart/library/truetime/SntpClient;->ui(B)I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x10

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    .line 310
    invoke-direct {p0, v2}, Lcom/instacart/library/truetime/SntpClient;->ui(B)I

    move-result p2

    int-to-long v0, p2

    const/16 p2, 0x8

    shl-long/2addr v0, p2

    add-long/2addr v3, v0

    .line 311
    invoke-direct {p0, p1}, Lcom/instacart/library/truetime/SntpClient;->ui(B)I

    move-result p1

    int-to-long p1, p1

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private readTimeStamp([BI)J
    .locals 4

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/instacart/library/truetime/SntpClient;->read([BI)J

    move-result-wide v0

    add-int/lit8 p2, p2, 0x4

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/instacart/library/truetime/SntpClient;->read([BI)J

    move-result-wide p1

    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr p1, v2

    const-wide v2, 0x100000000L

    .line 293
    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private ui(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method private writeTimeStamp([BIJ)V
    .locals 10

    const-wide/16 v0, 0x3e8

    .line 261
    div-long v2, p3, v0

    mul-long v4, v2, v0

    sub-long/2addr p3, v4

    const-wide v4, 0x83aa7e80L

    add-long/2addr v2, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v5, 0x18

    shr-long v6, v2, v5

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 269
    aput-byte v6, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/16 v6, 0x10

    shr-long v7, v2, v6

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 270
    aput-byte v7, p1, v4

    add-int/lit8 v4, p2, 0x1

    const/16 v7, 0x8

    shr-long v8, v2, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 271
    aput-byte v8, p1, p2

    add-int/lit8 p2, v4, 0x1

    const/4 v8, 0x0

    shr-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    .line 272
    aput-byte v2, p1, v4

    const-wide v2, 0x100000000L

    mul-long/2addr p3, v2

    .line 274
    div-long/2addr p3, v0

    add-int/lit8 v0, p2, 0x1

    shr-long v1, p3, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 277
    aput-byte v1, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-long v1, p3, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 278
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-long/2addr p3, v7

    long-to-int p3, p3

    int-to-byte p3, p3

    .line 279
    aput-byte p3, p1, p2

    .line 282
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p2

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double/2addr p2, v1

    double-to-int p2, p2

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-void
.end method

.method private writeVersion([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1b

    .line 251
    aput-byte v1, p1, v0

    return-void
.end method


# virtual methods
.method declared-synchronized cacheTrueTimeInfo([J)V
    .locals 2

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/instacart/library/truetime/SntpClient;->sntpTime([J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedSntpTime:J

    const/4 v0, 0x7

    .line 215
    aget-wide v0, p1, v0

    iput-wide v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedDeviceUptime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 213
    monitor-exit p0

    throw p1
.end method

.method getCachedDeviceUptime()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedDeviceUptime:J

    return-wide v0
.end method

.method declared-synchronized getCachedSntpTime()J
    .locals 2

    monitor-enter p0

    .line 232
    :try_start_0
    iget-wide v0, p0, Lcom/instacart/library/truetime/SntpClient;->_cachedSntpTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized requestTime(Ljava/lang/String;FFII)[J
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    monitor-enter p0

    const/4 v6, 0x0

    const/16 v7, 0x30

    .line 97
    :try_start_0
    new-array v7, v7, [B

    .line 98
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    .line 100
    new-instance v9, Ljava/net/DatagramPacket;

    array-length v10, v7

    const/16 v11, 0x7b

    invoke-direct {v9, v7, v10, v8, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 102
    invoke-direct {v1, v7}, Lcom/instacart/library/truetime/SntpClient;->writeVersion([B)V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/16 v8, 0x28

    .line 110
    invoke-direct {v1, v7, v8, v10, v11}, Lcom/instacart/library/truetime/SntpClient;->writeTimeStamp([BIJ)V

    .line 112
    new-instance v14, Ljava/net/DatagramSocket;

    invoke-direct {v14}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move/from16 v15, p5

    .line 113
    :try_start_1
    invoke-virtual {v14, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 114
    invoke-virtual {v14, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/16 v6, 0x8

    .line 119
    new-array v9, v6, [J

    .line 120
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v6, v7

    invoke-direct {v15, v7, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 121
    invoke-virtual {v14, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const/4 v6, 0x7

    aput-wide v16, v9, v6

    const/16 v15, 0x18

    .line 131
    invoke-direct {v1, v7, v15}, Lcom/instacart/library/truetime/SntpClient;->readTimeStamp([BI)J

    move-result-wide v18

    const/16 v15, 0x20

    .line 132
    invoke-direct {v1, v7, v15}, Lcom/instacart/library/truetime/SntpClient;->readTimeStamp([BI)J

    move-result-wide v20

    .line 133
    invoke-direct {v1, v7, v8}, Lcom/instacart/library/truetime/SntpClient;->readTimeStamp([BI)J

    move-result-wide v22

    sub-long v16, v16, v12

    add-long v10, v10, v16

    const/4 v8, 0x0

    aput-wide v18, v9, v8

    const/4 v12, 0x1

    aput-wide v20, v9, v12

    const/4 v13, 0x2

    aput-wide v22, v9, v13

    const/4 v13, 0x3

    aput-wide v10, v9, v13

    const/4 v15, 0x4

    .line 144
    invoke-direct {v1, v7, v15}, Lcom/instacart/library/truetime/SntpClient;->read([BI)J

    move-result-wide v16

    aput-wide v16, v9, v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v24, v14

    .line 145
    :try_start_2
    aget-wide v13, v9, v15

    invoke-direct {v1, v13, v14}, Lcom/instacart/library/truetime/SntpClient;->doubleMillis(J)D

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v25, v9

    float-to-double v8, v3

    cmpl-double v8, v13, v8

    if-lez v8, :cond_0

    .line 147
    :try_start_3
    new-instance v4, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    const-string v5, "Invalid response from NTP server. %s violation. %f [actual] > %f [expected]"

    const-string v6, "root_delay"

    double-to-float v7, v13

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v24

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object/from16 v6, v24

    goto/16 :goto_3

    :cond_0
    const/16 v3, 0x8

    .line 154
    :try_start_4
    invoke-direct {v1, v7, v3}, Lcom/instacart/library/truetime/SntpClient;->read([BI)J

    move-result-wide v8

    const/4 v3, 0x5

    aput-wide v8, v25, v3

    .line 155
    aget-wide v8, v25, v3

    invoke-direct {v1, v8, v9}, Lcom/instacart/library/truetime/SntpClient;->doubleMillis(J)D

    move-result-wide v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    float-to-double v13, v4

    cmpl-double v13, v8, v13

    if-lez v13, :cond_1

    .line 157
    :try_start_5
    new-instance v3, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    const-string v5, "Invalid response from NTP server. %s violation. %f [actual] > %f [expected]"

    const-string v6, "root_dispersion"

    double-to-float v7, v8

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    const/4 v4, 0x0

    .line 164
    :try_start_6
    aget-byte v8, v7, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    and-int/lit8 v4, v8, 0x7

    int-to-byte v4, v4

    if-eq v4, v15, :cond_2

    if-eq v4, v3, :cond_2

    .line 166
    :try_start_7
    new-instance v3, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "untrusted mode value for TrueTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 169
    :cond_2
    :try_start_8
    aget-byte v3, v7, v12

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    const/4 v4, 0x6

    aput-wide v8, v25, v4

    if-lt v3, v12, :cond_8

    const/16 v6, 0xf

    if-le v3, v6, :cond_3

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    .line 175
    aget-byte v3, v7, v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    shr-int/2addr v3, v4

    const/4 v4, 0x3

    and-int/2addr v3, v4

    int-to-byte v3, v3

    if-ne v3, v4, :cond_4

    .line 177
    :try_start_9
    new-instance v3, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    const-string v4, "unsynchronized server responded for TrueTime"

    invoke-direct {v3, v4}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_4
    sub-long v10, v10, v18

    sub-long v22, v22, v20

    sub-long v10, v10, v22

    .line 180
    :try_start_a
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    long-to-double v3, v3

    int-to-double v6, v5

    cmpl-double v6, v3, v6

    if-ltz v6, :cond_5

    .line 182
    :try_start_b
    new-instance v6, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    const-string v7, "%s too large for comfort %f [actual] >= %f [expected]"

    const-string v8, "server_response_delay"

    double-to-float v3, v3

    int-to-float v4, v5

    invoke-direct {v6, v7, v8, v3, v4}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    throw v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 189
    :cond_5
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v18, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    const-wide/16 v5, 0x2710

    cmp-long v5, v3, v5

    if-ltz v5, :cond_6

    .line 191
    :try_start_d
    new-instance v5, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request was sent more than 10 seconds back "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 195
    :cond_6
    :try_start_e
    iput-boolean v12, v1, Lcom/instacart/library/truetime/SntpClient;->_sntpInitialized:Z

    .line 196
    sget-object v3, Lcom/instacart/library/truetime/SntpClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---- SNTP successful response from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v25

    .line 200
    invoke-virtual {v1, v3}, Lcom/instacart/library/truetime/SntpClient;->cacheTrueTimeInfo([J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v24, :cond_7

    move-object/from16 v4, v24

    .line 208
    :try_start_f
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 201
    :cond_7
    monitor-exit p0

    return-object v3

    :cond_8
    :goto_0
    move-object/from16 v4, v24

    .line 172
    :try_start_10
    new-instance v5, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "untrusted stratum value for TrueTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/instacart/library/truetime/InvalidNtpServerResponseException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v4, v24

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v4, v24

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v4, v14

    :goto_1
    move-object v2, v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v4, v14

    :goto_2
    move-object v3, v0

    move-object v6, v4

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v4, v6

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v3, v0

    .line 204
    :goto_3
    :try_start_11
    sget-object v4, Lcom/instacart/library/truetime/SntpClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "---- SNTP request failed for "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/instacart/library/truetime/TrueLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :goto_4
    if-eqz v4, :cond_9

    .line 208
    :try_start_12
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    goto :goto_6

    :cond_9
    :goto_5
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 92
    :goto_6
    monitor-exit p0

    throw v2
.end method

.method sntpTime([J)J
    .locals 4

    .line 219
    invoke-static {p1}, Lcom/instacart/library/truetime/SntpClient;->getClockOffset([J)J

    move-result-wide v0

    const/4 v2, 0x3

    .line 220
    aget-wide v2, p1, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method declared-synchronized wasInitialized()Z
    .locals 1

    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/instacart/library/truetime/SntpClient;->_sntpInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
