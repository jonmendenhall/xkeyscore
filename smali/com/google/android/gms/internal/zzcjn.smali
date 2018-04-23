.class public final Lcom/google/android/gms/internal/zzcjn;
.super Lcom/google/android/gms/internal/zzcjl;


# instance fields
.field protected zzjgx:Lcom/google/android/gms/internal/zzckb;

.field private zzjgy:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

.field private final zzjgz:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzjha:Z

.field private final zzjhb:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjn;->zzjgz:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjn;->zzjhb:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcjn;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjn;->zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcjn;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/internal/zzcjn;->zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcjn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcjn;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjn;->zzbp(Z)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzclq;->zzkd(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v1, "Invalid conditional user property name"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v2, "Invalid conditional user property value"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v2, "Unable to normalize conditional user property value"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    iput-object v2, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v3, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x1

    const-wide v6, 0x39ef8b000L

    if-nez v3, :cond_4

    cmp-long v3, v1, v6

    if-gtz v3, :cond_3

    cmp-long v3, v1, v4

    if-gez v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v3, "Invalid conditional user property timeout"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-wide v1, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    cmp-long v3, v1, v6

    if-gtz v3, :cond_6

    cmp-long v3, v1, v4

    if-gez v3, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcjp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcjp;-><init>(Lcom/google/android/gms/internal/zzcjn;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v3, "Invalid conditional user property time to live"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p5

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v11, v0

    goto :goto_3

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    instance-of v2, v3, [Landroid/os/Parcelable;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    check-cast v3, [Landroid/os/Parcelable;

    :goto_1
    array-length v2, v3

    if-ge v4, v2, :cond_1

    aget-object v2, v3, v4

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_3

    new-instance v2, Landroid/os/Bundle;

    aget-object v5, v3, v4

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v2, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    aput-object v2, v3, v4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    instance-of v2, v3, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    check-cast v3, Ljava/util/ArrayList;

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v5, v2, Landroid/os/Bundle;

    if-eqz v5, :cond_5

    new-instance v5, Landroid/os/Bundle;

    check-cast v2, Landroid/os/Bundle;

    invoke-direct {v5, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move-object v11, v1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcjv;

    move-object v5, v1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/internal/zzcjv;-><init>(Lcom/google/android/gms/internal/zzcjn;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v8, Lcom/google/android/gms/internal/zzcjw;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzcjw;-><init>(Lcom/google/android/gms/internal/zzcjn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "User property not set since app measurement is disabled"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzazv()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Setting user property (FE)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzcln;

    move-object v3, v0

    move-object v4, p2

    move-wide v5, p4

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzckg;->zzb(Lcom/google/android/gms/internal/zzcln;)V

    return-void
.end method

.method private final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iput-wide v0, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    if-eqz p3, :cond_0

    iput-object p3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iput-object p4, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzcjq;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/zzcjq;-><init>(Lcom/google/android/gms/internal/zzcjn;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzazs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Cannot get user properties from analytics worker thread"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    invoke-static {}, Lcom/google/android/gms/internal/zzcih;->zzau()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Cannot get user properties from main thread"

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/zzcjs;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcjs;-><init>(Lcom/google/android/gms/internal/zzcjn;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 p1, 0x1388

    :try_start_1
    invoke-virtual {v7, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string p3, "Interrupted waiting for get user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Timed out waiting for get user properties"

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/support/v4/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/zzcln;

    iget-object p4, p3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object p2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcjn;Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjn;->zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 21
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Conditional property not sent since Firebase Analytics is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-object v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-object v8, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcha;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcha;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v6, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcha;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v15, Lcom/google/android/gms/internal/zzcgl;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    move-object/from16 v18, v10

    iget-wide v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v19, v9

    const/4 v0, 0x0

    move v9, v0

    move-object/from16 v10, v18

    move-object v0, v15

    move-wide/from16 v15, v19

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/zzcgl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcln;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcha;JLcom/google/android/gms/internal/zzcha;JLcom/google/android/gms/internal/zzcha;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzckg;->zzf(Lcom/google/android/gms/internal/zzcgl;)V

    :catch_0
    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V
    .locals 24
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Event not sent since app measurement is disabled"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzcjn;->zzjha:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v2, :cond_1

    iput-boolean v11, v1, Lcom/google/android/gms/internal/zzcjn;->zzjha:Z

    :try_start_0
    const-string v2, "com.google.android.gms.tagmanager.TagManagerService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "initialize"

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v2, "am"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzclq;->zzki(Ljava/lang/String;)Z

    move-result v2

    if-eqz p6, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcjn;->zzjgy:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    if-nez v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Passing event to registered event handler (FE)"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v5

    move-object/from16 v13, p5

    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/zzchk;->zzx(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zzjgy:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    move-object v3, v8

    move-object v4, v9

    move-object v5, v13

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;->interceptEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void

    :cond_2
    move-object/from16 v13, p5

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcim;->zzazv()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzclq;->zzkb(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    const/16 v2, 0x28

    invoke-static {v9, v2, v11}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    if-eqz v9, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    :cond_4
    move v8, v10

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    const-string v6, "_ev"

    move-object/from16 v4, p9

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_5
    const-string v2, "_o"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const/4 v7, 0x1

    move-object v3, v9

    move-object v4, v13

    move-object/from16 v5, v19

    move/from16 v6, p8

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzclq;->zzbaz()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroid/os/Bundle;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v7, v5

    move v14, v10

    move v15, v14

    :goto_1
    if-ge v15, v7, :cond_8

    aget-object v13, v5, v15

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzclq;->zzaf(Ljava/lang/Object;)[Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_7

    array-length v11, v10

    invoke-virtual {v2, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v20, v5

    const/4 v11, 0x0

    :goto_2
    array-length v5, v10

    if-ge v11, v5, :cond_6

    aget-object v5, v10, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v16

    const-string v17, "_ep"

    const/16 v18, 0x0

    move/from16 v21, v7

    move-object v7, v13

    move-object/from16 v13, v16

    move/from16 v22, v12

    move v12, v14

    move-object/from16 v14, v17

    move/from16 v23, v15

    move-object v15, v5

    move-object/from16 v16, v19

    move/from16 v17, p8

    invoke-virtual/range {v13 .. v18}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;ZZ)Landroid/os/Bundle;

    move-result-object v5

    const-string v13, "_en"

    invoke-virtual {v5, v13, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "_eid"

    invoke-virtual {v5, v13, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v13, "_gn"

    invoke-virtual {v5, v13, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "_ll"

    array-length v14, v10

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "_i"

    invoke-virtual {v5, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object v13, v7

    move v14, v12

    move/from16 v7, v21

    move/from16 v12, v22

    move/from16 v15, v23

    goto :goto_2

    :cond_6
    move/from16 v21, v7

    move/from16 v22, v12

    move v12, v14

    move/from16 v23, v15

    array-length v5, v10

    add-int v14, v12, v5

    goto :goto_3

    :cond_7
    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v12

    move v12, v14

    move/from16 v23, v15

    :goto_3
    add-int/lit8 v15, v23, 0x1

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v12, v22

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_8
    move/from16 v22, v12

    move v12, v14

    if-eqz v12, :cond_9

    const-string v5, "_eid"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "_epc"

    invoke-virtual {v2, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzckc;->zzbao()Lcom/google/android/gms/internal/zzckf;

    move-result-object v10

    if-eqz v10, :cond_a

    const-string v3, "_sc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/google/android/gms/internal/zzckf;->zzjib:Z

    :cond_a
    const/4 v11, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_10

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v11, :cond_b

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_c

    const-string v3, "_ep"

    goto :goto_6

    :cond_c
    move-object v3, v9

    :goto_6
    const-string v4, "_o"

    invoke-virtual {v2, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_sc"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/zzckc;->zza(Lcom/google/android/gms/measurement/AppMeasurement$zzb;Landroid/os/Bundle;)V

    :cond_d
    if-eqz p7, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzclq;->zzy(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_e
    move-object v13, v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Logging event (FE)"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v7

    invoke-virtual {v7, v13}, Lcom/google/android/gms/internal/zzchk;->zzx(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v7}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Lcom/google/android/gms/internal/zzcha;

    new-instance v4, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v4, v13}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    move-object v2, v14

    move-object v5, v8

    move-object v15, v6

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v2

    move-object/from16 v6, p9

    invoke-virtual {v2, v14, v6}, Lcom/google/android/gms/internal/zzckg;->zzc(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)V

    if-nez v22, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zzjgz:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, v13}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v8

    move-object v4, v9

    move-wide/from16 v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v6, p9

    goto :goto_7

    :cond_f
    add-int/lit8 v11, v11, 0x1

    move-object v6, v15

    goto/16 :goto_4

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzckc;->zzbao()Lcom/google/android/gms/internal/zzckf;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v2, "_ae"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclf;->zzbs(Z)Z

    :cond_11
    return-void
.end method

.method private final zzbp(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Setting app measurement enabled (FE)"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzchx;->setMeasurementEnabled(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzckg;->zzbaq()V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 22
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Conditional property not cleared since Firebase Analytics is disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    iget-object v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v13, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcha;

    move-result-object v17
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v15, Lcom/google/android/gms/internal/zzcgl;

    iget-object v4, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v7, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-boolean v9, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v10, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    const/4 v14, 0x0

    move-wide/from16 v18, v12

    iget-wide v11, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    move-object v3, v15

    move-object v6, v2

    move-wide/from16 v20, v11

    const/4 v0, 0x0

    move-object v11, v0

    move-wide/from16 v12, v18

    move-object v0, v15

    move-wide/from16 v15, v20

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/zzcgl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcln;JZLjava/lang/String;Lcom/google/android/gms/internal/zzcha;JLcom/google/android/gms/internal/zzcha;JLcom/google/android/gms/internal/zzcha;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzckg;->zzf(Lcom/google/android/gms/internal/zzcgl;)V

    :catch_0
    return-void
.end method

.method private final zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzazs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from analytics worker thread"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    invoke-static {}, Lcom/google/android/gms/internal/zzcih;->zzau()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Cannot get conditional user properties from main thread"

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/zzcjr;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcjr;-><init>(Lcom/google/android/gms/internal/zzcjn;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x1388

    :try_start_1
    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p3

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Interrupted waiting for get conditional user properties"

    invoke-virtual {v0, v1, p1, p3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string p3, "Timed out waiting for get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzcgl;

    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>()V

    iput-object p1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    iput-object p2, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mOrigin:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mCreationTimestamp:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mValue:Ljava/lang/Object;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    iput-boolean v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mActive:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimedOutEventParams:Landroid/os/Bundle;

    :cond_3
    iget-wide v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggerTimeout:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredEventParams:Landroid/os/Bundle;

    :cond_4
    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTriggeredTimestamp:J

    iget-wide v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyn:J

    iput-wide v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mTimeToLive:J

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventName:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v3, :cond_5

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mExpiredEventParams:Landroid/os/Bundle;

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method


# virtual methods
.method public final clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawi()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final getAppInstanceId()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzazt()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcjy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcjy;-><init>(Lcom/google/android/gms/internal/zzcjn;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to schedule task for getAppInstanceId"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzcjn;->zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawi()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcjn;->zzk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcjn;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawi()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcjn;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final registerOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzjgz:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "OnEventListener already registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final resetAnalyticsData()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcka;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcka;-><init>(Lcom/google/android/gms/internal/zzcjn;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    iget-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v1, "Package name should be null when calling setConditionalUserProperty"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcjn;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawi()V

    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcjn;->zza(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V

    return-void
.end method

.method public final setEventInterceptor(Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzjgy:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzjgy:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "EventInterceptor already set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjn;->zzjgy:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    return-void
.end method

.method public final setMeasurementEnabled(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcjo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcjo;-><init>(Lcom/google/android/gms/internal/zzcjn;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setMinimumSessionDuration(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcjt;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzcjt;-><init>(Lcom/google/android/gms/internal/zzcjn;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setSessionTimeoutDuration(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcju;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzcju;-><init>(Lcom/google/android/gms/internal/zzcjn;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final unregisterOnMeasurementEventListener(Lcom/google/android/gms/measurement/AppMeasurement$OnEventListener;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzjgz:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "OnEventListener had not been registered"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8

    iget-object p4, p0, Lcom/google/android/gms/internal/zzcjn;->zzjgy:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz p4, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzclq;->zzki(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x1

    :goto_1
    move v5, p4

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzawi()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawi()V

    return-void
.end method

.method public final bridge synthetic zzawj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawj()V

    return-void
.end method

.method public final bridge synthetic zzawk()Lcom/google/android/gms/internal/zzcgd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawk()Lcom/google/android/gms/internal/zzcgd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawl()Lcom/google/android/gms/internal/zzcgk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawm()Lcom/google/android/gms/internal/zzcjn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawn()Lcom/google/android/gms/internal/zzchh;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawo()Lcom/google/android/gms/internal/zzcgu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawp()Lcom/google/android/gms/internal/zzckg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawq()Lcom/google/android/gms/internal/zzckc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawq()Lcom/google/android/gms/internal/zzckc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawr()Lcom/google/android/gms/internal/zzchi;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawr()Lcom/google/android/gms/internal/zzchi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaws()Lcom/google/android/gms/internal/zzcgo;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawt()Lcom/google/android/gms/internal/zzchk;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawu()Lcom/google/android/gms/internal/zzclq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawv()Lcom/google/android/gms/internal/zzcig;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaww()Lcom/google/android/gms/internal/zzclf;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaww()Lcom/google/android/gms/internal/zzclf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawx()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawy()Lcom/google/android/gms/internal/zzchm;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzawz()Lcom/google/android/gms/internal/zzchx;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzaxa()Lcom/google/android/gms/internal/zzcgn;

    move-result-object v0

    return-object v0
.end method

.method protected final zzaxz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final zzazn()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzjhb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzclq;->zzkd(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    invoke-static {p2, v3, v2}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object p2

    const-string p3, "_ev"

    invoke-virtual {p2, v0, p3, p1, v1}, Lcom/google/android/gms/internal/zzclq;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzclq;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    invoke-static {p2, v3, v2}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    instance-of p2, p3, Ljava/lang/String;

    if-nez p2, :cond_2

    instance-of p2, p3, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    :cond_2
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object p2

    const-string p3, "_ev"

    invoke-virtual {p2, v0, p3, p1, v1}, Lcom/google/android/gms/internal/zzclq;->zza(ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/zzclq;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    return-void
.end method

.method final zzbd(J)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcjz;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzcjz;-><init>(Lcom/google/android/gms/internal/zzcjn;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :catch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Interrupted waiting for app instance id"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzbq(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcln;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Fetching user attributes (FE)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcih;->zzazs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "Cannot get all user properties from analytics worker thread"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    invoke-static {}, Lcom/google/android/gms/internal/zzcih;->zzau()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "Cannot get all user properties from main thread"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzcjx;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/internal/zzcjx;-><init>(Lcom/google/android/gms/internal/zzcjn;Ljava/util/concurrent/atomic/AtomicReference;Z)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x1388

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Interrupted waiting for get user properties"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "Timed out waiting for get user properties"

    goto :goto_0

    :cond_2
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzjgy:Lcom/google/android/gms/measurement/AppMeasurement$EventInterceptor;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzclq;->zzki(Ljava/lang/String;)Z

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
    move v6, v0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzcjn;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void
.end method

.method final zzjp(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjn;->zzjhb:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic zzve()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzve()V

    return-void
.end method

.method public final bridge synthetic zzws()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzcjl;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    return-object v0
.end method
