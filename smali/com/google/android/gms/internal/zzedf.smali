.class public final Lcom/google/android/gms/internal/zzedf;
.super Lcom/google/android/gms/internal/zzedc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzedc;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized setLogLevel(Lcom/google/firebase/database/Logger$Level;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvx()V

    sget-object v0, Lcom/google/android/gms/internal/zzedg;->zzmsk:[I

    invoke-virtual {p1}, Lcom/google/firebase/database/Logger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/zzeje;->zznbq:Lcom/google/android/gms/internal/zzeje;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    sget-object p1, Lcom/google/android/gms/internal/zzeje;->zznbp:Lcom/google/android/gms/internal/zzeje;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_2
    :try_start_2
    sget-object p1, Lcom/google/android/gms/internal/zzeje;->zznbo:Lcom/google/android/gms/internal/zzeje;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_3
    :try_start_3
    sget-object p1, Lcom/google/android/gms/internal/zzeje;->zznbn:Lcom/google/android/gms/internal/zzeje;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_4
    :try_start_4
    sget-object p1, Lcom/google/android/gms/internal/zzeje;->zznbm:Lcom/google/android/gms/internal/zzeje;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmsg:Lcom/google/android/gms/internal/zzeje;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x13

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown log level: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized setPersistenceCacheSizeBytes(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvx()V

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string p2, "The minimum cache size must be at least 1MB"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    const-wide/32 v0, 0x6400000

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string p2, "Firebase Database currently doesn\'t support a cache size larger than 100MB"

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/zzedf;->cacheSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setPersistenceEnabled(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvx()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmnr:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/firebase/FirebaseApp;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmlg:Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzpx(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedc;->zzbvx()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzedf;->zzmsf:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Session identifier is not allowed to be empty or null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
