.class public Lcom/instacart/library/truetime/TrueTime;
.super Ljava/lang/Object;
.source "TrueTime.java"


# static fields
.field private static final DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

.field private static final INSTANCE:Lcom/instacart/library/truetime/TrueTime;

.field private static final SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

.field private static final TAG:Ljava/lang/String; = "TrueTime"

.field private static _rootDelayMax:F = 100.0f

.field private static _rootDispersionMax:F = 100.0f

.field private static _serverResponseDelayMax:I = 0xc8

.field private static _udpSocketTimeoutInMillis:I = 0x7530


# instance fields
.field private _ntpHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/instacart/library/truetime/TrueTime;

    invoke-direct {v0}, Lcom/instacart/library/truetime/TrueTime;-><init>()V

    sput-object v0, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;

    .line 14
    new-instance v0, Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-direct {v0}, Lcom/instacart/library/truetime/DiskCacheClient;-><init>()V

    sput-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    .line 15
    new-instance v0, Lcom/instacart/library/truetime/SntpClient;

    invoke-direct {v0}, Lcom/instacart/library/truetime/SntpClient;-><init>()V

    sput-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.us.pool.ntp.org"

    .line 22
    iput-object v0, p0, Lcom/instacart/library/truetime/TrueTime;->_ntpHost:Ljava/lang/String;

    return-void
.end method

.method private static _getCachedDeviceUptime()J
    .locals 4

    .line 142
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->wasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    .line 143
    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->getCachedDeviceUptime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    .line 144
    invoke-virtual {v0}, Lcom/instacart/library/truetime/DiskCacheClient;->getCachedDeviceUptime()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 147
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "expected device time from last boot to be cached. couldn\'t find it."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v0
.end method

.method private static _getCachedSntpTime()J
    .locals 4

    .line 154
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->wasInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    .line 155
    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->getCachedSntpTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    .line 156
    invoke-virtual {v0}, Lcom/instacart/library/truetime/DiskCacheClient;->getCachedSntpTime()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 159
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "expected SNTP time from last boot to be cached. couldn\'t find it."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v0
.end method

.method public static build()Lcom/instacart/library/truetime/TrueTime;
    .locals 1

    .line 45
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;

    return-object v0
.end method

.method public static clearCachedInfo(Landroid/content/Context;)V
    .locals 1

    .line 49
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-virtual {v0, p0}, Lcom/instacart/library/truetime/DiskCacheClient;->clearCachedInfo(Landroid/content/Context;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/SntpClient;->wasInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-virtual {v0}, Lcom/instacart/library/truetime/DiskCacheClient;->isTrueTimeCachedFromAPreviousBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static now()Ljava/util/Date;
    .locals 6

    .line 28
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to call init() on TrueTime at least once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->_getCachedSntpTime()J

    move-result-wide v0

    .line 33
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->_getCachedDeviceUptime()J

    move-result-wide v2

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 37
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method static declared-synchronized saveTrueTimeInfoToDisk()V
    .locals 3

    const-class v0, Lcom/instacart/library/truetime/TrueTime;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v1}, Lcom/instacart/library/truetime/SntpClient;->wasInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->TAG:Ljava/lang/String;

    const-string v2, "---- SNTP client not available. not caching TrueTime info in disk"

    invoke-static {v1, v2}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v0

    return-void

    .line 134
    :cond_0
    :try_start_1
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    sget-object v2, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v1, v2}, Lcom/instacart/library/truetime/DiskCacheClient;->cacheTrueTimeInfo(Lcom/instacart/library/truetime/SntpClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 129
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method cacheTrueTimeInfo([J)V
    .locals 1

    .line 138
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    invoke-virtual {v0, p1}, Lcom/instacart/library/truetime/SntpClient;->cacheTrueTimeInfo([J)V

    return-void
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/instacart/library/truetime/TrueTime;->_ntpHost:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/instacart/library/truetime/TrueTime;->initialize(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->saveTrueTimeInfoToDisk()V

    return-void
.end method

.method protected initialize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/instacart/library/truetime/TrueTime;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->TAG:Ljava/lang/String;

    const-string v0, "---- TrueTime already initialized from previous boot/init"

    invoke-static {p1, v0}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instacart/library/truetime/TrueTime;->requestTime(Ljava/lang/String;)[J

    return-void
.end method

.method requestTime(Ljava/lang/String;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->SNTP_CLIENT:Lcom/instacart/library/truetime/SntpClient;

    sget v2, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    sget v3, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    sget v4, Lcom/instacart/library/truetime/TrueTime;->_serverResponseDelayMax:I

    sget v5, Lcom/instacart/library/truetime/TrueTime;->_udpSocketTimeoutInMillis:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/instacart/library/truetime/SntpClient;->requestTime(Ljava/lang/String;FFII)[J

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized withConnectionTimeout(I)Lcom/instacart/library/truetime/TrueTime;
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    sput p1, Lcom/instacart/library/truetime/TrueTime;->_udpSocketTimeoutInMillis:I

    .line 68
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized withLoggingEnabled(Z)Lcom/instacart/library/truetime/TrueTime;
    .locals 0

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-static {p1}, Lcom/instacart/library/truetime/TrueLog;->setLoggingEnabled(Z)V

    .line 107
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized withNtpHost(Ljava/lang/String;)Lcom/instacart/library/truetime/TrueTime;
    .locals 0

    monitor-enter p0

    .line 101
    :try_start_0
    iput-object p1, p0, Lcom/instacart/library/truetime/TrueTime;->_ntpHost:Ljava/lang/String;

    .line 102
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 100
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized withRootDelayMax(F)Lcom/instacart/library/truetime/TrueTime;
    .locals 5

    monitor-enter p0

    .line 72
    :try_start_0
    sget v0, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 73
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "The recommended max rootDelay value is %f. You are setting it at %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    .line 75
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 73
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/instacart/library/truetime/TrueLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    sput p1, Lcom/instacart/library/truetime/TrueTime;->_rootDelayMax:F

    .line 80
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized withRootDispersionMax(F)Lcom/instacart/library/truetime/TrueTime;
    .locals 5

    monitor-enter p0

    .line 84
    :try_start_0
    sget v0, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "The recommended max rootDispersion value is %f. You are setting it at %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    .line 87
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 85
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/instacart/library/truetime/TrueTime;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/instacart/library/truetime/TrueLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    sput p1, Lcom/instacart/library/truetime/TrueTime;->_rootDispersionMax:F

    .line 92
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized withServerResponseDelayMax(I)Lcom/instacart/library/truetime/TrueTime;
    .locals 0

    monitor-enter p0

    .line 96
    :try_start_0
    sput p1, Lcom/instacart/library/truetime/TrueTime;->_serverResponseDelayMax:I

    .line 97
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 95
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized withSharedPreferences(Landroid/content/Context;)Lcom/instacart/library/truetime/TrueTime;
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    sget-object v0, Lcom/instacart/library/truetime/TrueTime;->DISK_CACHE_CLIENT:Lcom/instacart/library/truetime/DiskCacheClient;

    invoke-virtual {v0, p1}, Lcom/instacart/library/truetime/DiskCacheClient;->enableDiskCaching(Landroid/content/Context;)V

    .line 63
    sget-object p1, Lcom/instacart/library/truetime/TrueTime;->INSTANCE:Lcom/instacart/library/truetime/TrueTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 61
    monitor-exit p0

    throw p1
.end method
