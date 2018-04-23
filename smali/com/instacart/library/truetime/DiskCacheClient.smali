.class Lcom/instacart/library/truetime/DiskCacheClient;
.super Ljava/lang/Object;
.source "DiskCacheClient.java"


# static fields
.field private static final KEY_CACHED_BOOT_TIME:Ljava/lang/String; = "com.instacart.library.truetime.cached_boot_time"

.field private static final KEY_CACHED_DEVICE_UPTIME:Ljava/lang/String; = "com.instacart.library.truetime.cached_device_uptime"

.field private static final KEY_CACHED_SHARED_PREFS:Ljava/lang/String; = "com.instacart.library.truetime.shared_preferences"

.field private static final KEY_CACHED_SNTP_TIME:Ljava/lang/String; = "com.instacart.library.truetime.cached_sntp_time"

.field private static final TAG:Ljava/lang/String; = "DiskCacheClient"


# instance fields
.field private _sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private sharedPreferencesUnavailable()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 89
    sget-object v0, Lcom/instacart/library/truetime/DiskCacheClient;->TAG:Ljava/lang/String;

    const-string v1, "Cannot use disk caching strategy for TrueTime. SharedPreferences unavailable"

    invoke-static {v0, v1}, Lcom/instacart/library/truetime/TrueLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method cacheTrueTimeInfo(Lcom/instacart/library/truetime/SntpClient;)V
    .locals 10

    .line 33
    invoke-direct {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->sharedPreferencesUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/instacart/library/truetime/SntpClient;->getCachedSntpTime()J

    move-result-wide v0

    .line 38
    invoke-virtual {p1}, Lcom/instacart/library/truetime/SntpClient;->getCachedDeviceUptime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 41
    sget-object p1, Lcom/instacart/library/truetime/DiskCacheClient;->TAG:Ljava/lang/String;

    const-string v6, "Caching true time info to disk sntp [%s] device [%s] boot [%s]"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 42
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-static {p1, v6}, Lcom/instacart/library/truetime/TrueLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v6, "com.instacart.library.truetime.cached_boot_time"

    invoke-interface {p1, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    iget-object p1, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v4, "com.instacart.library.truetime.cached_device_uptime"

    invoke-interface {p1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    iget-object p1, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "com.instacart.library.truetime.cached_sntp_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method clearCachedInfo(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.instacart.library.truetime.shared_preferences"

    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method enableDiskCaching(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.instacart.library.truetime.shared_preferences"

    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method getCachedDeviceUptime()J
    .locals 4

    .line 70
    invoke-direct {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->sharedPreferencesUnavailable()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "com.instacart.library.truetime.cached_device_uptime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getCachedSntpTime()J
    .locals 4

    .line 78
    invoke-direct {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->sharedPreferencesUnavailable()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "com.instacart.library.truetime.cached_sntp_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method isTrueTimeCachedFromAPreviousBoot()Z
    .locals 7

    .line 54
    invoke-direct {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->sharedPreferencesUnavailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/instacart/library/truetime/DiskCacheClient;->_sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "com.instacart.library.truetime.cached_boot_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    return v1

    .line 64
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instacart/library/truetime/DiskCacheClient;->getCachedDeviceUptime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-gez v0, :cond_2

    move v1, v2

    .line 65
    :cond_2
    sget-object v0, Lcom/instacart/library/truetime/DiskCacheClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- boot time changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/instacart/library/truetime/TrueLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 v0, v1, 0x1

    return v0
.end method
