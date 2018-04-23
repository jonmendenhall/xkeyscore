.class public Lcom/google/android/gms/internal/zzcim;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcim$zza;
    }
.end annotation


# static fields
.field private static volatile zzjev:Lcom/google/android/gms/internal/zzcim;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzata:Lcom/google/android/gms/common/util/zzd;

.field private zzdtb:Z

.field private final zzjew:Lcom/google/android/gms/internal/zzcgn;

.field private final zzjex:Lcom/google/android/gms/internal/zzchx;

.field private final zzjey:Lcom/google/android/gms/internal/zzchm;

.field private final zzjez:Lcom/google/android/gms/internal/zzcih;

.field private final zzjfa:Lcom/google/android/gms/internal/zzclf;

.field private final zzjfb:Lcom/google/android/gms/internal/zzcig;

.field private final zzjfc:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final zzjfd:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private final zzjfe:Lcom/google/android/gms/internal/zzclq;

.field private final zzjff:Lcom/google/android/gms/internal/zzchk;

.field private final zzjfg:Lcom/google/android/gms/internal/zzcgo;

.field private final zzjfh:Lcom/google/android/gms/internal/zzchi;

.field private final zzjfi:Lcom/google/android/gms/internal/zzchq;

.field private final zzjfj:Lcom/google/android/gms/internal/zzckc;

.field private final zzjfk:Lcom/google/android/gms/internal/zzckg;

.field private final zzjfl:Lcom/google/android/gms/internal/zzcgu;

.field private final zzjfm:Lcom/google/android/gms/internal/zzcjn;

.field private final zzjfn:Lcom/google/android/gms/internal/zzchh;

.field private final zzjfo:Lcom/google/android/gms/internal/zzchv;

.field private final zzjfp:Lcom/google/android/gms/internal/zzcll;

.field private final zzjfq:Lcom/google/android/gms/internal/zzcgk;

.field private final zzjfr:Lcom/google/android/gms/internal/zzcgd;

.field private zzjfs:Z

.field private zzjft:Ljava/lang/Boolean;

.field private zzjfu:J

.field private zzjfv:Ljava/nio/channels/FileLock;

.field private zzjfw:Ljava/nio/channels/FileChannel;

.field private zzjfx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzjfy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private zzjfz:I

.field private zzjga:I

.field private zzjgb:J

.field private zzjgc:J

.field private zzjgd:Z

.field private zzjge:Z

.field private zzjgf:Z

.field private final zzjgg:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzcjm;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzdtb:Z

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcjm;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzamg()Lcom/google/android/gms/common/util/zzd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    new-instance p1, Lcom/google/android/gms/internal/zzcgn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcgn;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    new-instance p1, Lcom/google/android/gms/internal/zzchx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzchx;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjex:Lcom/google/android/gms/internal/zzchx;

    new-instance p1, Lcom/google/android/gms/internal/zzchm;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzchm;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    new-instance p1, Lcom/google/android/gms/internal/zzclq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzclq;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfe:Lcom/google/android/gms/internal/zzclq;

    new-instance p1, Lcom/google/android/gms/internal/zzchk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzchk;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjff:Lcom/google/android/gms/internal/zzchk;

    new-instance p1, Lcom/google/android/gms/internal/zzcgu;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcgu;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfl:Lcom/google/android/gms/internal/zzcgu;

    new-instance p1, Lcom/google/android/gms/internal/zzchh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzchh;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    new-instance p1, Lcom/google/android/gms/internal/zzcgo;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcgo;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfg:Lcom/google/android/gms/internal/zzcgo;

    new-instance p1, Lcom/google/android/gms/internal/zzchi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzchi;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfh:Lcom/google/android/gms/internal/zzchi;

    new-instance p1, Lcom/google/android/gms/internal/zzcgk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcgk;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfq:Lcom/google/android/gms/internal/zzcgk;

    new-instance p1, Lcom/google/android/gms/internal/zzcgd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcgd;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfr:Lcom/google/android/gms/internal/zzcgd;

    new-instance p1, Lcom/google/android/gms/internal/zzchq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzchq;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfi:Lcom/google/android/gms/internal/zzchq;

    new-instance p1, Lcom/google/android/gms/internal/zzckc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzckc;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfj:Lcom/google/android/gms/internal/zzckc;

    new-instance p1, Lcom/google/android/gms/internal/zzckg;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzckg;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    new-instance p1, Lcom/google/android/gms/internal/zzcjn;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcjn;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfm:Lcom/google/android/gms/internal/zzcjn;

    new-instance p1, Lcom/google/android/gms/internal/zzcll;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcll;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfp:Lcom/google/android/gms/internal/zzcll;

    new-instance p1, Lcom/google/android/gms/internal/zzchv;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzchv;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfo:Lcom/google/android/gms/internal/zzchv;

    new-instance p1, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement;

    new-instance p1, Lcom/google/firebase/analytics/FirebaseAnalytics;

    invoke-direct {p1, p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfd:Lcom/google/firebase/analytics/FirebaseAnalytics;

    new-instance p1, Lcom/google/android/gms/internal/zzclf;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzclf;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfa:Lcom/google/android/gms/internal/zzclf;

    new-instance p1, Lcom/google/android/gms/internal/zzcig;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcig;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfb:Lcom/google/android/gms/internal/zzcig;

    new-instance p1, Lcom/google/android/gms/internal/zzcih;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzcih;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjl;->initialize()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjn;->zzjgx:Lcom/google/android/gms/internal/zzckb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzckb;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzckb;-><init>(Lcom/google/android/gms/internal/zzcjn;Lcom/google/android/gms/internal/zzcjo;)V

    iput-object v1, p1, Lcom/google/android/gms/internal/zzcjn;->zzjgx:Lcom/google/android/gms/internal/zzckb;

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjn;->zzjgx:Lcom/google/android/gms/internal/zzckb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjn;->zzjgx:Lcom/google/android/gms/internal/zzckb;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "Registered activity lifecycle callback"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "Application context is not an Application"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    new-instance v0, Lcom/google/android/gms/internal/zzcin;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcin;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcih;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zza(Ljava/nio/channels/FileChannel;)I
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move p1, v0

    return p1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v1, "Bad chanel to read from"

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return v0
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzcgi;
    .locals 22

    move-object/from16 v1, p2

    const-string v0, "Unknown"

    const-string v2, "Unknown"

    const-string v3, "Unknown"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "PackageManager is null, can not log app install information"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return-object v5

    :cond_0
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v6, "Error retrieving installer package name. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "manual_install"

    :cond_1
    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_2
    const-string v4, "com.android.vending"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, ""

    goto :goto_1

    :goto_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/internal/zzbhe;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzbhe;->zzgt(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :cond_3
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_4
    const/high16 v0, -0x80000000

    :goto_3
    move-object v3, v2

    new-instance v21, Lcom/google/android/gms/internal/zzcgi;

    int-to-long v4, v0

    const-wide/16 v7, 0x2e86

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzclq;->zzaf(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v21

    move-object/from16 v2, p3

    move/from16 v12, p4

    move/from16 v20, p5

    invoke-direct/range {v0 .. v20}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v21

    :catch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Error retrieving newly installed package info. appId, appName"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzazw()V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcjk;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcjl;)V
    .locals 1

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjl;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private final zza(ILjava/nio/channels/FileChannel;)Z
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Bad chanel to read from"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    return v0
.end method

.method private static zza(Lcom/google/android/gms/internal/zzcmb;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    instance-of p0, p2, Ljava/lang/Long;

    if-eqz p0, :cond_1

    iget-object p0, v3, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_1
    instance-of p0, p2, Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p0, v3, Lcom/google/android/gms/internal/zzcmc;->zzgcc:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    instance-of p0, p2, Ljava/lang/Double;

    if-eqz p0, :cond_4

    iget-object p0, v3, Lcom/google/android/gms/internal/zzcmc;->zzjjl:Ljava/lang/Double;

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z
    .locals 13

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    const-string v1, "currency"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgx;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ecommerce_purchase"

    iget-object v2, p2, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcgx;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v5

    const-wide/16 v7, 0x0

    cmpl-double v1, v3, v7

    if-nez v1, :cond_0

    iget-object v1, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcgx;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-double v3, v3

    mul-double/2addr v3, v5

    :cond_0
    const-wide/high16 v5, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_1

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string v0, "Data lost. Currency value is too big. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v1, p2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzcgx;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_6

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Z]{3}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "_ltv_"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v9, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0, p1, v9}, Lcom/google/android/gms/internal/zzcgo;->zzag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzclp;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/gms/internal/zzclp;

    iget-object v8, p2, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object v0, v2

    goto :goto_5

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    sget-object v6, Lcom/google/android/gms/internal/zzchc;->zzjbh:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v1, p1, v6}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v2

    aput-object p1, v8, v5

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v2, "Error pruning currencies. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/zzclp;

    iget-object v8, p2, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzclp;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string v1, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v6

    const/16 v8, 0x9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_6
    return v5
.end method

.method private final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmg;[Lcom/google/android/gms/internal/zzcmb;)[Lcom/google/android/gms/internal/zzcma;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawl()Lcom/google/android/gms/internal/zzcgk;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmb;[Lcom/google/android/gms/internal/zzcmg;)[Lcom/google/android/gms/internal/zzcma;

    move-result-object p1

    return-object p1
.end method

.method static zzawi()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzazw()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfe:Lcom/google/android/gms/internal/zzclq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzazw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjex:Lcom/google/android/gms/internal/zzchx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzazw()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzazw()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    const-wide/16 v2, 0x2e86

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchh;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzclq;->zzkj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Debug-level message logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfz:I

    iget v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjga:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzcim;->zzjga:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzdtb:Z

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzcgh;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcim;->zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppInstanceId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v3, Lcom/google/android/gms/internal/zzchc;->zzjah:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzchc;->zzjai:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config/app/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "app_instance_id"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gmp_version"

    const-string v3, "11910"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcig;->zzjs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcly;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzcig;->zzjt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    const-string v2, "If-Modified-Since"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v1

    goto :goto_1

    :cond_2
    move-object v6, v2

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/zzciq;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/zzciq;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/zzchu;

    const/4 v5, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzchu;-><init>(Lcom/google/android/gms/internal/zzchq;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzchs;)V

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzcih;->zzh(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzbac()Lcom/google/android/gms/internal/zzchv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfo:Lcom/google/android/gms/internal/zzchv;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfo:Lcom/google/android/gms/internal/zzchv;

    return-object v0
.end method

.method private final zzbad()Lcom/google/android/gms/internal/zzcll;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfp:Lcom/google/android/gms/internal/zzcll;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfp:Lcom/google/android/gms/internal/zzcll;

    return-object v0
.end method

.method private final zzbae()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    const-string v0, "google_app_measurement.db"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfw:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfw:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfv:Ljava/nio/channels/FileLock;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfv:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Storage concurrent access okay"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbag()J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v3, v2, Lcom/google/android/gms/internal/zzchx;->zzjcv:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const-wide/16 v3, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzclq;->zzbaz()Ljava/security/SecureRandom;

    move-result-object v5

    const v6, 0x5265c00

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/internal/zzchx;->zzjcv:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzbai()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->zzayk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->zzayf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzbaj()V
    .locals 20
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbam()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    iget-wide v7, v0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    sub-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchv;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    return-void

    :cond_1
    iput-wide v3, v0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzazv()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbai()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/zzchc;->zzjbd:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgo;->zzayl()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgo;->zzayg()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_7

    iget-object v9, v0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgn;->zzayd()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".none."

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/google/android/gms/internal/zzchc;->zzjay:Lcom/google/android/gms/internal/zzchd;

    goto :goto_2

    :cond_6
    sget-object v9, Lcom/google/android/gms/internal/zzchc;->zzjax:Lcom/google/android/gms/internal/zzchd;

    goto :goto_2

    :cond_7
    sget-object v9, Lcom/google/android/gms/internal/zzchc;->zzjaw:Lcom/google/android/gms/internal/zzchd;

    :goto_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v13

    iget-object v13, v13, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v15

    move-wide/from16 v16, v9

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcgo;->zzayi()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v10

    move-wide/from16 v18, v5

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzcgo;->zzayj()J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v8, v5, v3

    if-nez v8, :cond_9

    :cond_8
    move-wide v8, v3

    goto/16 :goto_5

    :cond_9
    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v5, v18

    if-eqz v7, :cond_a

    cmp-long v7, v8, v3

    if-lez v7, :cond_a

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v16

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v7

    move-wide/from16 v12, v16

    invoke-virtual {v7, v8, v9, v12, v13}, Lcom/google/android/gms/internal/zzclq;->zzf(JJ)Z

    move-result v7

    if-nez v7, :cond_b

    add-long/2addr v8, v12

    goto :goto_3

    :cond_b
    move-wide v8, v10

    :goto_3
    cmp-long v7, v1, v3

    if-eqz v7, :cond_d

    cmp-long v5, v1, v5

    if-ltz v5, :cond_d

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0x14

    sget-object v7, Lcom/google/android/gms/internal/zzchc;->zzjbf:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v10, 0x0

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_8

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v5

    sget-object v11, Lcom/google/android/gms/internal/zzchc;->zzjbe:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    mul-long/2addr v11, v6

    add-long/2addr v8, v11

    cmp-long v6, v8, v1

    if-lez v6, :cond_c

    goto :goto_5

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    cmp-long v1, v8, v3

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchv;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchv;->zzzp()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    return-void

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzchx;->zzjct:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v1

    sget-object v5, Lcom/google/android/gms/internal/zzchc;->zzjau:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Lcom/google/android/gms/internal/zzclq;->zzf(JJ)Z

    move-result v7

    if-nez v7, :cond_10

    add-long/2addr v1, v5

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchv;->unregister()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v8, v1

    cmp-long v1, v8, v3

    if-gtz v1, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzchc;->zzjaz:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/internal/zzcll;->zzs(J)V

    return-void

    :cond_12
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbac()Lcom/google/android/gms/internal/zzchv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchv;->unregister()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbad()Lcom/google/android/gms/internal/zzcll;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcll;->cancel()V

    return-void
.end method

.method private final zzbam()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzban()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Not stopping services. fetch, network, upload"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 33
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v10, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/zzclq;->zzd(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v12, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v2, :cond_1

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/internal/zzcig;->zzan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Dropping blacklisted event. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzclq;->zzkl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzclq;->zzkm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v9, 0x1

    :goto_1
    if-nez v9, :cond_4

    const-string v2, "_err"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    const/16 v5, 0xb

    const-string v6, "_ev"

    iget-object v7, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_4
    if-eqz v9, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgh;->zzaxn()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgh;->zzaxm()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-object v4, v11, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/zzchc;->zzjbc:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Fetching config for blacklisted app"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcgh;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Logging event"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzchk;->zzb(Lcom/google/android/gms/internal/zzcha;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ecommerce_purchase"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-direct {v11, v10, v1}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :cond_9
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzclq;->zzjz(Ljava/lang/String;)Z

    move-result v24

    const-string v2, "_err"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbag()J

    move-result-wide v16

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, v10

    move/from16 v20, v24

    move/from16 v22, v2

    invoke-virtual/range {v15 .. v23}, Lcom/google/android/gms/internal/zzcgo;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcgp;

    move-result-object v3

    iget-wide v4, v3, Lcom/google/android/gms/internal/zzcgp;->zziyy:J

    sget-object v7, Lcom/google/android/gms/internal/zzchc;->zzjan:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v6, v7

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v15, v4, v6

    const-wide/16 v16, 0x3e8

    const-wide/16 v8, 0x1

    if-lez v15, :cond_b

    rem-long v4, v4, v16

    cmp-long v1, v4, v8

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gms/internal/zzcgp;->zziyy:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :cond_b
    if-eqz v24, :cond_d

    :try_start_2
    iget-wide v4, v3, Lcom/google/android/gms/internal/zzcgp;->zziyx:J

    sget-object v15, Lcom/google/android/gms/internal/zzchc;->zzjap:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v8, v15

    sub-long/2addr v4, v8

    cmp-long v8, v4, v6

    if-lez v8, :cond_d

    rem-long v4, v4, v16

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gms/internal/zzcgp;->zziyx:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    const/16 v5, 0x10

    const-string v6, "_ev"

    iget-object v7, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :cond_d
    if-eqz v2, :cond_f

    :try_start_3
    iget-wide v4, v3, Lcom/google/android/gms/internal/zzcgp;->zziza:J

    iget-object v2, v11, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    iget-object v8, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/zzchc;->zzjao:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v2

    const v8, 0xf4240

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v8, v2

    sub-long/2addr v4, v8

    cmp-long v2, v4, v6

    if-lez v2, :cond_f

    const-wide/16 v8, 0x1

    cmp-long v1, v4, v8

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gms/internal/zzcgp;->zziza:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :cond_f
    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const-string v3, "_o"

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzclq;->zzkj(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const-string v3, "_dbg"

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v15, v3, v8}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const-string v3, "_r"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzcgo;->zzjc(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v8, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    new-instance v8, Lcom/google/android/gms/internal/zzcgv;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v1

    move-object v1, v8

    move-object v2, v11

    move-object v4, v10

    move-wide/from16 v30, v13

    const/4 v9, 0x2

    move-wide v13, v6

    move-wide/from16 v6, v18

    move-object v13, v8

    const/4 v14, 0x1

    const/16 v29, 0x0

    move-wide/from16 v8, v16

    move-object v14, v10

    move-object v10, v15

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcgv;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    iget-object v2, v13, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v1

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/zzcgo;->zzjf(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_12

    if-eqz v24, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v14}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, v13, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1f4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v14

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :cond_12
    :try_start_5
    new-instance v1, Lcom/google/android/gms/internal/zzcgw;

    iget-object v2, v13, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    iget-wide v3, v13, Lcom/google/android/gms/internal/zzcgv;->zzfij:J

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object v15, v1

    move-object/from16 v16, v14

    move-object/from16 v17, v2

    move-wide/from16 v22, v3

    invoke-direct/range {v15 .. v28}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_2

    :cond_13
    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcgw;->zzizm:J

    invoke-virtual {v13, v11, v2, v3}, Lcom/google/android/gms/internal/zzcgv;->zza(Lcom/google/android/gms/internal/zzcim;J)Lcom/google/android/gms/internal/zzcgv;

    move-result-object v8

    iget-wide v2, v8, Lcom/google/android/gms/internal/zzcgv;->zzfij:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgw;->zzbb(J)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v1

    move-object v13, v8

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-static {v13}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v13, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v13, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    new-instance v1, Lcom/google/android/gms/internal/zzcme;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcme;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjlo:Ljava/lang/Integer;

    const-string v3, "android"

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjlw:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzixt:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzifm:Ljava/lang/String;

    iget-wide v3, v12, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    const-wide/32 v5, -0x80000000

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-nez v3, :cond_14

    move-object v3, v4

    goto :goto_3

    :cond_14
    iget-wide v5, v12, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjmj:Ljava/lang/Integer;

    iget-wide v5, v12, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjma:Ljava/lang/Long;

    iget-object v3, v12, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzixs:Ljava/lang/String;

    iget-wide v5, v12, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_15

    move-object v3, v4

    goto :goto_4

    :cond_15
    iget-wide v5, v12, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_4
    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjmf:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v3

    iget-object v5, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzchx;->zzjm(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-boolean v5, v12, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    if-eqz v5, :cond_19

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjmd:Ljava/lang/Boolean;

    goto :goto_6

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v3

    iget-object v5, v11, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzcgu;->zzdw(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v11, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "android_id"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v5, "null secure ID. appId"

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "null"

    goto :goto_5

    :cond_17
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "empty secure ID. appId"

    iget-object v7, v1, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_18
    :goto_5
    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjmm:Ljava/lang/String;

    :cond_19
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjlx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzdb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgu;->zzayu()J

    move-result-wide v5

    long-to-int v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjlz:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgu;->zzayv()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzjly:Ljava/lang/String;

    iput-object v4, v1, Lcom/google/android/gms/internal/zzcme;->zzjmb:Ljava/lang/Long;

    iput-object v4, v1, Lcom/google/android/gms/internal/zzcme;->zzjlr:Ljava/lang/Long;

    iput-object v4, v1, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    iput-object v4, v1, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    iget-wide v5, v12, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zzfkk:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzaye()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    iput-object v4, v1, Lcom/google/android/gms/internal/zzcme;->zzjmo:Ljava/lang/String;

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v3

    if-nez v3, :cond_1b

    new-instance v3, Lcom/google/android/gms/internal/zzcgh;

    iget-object v4, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-direct {v3, v11, v4}, Lcom/google/android/gms/internal/zzcgh;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchh;->zzayz()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zzir(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zziu(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zzis(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v4

    iget-object v5, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchx;->zzjn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zzit(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzaq(J)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzal(J)V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzam(J)V

    iget-object v4, v12, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgh;->setAppVersion(Ljava/lang/String;)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzan(J)V

    iget-object v4, v12, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zziv(Ljava/lang/String;)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzao(J)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzap(J)V

    iget-boolean v4, v12, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgh;->setMeasurementEnabled(Z)V

    iget-wide v4, v12, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzaz(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    :cond_1b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgh;->getAppInstanceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/zzcme;->zzjme:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/zzcme;->zziya:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgo;->zzja(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcmg;

    iput-object v4, v1, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    move/from16 v4, v29

    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c

    new-instance v5, Lcom/google/android/gms/internal/zzcmg;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzcmg;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    aput-object v5, v6, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzclp;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    iput-object v6, v5, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzclp;

    iget-wide v6, v6, Lcom/google/android/gms/internal/zzclp;->zzjjm:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/zzcmg;->zzjms:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzclp;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmg;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_1c
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcme;)J

    move-result-wide v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    iget-object v5, v13, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v5, :cond_1f

    iget-object v5, v13, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcgx;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "_r"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    goto :goto_8

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v5

    iget-object v6, v13, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    iget-object v7, v13, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/zzcig;->zzao(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v14

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbag()J

    move-result-wide v15

    iget-object v6, v13, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v6

    invoke-virtual/range {v14 .. v22}, Lcom/google/android/gms/internal/zzcgo;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcgp;

    move-result-object v6

    if-eqz v5, :cond_1f

    iget-wide v5, v6, Lcom/google/android/gms/internal/zzcgp;->zzizb:J

    iget-object v7, v11, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    iget-object v8, v13, Lcom/google/android/gms/internal/zzcgv;->mAppId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzcgn;->zzix(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1f

    goto :goto_8

    :cond_1f
    move/from16 v2, v29

    :goto_8
    invoke-virtual {v1, v13, v3, v4, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgv;JZ)Z

    move-result v1

    if-eqz v1, :cond_20

    const-wide/16 v1, 0x0

    iput-wide v1, v11, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "Data loss. Failed to insert raw event metadata. appId"

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Event recorded"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzcgv;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v30

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v1
.end method

.method public static zzdx(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcim;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzcim;->zzjev:Lcom/google/android/gms/internal/zzcim;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/zzcim;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzcim;->zzjev:Lcom/google/android/gms/internal/zzcim;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzcjm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcjm;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/zzcim;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzcim;-><init>(Lcom/google/android/gms/internal/zzcjm;)V

    sput-object p0, Lcom/google/android/gms/internal/zzcim;->zzjev:Lcom/google/android/gms/internal/zzcim;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/zzcim;->zzjev:Lcom/google/android/gms/internal/zzcim;

    return-object p0
.end method

.method private final zzg(Lcom/google/android/gms/internal/zzcgi;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzchx;->zzjn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzcgh;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/zzcgh;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchh;->zzayz()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzcgh;->zzir(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->zzit(Ljava/lang/String;)V

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->zzit(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->zzayz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->zzir(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->zzis(Ljava/lang/String;)V

    move v1, v2

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zziya:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->zziu(Ljava/lang/String;)V

    move v1, v2

    :cond_3
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxi()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixu:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zzao(J)V

    move v1, v2

    :cond_4
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->setAppVersion(Ljava/lang/String;)V

    move v1, v2

    :cond_5
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxg()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixz:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zzan(J)V

    move v1, v2

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxh()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->zziv(Ljava/lang/String;)V

    move v1, v2

    :cond_7
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxj()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_8

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixv:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zzap(J)V

    move v1, v2

    :cond_8
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxk()Z

    move-result v4

    if-eq v3, v4, :cond_9

    iget-boolean v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->setMeasurementEnabled(Z)V

    move v1, v2

    :cond_9
    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->zzixw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgh;->zziw(Ljava/lang/String;)V

    move v1, v2

    :cond_a
    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxx()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b

    iget-wide v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziyb:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcgh;->zzaz(J)V

    move v1, v2

    :cond_b
    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxy()Z

    move-result v4

    if-eq v3, v4, :cond_c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcgh;->zzbl(Z)V

    move v1, v2

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    :cond_d
    return-void
.end method

.method private final zzg(Ljava/lang/String;J)Z
    .locals 46

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/zzcim$zza;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/zzcim$zza;-><init>(Lcom/google/android/gms/internal/zzcim;Lcom/google/android/gms/internal/zzcin;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    iget-wide v5, v1, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const-wide/16 v7, -0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :try_start_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v12, :cond_3

    cmp-long v12, v5, v7

    if-eqz v12, :cond_0

    :try_start_2
    new-array v13, v9, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto/16 :goto_2d

    :catch_0
    move-exception v0

    move-object v9, v3

    move-object v12, v9

    :goto_0
    move-object v3, v0

    goto/16 :goto_c

    :cond_0
    :try_start_3
    new-array v13, v11, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v10
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_1
    if-eqz v12, :cond_1

    :try_start_4
    const-string v12, "rowid <= ? and "
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :cond_1
    :try_start_5
    const-string v12, ""

    :goto_2
    const/16 v14, 0x94

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v14, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "select app_id, metadata_fingerprint from raw_events where "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v12, :cond_2

    if-eqz v3, :cond_d

    :goto_3
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_d

    :cond_2
    :try_start_8
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v22, v3

    move-object v3, v12

    move-object/from16 v21, v13

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v9, v3

    goto :goto_0

    :cond_3
    cmp-long v3, v5, v7

    if-eqz v3, :cond_4

    :try_start_a
    new-array v12, v9, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v13, v12, v10

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    :goto_4
    if-eqz v3, :cond_5

    const-string v3, " and rowid <= ?"

    goto :goto_5

    :cond_5
    const-string v3, ""

    :goto_5
    const/16 v13, 0x54

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " order by rowid limit 1;"

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v3, :cond_d

    goto :goto_3

    :cond_6
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object/from16 v22, v3

    move-object/from16 v21, v13

    const/4 v3, 0x0

    :goto_6
    :try_start_c
    const-string v13, "raw_events_metadata"

    const-string v12, "metadata"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v14

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    new-array v12, v9, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v21, v12, v11

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    const-string v20, "2"

    move-object/from16 v23, v12

    move-object v12, v15

    move-object/from16 v24, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v23

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-nez v12, :cond_7

    :try_start_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v15, :cond_d

    :try_start_f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v9, v15

    goto/16 :goto_2d

    :catch_2
    move-exception v0

    move-object v12, v3

    move-object v9, v15

    goto/16 :goto_0

    :cond_7
    :try_start_10
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    array-length v13, v12

    invoke-static {v12, v10, v13}, Lcom/google/android/gms/internal/zzfjj;->zzn([BII)Lcom/google/android/gms/internal/zzfjj;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/zzcme;

    invoke-direct {v13}, Lcom/google/android/gms/internal/zzcme;-><init>()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v12, :cond_8

    :try_start_13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v12

    const-string v14, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v12, v14, v9}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :cond_8
    :try_start_14
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-interface {v2, v13}, Lcom/google/android/gms/internal/zzcgq;->zzb(Lcom/google/android/gms/internal/zzcme;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    cmp-long v9, v5, v7

    const/4 v14, 0x3

    if-eqz v9, :cond_9

    :try_start_15
    const-string v9, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    new-array v12, v14, [Ljava/lang/String;

    aput-object v3, v12, v10

    aput-object v21, v12, v11

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v12, v6
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-object v5, v9

    move-object/from16 v16, v12

    goto :goto_7

    :cond_9
    :try_start_16
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/String;

    aput-object v3, v9, v10

    aput-object v21, v9, v11

    move-object/from16 v16, v9

    :goto_7
    const-string v13, "raw_events"

    const-string v6, "rowid"

    const-string v9, "name"

    const-string v12, "timestamp"

    const-string v14, "data"

    filled-new-array {v6, v9, v12, v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    const/16 v20, 0x0

    move-object/from16 v12, v24

    const/4 v6, 0x3

    move-object v9, v15

    move-object v15, v5

    :try_start_17
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v9, "Raw event data disappeared while in transaction. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v9, v12}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v5, :cond_d

    :goto_8
    :try_start_19
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    goto/16 :goto_d

    :cond_a
    :goto_9
    :try_start_1a
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    array-length v14, v9

    invoke-static {v9, v10, v14}, Lcom/google/android/gms/internal/zzfjj;->zzn([BII)Lcom/google/android/gms/internal/zzfjj;

    move-result-object v9

    new-instance v14, Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {v14}, Lcom/google/android/gms/internal/zzcmb;-><init>()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    :try_start_1b
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjj;)Lcom/google/android/gms/internal/zzfjs;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :try_start_1c
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v14, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v14, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-interface {v2, v12, v13, v14}, Lcom/google/android/gms/internal/zzcgq;->zza(JLcom/google/android/gms/internal/zzcmb;)Z

    move-result v6

    if-nez v6, :cond_b

    if-eqz v5, :cond_d

    goto :goto_8

    :catch_3
    move-exception v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v7, "Data loss. Failed to merge raw event. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    if-nez v6, :cond_c

    if-eqz v5, :cond_d

    goto :goto_8

    :cond_c
    const/4 v6, 0x3

    const-wide/16 v7, -0x1

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v9, v5

    goto/16 :goto_2d

    :catch_4
    move-exception v0

    move-object v12, v3

    move-object v9, v5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v9, v15

    :try_start_1d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    if-eqz v9, :cond_d

    :goto_a
    :try_start_1e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto :goto_d

    :catch_6
    move-exception v0

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object v9, v15

    goto/16 :goto_2c

    :catch_7
    move-exception v0

    move-object v9, v15

    :goto_b
    move-object v12, v3

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v9, v22

    goto/16 :goto_2d

    :catch_8
    move-exception v0

    move-object v12, v3

    move-object/from16 v9, v22

    goto/16 :goto_0

    :catch_9
    move-exception v0

    move-object v9, v3

    const/4 v12, 0x0

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    goto/16 :goto_2d

    :catch_a
    move-exception v0

    move-object v3, v0

    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_c
    :try_start_1f
    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Data loss. Error selecting raw event. appId"

    invoke-static {v12}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v9, :cond_d

    goto :goto_a

    :cond_d
    :goto_d
    :try_start_20
    iget-object v3, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    if-eqz v3, :cond_f

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_e

    :cond_e
    move v3, v10

    goto :goto_f

    :cond_f
    :goto_e
    move v3, v11

    :goto_f
    if-nez v3, :cond_49

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/internal/zzcmb;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    move v4, v10

    move v5, v4

    move v6, v5

    :goto_10
    iget-object v7, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v7

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzcmb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/zzcig;->zzan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v7

    const-string v8, "Dropping blacklisted raw event. appId"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v12

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzcmb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v9, v12}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzclq;->zzkl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzclq;->zzkm(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_11

    :cond_10
    move v7, v10

    goto :goto_12

    :cond_11
    :goto_11
    move v7, v11

    :goto_12
    if-nez v7, :cond_25

    const-string v7, "_err"

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcmb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v12

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v13, v7, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    const/16 v14, 0xb

    const-string v15, "_ev"

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcmb;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v16, v7

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1a

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v7

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzcmb;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/zzcig;->zzao(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzcmb;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzclq;->zzkn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    :cond_13
    iget-object v12, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzcmb;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    if-nez v12, :cond_14

    iget-object v12, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzcmb;

    new-array v13, v10, [Lcom/google/android/gms/internal/zzcmc;

    iput-object v13, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_14
    iget-object v12, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzcmb;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v13, v12

    move v14, v10

    move v15, v14

    move/from16 v16, v15

    :goto_13
    if-ge v14, v13, :cond_17

    aget-object v10, v12, v14

    const-string v11, "_c"

    iget-object v8, v10, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    const/4 v15, 0x1

    goto :goto_14

    :cond_15
    const-string v8, "_r"

    iget-object v9, v10, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v10, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    const/16 v16, 0x1

    :cond_16
    :goto_14
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_13

    :cond_17
    if-nez v15, :cond_18

    if-eqz v7, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v9, "Marking event as conversion"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/zzcmb;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcmb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcmb;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/zzcmc;

    new-instance v9, Lcom/google/android/gms/internal/zzcmc;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzcmc;-><init>()V

    const-string v10, "_c"

    iput-object v10, v9, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v9, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    array-length v10, v8

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aput-object v9, v8, v10

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcmb;

    iput-object v8, v9, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_18
    if-nez v16, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v9, "Marking event as real-time"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v10

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/zzcmb;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcmb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcmb;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/zzcmc;

    new-instance v9, Lcom/google/android/gms/internal/zzcmc;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzcmc;-><init>()V

    const-string v10, "_r"

    iput-object v10, v9, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v9, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    array-length v10, v8

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aput-object v9, v8, v10

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcmb;

    iput-object v8, v9, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbag()J

    move-result-wide v11

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v10 .. v18}, Lcom/google/android/gms/internal/zzcgo;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcgp;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gms/internal/zzcgp;->zzizb:J

    iget-object v10, v1, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/zzcgn;->zzix(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_1d

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcmb;

    const/4 v9, 0x0

    :goto_15
    iget-object v10, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v10, v10

    if-ge v9, v10, :cond_1e

    const-string v10, "_r"

    iget-object v11, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    aget-object v11, v11, v9

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    new-array v10, v10, [Lcom/google/android/gms/internal/zzcmc;

    if-lez v9, :cond_1a

    iget-object v11, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const/4 v12, 0x0

    invoke-static {v11, v12, v10, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    array-length v11, v10

    if-ge v9, v11, :cond_1b

    iget-object v11, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    add-int/lit8 v12, v9, 0x1

    array-length v13, v10

    sub-int/2addr v13, v9

    invoke-static {v11, v12, v10, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    iput-object v10, v8, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    goto :goto_16

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_1d
    const/4 v5, 0x1

    :cond_1e
    :goto_16
    iget-object v8, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcmb;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzclq;->zzjz(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_24

    if-eqz v7, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbag()J

    move-result-wide v10

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v9 .. v17}, Lcom/google/android/gms/internal/zzcgo;->zza(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/internal/zzcgp;

    move-result-object v7

    iget-wide v7, v7, Lcom/google/android/gms/internal/zzcgp;->zziyz:J

    iget-object v9, v1, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    sget-object v11, Lcom/google/android/gms/internal/zzchc;->zzjaq:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v7

    const-string v8, "Too many conversions. Not logging as conversion. appId"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzcmb;

    iget-object v8, v7, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_17
    if-ge v10, v9, :cond_21

    aget-object v13, v8, v10

    const-string v14, "_c"

    iget-object v15, v13, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1f

    move-object v12, v13

    goto :goto_18

    :cond_1f
    const-string v14, "_err"

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    const/4 v11, 0x1

    :cond_20
    :goto_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_21
    if-eqz v11, :cond_22

    if-eqz v12, :cond_22

    iget-object v8, v7, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const/4 v9, 0x1

    new-array v10, v9, [Lcom/google/android/gms/internal/zzcmc;

    const/4 v9, 0x0

    aput-object v12, v10, v9

    invoke-static {v8, v10}, Lcom/google/android/gms/common/util/zza;->zza([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/android/gms/internal/zzcmc;

    iput-object v8, v7, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    goto :goto_19

    :cond_22
    if-eqz v12, :cond_23

    const-string v7, "_err"

    iput-object v7, v12, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    const-wide/16 v7, 0xa

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    goto :goto_19

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v7

    const-string v8, "Did not find conversion parameter. appId"

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_24
    :goto_19
    iget-object v7, v3, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    add-int/lit8 v8, v6, 0x1

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcmb;

    aput-object v9, v7, v6

    move v6, v8

    :cond_25
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_10

    :cond_26
    iget-object v4, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzapa:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_27

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzcmb;

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    :cond_27
    iget-object v4, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {v1, v4, v6, v7}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmg;[Lcom/google/android/gms/internal/zzcmb;)[Lcom/google/android/gms/internal/zzcma;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcme;->zzjmi:[Lcom/google/android/gms/internal/zzcma;

    sget-object v4, Lcom/google/android/gms/internal/zzchc;->zzjac:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v4

    const-string v8, "measurement.event_sampling_enabled"

    invoke-virtual {v4, v6, v8}, Lcom/google/android/gms/internal/zzcig;->zzam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v6, v6

    new-array v6, v6, [Lcom/google/android/gms/internal/zzcmb;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzclq;->zzbaz()Ljava/security/SecureRandom;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1b
    if-ge v10, v9, :cond_39

    aget-object v12, v8, v10

    iget-object v13, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const-string v14, "_ep"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    const-string v13, "_en"

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/zzcgw;

    if-nez v14, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v14

    iget-object v15, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v15, v15, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    iget-object v13, v14, Lcom/google/android/gms/internal/zzcgw;->zzizo:Ljava/lang/Long;

    if-nez v13, :cond_2b

    iget-object v13, v14, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x1

    cmp-long v13, v15, v17

    if-lez v13, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v13, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v15, "_sr"

    move-object/from16 v25, v8

    iget-object v8, v14, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    invoke-static {v13, v15, v8}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    goto :goto_1c

    :cond_29
    move-object/from16 v25, v8

    :goto_1c
    iget-object v8, v14, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    if-eqz v8, :cond_2a

    iget-object v8, v14, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v8, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v13, "_efs"

    move/from16 v26, v9

    const-wide/16 v14, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v13, v9}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v8

    iput-object v8, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    goto :goto_1d

    :cond_2a
    move/from16 v26, v9

    :goto_1d
    add-int/lit8 v8, v11, 0x1

    aput-object v12, v6, v11

    goto :goto_1f

    :cond_2b
    move-object/from16 v25, v8

    move/from16 v26, v9

    move-object/from16 v43, v2

    move-object/from16 v44, v3

    move-object v8, v4

    move/from16 v42, v5

    move-object/from16 v41, v7

    goto/16 :goto_22

    :cond_2c
    move-object/from16 v25, v8

    move/from16 v26, v9

    const-string v8, "_dbg"

    const-wide/16 v13, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v12, v8, v9}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcmb;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    iget-object v13, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v13}, Lcom/google/android/gms/internal/zzcig;->zzap(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_1e

    :cond_2d
    const/4 v8, 0x1

    :goto_1e
    if-gtz v8, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v13, "Sample rate must be positive. event, rate"

    iget-object v14, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v13, v14, v8}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v8, v11, 0x1

    aput-object v12, v6, v11

    :cond_2e
    :goto_1f
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    move/from16 v42, v5

    move-object/from16 v41, v7

    move v11, v8

    const/4 v3, 0x0

    move-object v8, v4

    :goto_20
    const-wide/16 v4, 0x1

    goto/16 :goto_23

    :cond_2f
    iget-object v9, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgw;

    if-nez v9, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v9

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    iget-object v14, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v9, v13, v14}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v9

    if-nez v9, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v13, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    iget-object v15, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v9, v13, v14, v15}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lcom/google/android/gms/internal/zzcgw;

    iget-object v13, v2, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    iget-object v14, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    iget-object v15, v12, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v27, v9

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    invoke-direct/range {v27 .. v40}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    const-string v13, "_eid"

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmb;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_31

    const/4 v14, 0x1

    goto :goto_21

    :cond_31
    const/4 v14, 0x0

    :goto_21
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v8, v15, :cond_33

    add-int/lit8 v8, v11, 0x1

    aput-object v12, v6, v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2e

    iget-object v11, v9, Lcom/google/android/gms/internal/zzcgw;->zzizo:Ljava/lang/Long;

    if-nez v11, :cond_32

    iget-object v11, v9, Lcom/google/android/gms/internal/zzcgw;->zzizp:Ljava/lang/Long;

    if-nez v11, :cond_32

    iget-object v11, v9, Lcom/google/android/gms/internal/zzcgw;->zzizq:Ljava/lang/Boolean;

    if-eqz v11, :cond_2e

    :cond_32
    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v11}, Lcom/google/android/gms/internal/zzcgw;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v9

    iget-object v11, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-interface {v4, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    :cond_33
    invoke-virtual {v7, v8}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v13, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v15, "_sr"

    move-object/from16 v41, v7

    int-to-long v7, v8

    move/from16 v42, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v13, v15, v5}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v5

    iput-object v5, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    add-int/lit8 v5, v11, 0x1

    aput-object v12, v6, v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_34

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v9, v8, v7, v8}, Lcom/google/android/gms/internal/zzcgw;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v9

    :cond_34
    iget-object v7, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    iget-object v8, v12, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/google/android/gms/internal/zzcgw;->zzbc(J)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v43, v2

    move-object/from16 v44, v3

    move-object v8, v4

    move v11, v5

    :goto_22
    const/4 v3, 0x0

    goto/16 :goto_20

    :cond_35
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    move/from16 v42, v5

    move-object/from16 v41, v7

    iget-wide v2, v9, Lcom/google/android/gms/internal/zzcgw;->zzizn:J

    iget-object v5, v12, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long v2, v15, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v15, 0x5265c00

    cmp-long v2, v2, v15

    if-ltz v2, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v3, "_efs"

    move-object/from16 v45, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    const-string v3, "_sr"

    int-to-long v7, v8

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v2, v3, v13}, Lcom/google/android/gms/internal/zzclq;->zza([Lcom/google/android/gms/internal/zzcmc;Ljava/lang/String;Ljava/lang/Object;)[Lcom/google/android/gms/internal/zzcmc;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    add-int/lit8 v2, v11, 0x1

    aput-object v12, v6, v11

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v7, 0x0

    invoke-virtual {v9, v7, v3, v8}, Lcom/google/android/gms/internal/zzcgw;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v9

    :cond_36
    iget-object v3, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    iget-object v7, v12, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v9, v7, v8}, Lcom/google/android/gms/internal/zzcgw;->zzbc(J)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v7

    move-object/from16 v8, v45

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v2

    :cond_37
    const/4 v3, 0x0

    goto :goto_23

    :cond_38
    move-object v8, v4

    const-wide/16 v4, 0x1

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v12, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v9, v13, v3, v3}, Lcom/google/android/gms/internal/zzcgw;->zza(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v7

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_23
    add-int/lit8 v10, v10, 0x1

    move-object v4, v8

    move-object/from16 v8, v25

    move/from16 v9, v26

    move-object/from16 v7, v41

    move/from16 v5, v42

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    goto/16 :goto_1b

    :cond_39
    move-object/from16 v43, v2

    move-object v2, v3

    move-object v8, v4

    move/from16 v42, v5

    const/4 v3, 0x0

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v4, v4

    if-ge v11, v4, :cond_3a

    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/internal/zzcmb;

    iput-object v4, v2, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    :cond_3a
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzcgw;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V

    goto :goto_24

    :cond_3b
    move-object/from16 v43, v2

    move-object v2, v3

    move/from16 v42, v5

    const/4 v3, 0x0

    :cond_3c
    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    const/4 v4, 0x0

    :goto_25
    iget-object v5, v2, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v5, v5

    if-ge v4, v5, :cond_3f

    iget-object v5, v2, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    aget-object v5, v5, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3d

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    iput-object v6, v2, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    :cond_3d
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v2, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_3e

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    iput-object v5, v2, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    :cond_3f
    move-object/from16 v4, v43

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v6

    if-nez v6, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_27

    :cond_40
    iget-object v7, v2, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v7, v7

    if-lez v7, :cond_44

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgh;->zzaxf()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_41

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_26

    :cond_41
    move-object v11, v3

    :goto_26
    iput-object v11, v2, Lcom/google/android/gms/internal/zzcme;->zzjlv:Ljava/lang/Long;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgh;->zzaxe()J

    move-result-wide v11

    cmp-long v13, v11, v9

    if-nez v13, :cond_42

    move-wide v11, v7

    :cond_42
    cmp-long v7, v11, v9

    if-eqz v7, :cond_43

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_43
    iput-object v3, v2, Lcom/google/android/gms/internal/zzcme;->zzjlu:Ljava/lang/Long;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgh;->zzaxo()V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgh;->zzaxl()J

    move-result-wide v7

    long-to-int v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcme;->zzjmg:Ljava/lang/Integer;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/zzcgh;->zzal(J)V

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/zzcgh;->zzam(J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgh;->zzaxw()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcme;->zzixw:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    :cond_44
    :goto_27
    iget-object v3, v2, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    array-length v3, v3

    if-lez v3, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v3

    iget-object v6, v4, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/zzcig;->zzjs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcly;

    move-result-object v3

    if-eqz v3, :cond_46

    iget-object v6, v3, Lcom/google/android/gms/internal/zzcly;->zzjkw:Ljava/lang/Long;

    if-nez v6, :cond_45

    goto :goto_29

    :cond_45
    iget-object v3, v3, Lcom/google/android/gms/internal/zzcly;->zzjkw:Ljava/lang/Long;

    :goto_28
    iput-object v3, v2, Lcom/google/android/gms/internal/zzcme;->zzjmn:Ljava/lang/Long;

    goto :goto_2a

    :cond_46
    :goto_29
    iget-object v3, v4, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcme;->zzixs:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_47

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_28

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v6, "Did not find measurement config or missing version info. appId"

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcim$zza;->zzjgi:Lcom/google/android/gms/internal/zzcme;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    move/from16 v10, v42

    invoke-virtual {v3, v2, v10}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcme;Z)Z

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    iget-object v3, v4, Lcom/google/android/gms/internal/zzcim$zza;->zzjgj:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzah(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    :try_start_21
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_b
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_2b

    :catch_b
    move-exception v0

    move-object v3, v0

    :try_start_22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v5}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    const/4 v2, 0x1

    return v2

    :cond_49
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    const/4 v2, 0x0

    return v2

    :catchall_6
    move-exception v0

    :goto_2c
    move-object v2, v0

    :goto_2d
    if-eqz v9, :cond_4a

    :try_start_24
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v2
.end method

.method private final zzjw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;
    .locals 23
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    :try_start_0
    iget-object v3, v15, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/internal/zzbhe;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v4, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_1
    new-instance v21, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxg()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxh()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxi()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxj()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxk()Z

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxx()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgh;->zzaxy()Z

    move-result v22

    move-object/from16 v0, v21

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move/from16 v19, v20

    move/from16 v20, v22

    invoke-direct/range {v0 .. v20}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    return-object v21

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "No app data available; dropping"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgn;->zzaya()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    const-string v2, "firebase_analytics_collection_enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzcgn;->zziy(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/zzbz;->zzaji()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchx;->zzbn(Z)Z

    move-result v0

    return v0
.end method

.method protected final start()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->zzayh()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcw:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcw:Lcom/google/android/gms/internal/zzcia;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzazv()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzeb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzeb(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhe;->zzamu()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zzbk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcla;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazm()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchx;->zzjo(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckg;->disconnect()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckg;->zzyc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzchx;->zzjo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcw:Lcom/google/android/gms/internal/zzcia;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcx:Lcom/google/android/gms/internal/zzcic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcic;->zzjq(Ljava/lang/String;)V

    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzchx;->zzjcx:Lcom/google/android/gms/internal/zzcic;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcic;->zzazr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcjn;->zzjp(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcjn;->zziwf:Lcom/google/android/gms/internal/zzcim;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcim;->zzazv()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzckg;->zzbar()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchx;->zzazq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_po"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "auto"

    const-string v3, "_ou"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/zzcjn;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckg;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    return-void
.end method

.method protected final zza(ILjava/lang/Throwable;[B)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    :try_start_0
    new-array p3, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_5

    :cond_1
    if-nez p2, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v2, p1, p3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v1, "queue"

    const-string v2, "rowid=?"

    invoke-virtual {p2, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eq p2, v3, :cond_2

    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "Deleted fewer rows from queue than expected"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p1

    :try_start_4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string p3, "Failed to delete a bundle in a queue table"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbai()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbah()V

    goto :goto_1

    :cond_4
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    :goto_1
    iput-wide v4, p0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw p1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_7

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move v3, v0

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzchx;->zzjct:Lcom/google/android/gms/internal/zzcia;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_8
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    return-void

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)[B
    .locals 33
    .param p1    # Lcom/google/android/gms/internal/zzcha;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static {}, Lcom/google/android/gms/internal/zzcim;->zzawi()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    new-instance v8, Lcom/google/android/gms/internal/zzcmd;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzcmd;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v6, 0x0

    if-nez v9, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Log and bundle not available. package_name"

    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-array v1, v6, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v5, v11

    goto/16 :goto_9

    :cond_0
    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->zzaxk()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v2, :cond_1

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Log and bundle disabled. package_name"

    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_4
    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v2, :cond_2

    :try_start_5
    const-string v2, "ecommerce_purchase"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_3

    :cond_2
    :try_start_6
    invoke-direct {v11, v10, v1}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcha;)Z

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v2, :cond_3

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Failed to handle purchase event at single event bundle creation. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :try_start_8
    new-instance v7, Lcom/google/android/gms/internal/zzcme;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzcme;-><init>()V

    const/4 v5, 0x1

    new-array v2, v5, [Lcom/google/android/gms/internal/zzcme;

    aput-object v7, v2, v6

    iput-object v2, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjlo:Ljava/lang/Integer;

    const-string v2, "android"

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjlw:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->zzaxh()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzixt:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzifm:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->zzaxg()J

    move-result-wide v2

    const-wide/32 v12, -0x80000000

    cmp-long v4, v2, v12

    const/4 v15, 0x0

    if-nez v4, :cond_4

    move-object v2, v15

    goto :goto_1

    :cond_4
    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjmj:Ljava/lang/Integer;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->zzaxi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjma:Ljava/lang/Long;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzixs:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->zzaxj()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjmf:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->isEnabled()Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_5

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzaye()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v11, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    iget-object v3, v7, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgn;->zziz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    iput-object v15, v7, Lcom/google/android/gms/internal/zzcme;->zzjmo:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchx;->zzjm(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->zzaxy()Z

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    :try_start_b
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjmd:Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_6
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjlx:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzdb:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgu;->zzayu()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjlz:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawo()Lcom/google/android/gms/internal/zzcgu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgu;->zzayv()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjly:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->getAppInstanceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zzjme:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/zzcme;->zziya:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzja(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/zzcmg;

    iput-object v3, v7, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    move v3, v6

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-ge v3, v4, :cond_7

    :try_start_d
    new-instance v4, Lcom/google/android/gms/internal/zzcmg;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzcmg;-><init>()V

    iget-object v12, v7, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    aput-object v4, v12, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzclp;

    iget-object v12, v12, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    iput-object v12, v4, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/zzclp;

    iget-wide v12, v12, Lcom/google/android/gms/internal/zzclp;->zzjjm:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v4, Lcom/google/android/gms/internal/zzcmg;->zzjms:Ljava/lang/Long;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v12

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/zzclp;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {v12, v4, v13}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmg;Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :try_start_e
    iget-object v2, v1, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v4

    const-string v2, "_iap"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const-wide/16 v12, 0x1

    if-eqz v2, :cond_8

    :try_start_f
    const-string v2, "_c"

    invoke-virtual {v4, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Marking in-app purchase as real-time"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    const-string v2, "_r"

    invoke-virtual {v4, v2, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_8
    :try_start_10
    const-string v2, "_o"

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzclq;->zzkj(Ljava/lang/String;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v2, :cond_9

    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const-string v3, "_dbg"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v2, v4, v3, v14}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    const-string v3, "_r"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v4, v3, v12}, Lcom/google/android/gms/internal/zzclq;->zza(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_9
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const-wide/16 v26, 0x0

    if-nez v2, :cond_a

    :try_start_13
    new-instance v2, Lcom/google/android/gms/internal/zzcgw;

    iget-object v14, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x0

    iget-wide v12, v1, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v28, v12

    move-object v12, v2

    move-object v13, v10

    move-object/from16 v30, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v28

    invoke-direct/range {v12 .. v25}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-wide/from16 v12, v26

    goto :goto_3

    :cond_a
    move-object/from16 v30, v15

    :try_start_14
    iget-wide v12, v2, Lcom/google/android/gms/internal/zzcgw;->zzizm:J

    iget-wide v14, v1, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/zzcgw;->zzbb(J)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgw;->zzayw()Lcom/google/android/gms/internal/zzcgw;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V

    :goto_3
    new-instance v14, Lcom/google/android/gms/internal/zzcgv;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcha;->zziyf:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzcha;->zzizu:J
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-wide/from16 v16, v1

    move-object v1, v14

    move-object v2, v11

    move-object/from16 v18, v4

    move-object v4, v10

    move v11, v5

    move-object v5, v15

    move-object v15, v7

    move-wide/from16 v6, v16

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-wide v8, v12

    move-object/from16 v10, v18

    :try_start_15
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/zzcgv;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    new-instance v1, Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcmb;-><init>()V

    new-array v2, v11, [Lcom/google/android/gms/internal/zzcmb;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v15, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    iget-wide v4, v14, Lcom/google/android/gms/internal/zzcgv;->zzfij:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzcgv;->mName:Ljava/lang/String;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    iget-wide v4, v14, Lcom/google/android/gms/internal/zzcgv;->zzizi:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcmb;->zzjlj:Ljava/lang/Long;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/android/gms/internal/zzcmc;

    iput-object v2, v1, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    iget-object v2, v14, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgx;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v3

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/google/android/gms/internal/zzcmc;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzcmc;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    add-int/lit8 v8, v4, 0x1

    aput-object v6, v7, v4

    iput-object v5, v6, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    iget-object v4, v14, Lcom/google/android/gms/internal/zzcgv;->zzizj:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcgx;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-object/from16 v5, p0

    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/internal/zzclq;->zza(Lcom/google/android/gms/internal/zzcmc;Ljava/lang/Object;)V

    move v4, v8

    goto :goto_4

    :cond_b
    move-object/from16 v2, v32

    move-object/from16 v5, p0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v15, Lcom/google/android/gms/internal/zzcme;->zzjlq:[Lcom/google/android/gms/internal/zzcmg;

    iget-object v7, v15, Lcom/google/android/gms/internal/zzcme;->zzjlp:[Lcom/google/android/gms/internal/zzcmb;

    invoke-direct {v5, v4, v6, v7}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmg;[Lcom/google/android/gms/internal/zzcmb;)[Lcom/google/android/gms/internal/zzcma;

    move-result-object v4

    iput-object v4, v15, Lcom/google/android/gms/internal/zzcme;->zzjmi:[Lcom/google/android/gms/internal/zzcma;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    iput-object v4, v15, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    iput-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxf()J

    move-result-wide v6

    cmp-long v1, v6, v26

    if-eqz v1, :cond_c

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5

    :cond_c
    move-object/from16 v1, v30

    :goto_5
    iput-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjlv:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxe()J

    move-result-wide v8

    cmp-long v1, v8, v26

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    move-wide v6, v8

    :goto_6
    cmp-long v1, v6, v26

    if-eqz v1, :cond_e

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_7

    :cond_e
    move-object/from16 v1, v30

    :goto_7
    iput-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjlu:Ljava/lang/Long;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxo()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxl()J

    move-result-wide v6

    long-to-int v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjmg:Ljava/lang/Integer;

    const-wide/16 v6, 0x2e86

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjmb:Ljava/lang/Long;

    iget-object v1, v5, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjlr:Ljava/lang/Long;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjmh:Ljava/lang/Boolean;

    iget-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjls:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzal(J)V

    iget-object v1, v15, Lcom/google/android/gms/internal/zzcme;->zzjlt:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/zzcgh;->zzam(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    move-object/from16 v1, v31

    :try_start_17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfjs;->zzho()I

    move-result v2

    new-array v2, v2, [B

    array-length v4, v2

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzfjk;->zzo([BII)Lcom/google/android/gms/internal/zzfjk;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzfjk;->zzcwt()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzclq;->zzq([B)[B

    move-result-object v1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v30

    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v5, v11

    :goto_8
    move-object v1, v0

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v1
.end method

.method public final zzawk()Lcom/google/android/gms/internal/zzcgd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfr:Lcom/google/android/gms/internal/zzcgd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfr:Lcom/google/android/gms/internal/zzcgd;

    return-object v0
.end method

.method public final zzawl()Lcom/google/android/gms/internal/zzcgk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfq:Lcom/google/android/gms/internal/zzcgk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfq:Lcom/google/android/gms/internal/zzcgk;

    return-object v0
.end method

.method public final zzawm()Lcom/google/android/gms/internal/zzcjn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfm:Lcom/google/android/gms/internal/zzcjn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfm:Lcom/google/android/gms/internal/zzcjn;

    return-object v0
.end method

.method public final zzawn()Lcom/google/android/gms/internal/zzchh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfn:Lcom/google/android/gms/internal/zzchh;

    return-object v0
.end method

.method public final zzawo()Lcom/google/android/gms/internal/zzcgu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfl:Lcom/google/android/gms/internal/zzcgu;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfl:Lcom/google/android/gms/internal/zzcgu;

    return-object v0
.end method

.method public final zzawp()Lcom/google/android/gms/internal/zzckg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfk:Lcom/google/android/gms/internal/zzckg;

    return-object v0
.end method

.method public final zzawq()Lcom/google/android/gms/internal/zzckc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfj:Lcom/google/android/gms/internal/zzckc;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfj:Lcom/google/android/gms/internal/zzckc;

    return-object v0
.end method

.method public final zzawr()Lcom/google/android/gms/internal/zzchi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfh:Lcom/google/android/gms/internal/zzchi;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfh:Lcom/google/android/gms/internal/zzchi;

    return-object v0
.end method

.method public final zzaws()Lcom/google/android/gms/internal/zzcgo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfg:Lcom/google/android/gms/internal/zzcgo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfg:Lcom/google/android/gms/internal/zzcgo;

    return-object v0
.end method

.method public final zzawt()Lcom/google/android/gms/internal/zzchk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjff:Lcom/google/android/gms/internal/zzchk;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjff:Lcom/google/android/gms/internal/zzchk;

    return-object v0
.end method

.method public final zzawu()Lcom/google/android/gms/internal/zzclq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfe:Lcom/google/android/gms/internal/zzclq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfe:Lcom/google/android/gms/internal/zzclq;

    return-object v0
.end method

.method public final zzawv()Lcom/google/android/gms/internal/zzcig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfb:Lcom/google/android/gms/internal/zzcig;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfb:Lcom/google/android/gms/internal/zzcig;

    return-object v0
.end method

.method public final zzaww()Lcom/google/android/gms/internal/zzclf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfa:Lcom/google/android/gms/internal/zzclf;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfa:Lcom/google/android/gms/internal/zzclf;

    return-object v0
.end method

.method public final zzawx()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    return-object v0
.end method

.method public final zzawy()Lcom/google/android/gms/internal/zzchm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    return-object v0
.end method

.method public final zzawz()Lcom/google/android/gms/internal/zzchx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjex:Lcom/google/android/gms/internal/zzchx;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjex:Lcom/google/android/gms/internal/zzchx;

    return-object v0
.end method

.method public final zzaxa()Lcom/google/android/gms/internal/zzcgn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    return-object v0
.end method

.method protected final zzazv()Z
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfu:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfu:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfu:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzeb(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzclq;->zzeb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbhe;->zzamu()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcid;->zzbk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcla;->zzk(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->getGmpAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzkg(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjft:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzazx()Lcom/google/android/gms/internal/zzchm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjey:Lcom/google/android/gms/internal/zzchm;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final zzazy()Lcom/google/android/gms/internal/zzcih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjez:Lcom/google/android/gms/internal/zzcih;

    return-object v0
.end method

.method public final zzazz()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfc:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcgl;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcgl;-><init>(Lcom/google/android/gms/internal/zzcgl;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v3, :cond_3

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyl:J

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-boolean v2, v1, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    new-instance v2, Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-wide v5, v3, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyj:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcom/google/android/gms/internal/zzcln;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    move p1, v2

    :cond_4
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    new-instance v9, Lcom/google/android/gms/internal/zzclp;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzclp;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    if-eqz p1, :cond_6

    new-instance p1, Lcom/google/android/gms/internal/zzcha;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzcgl;->zziyh:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgl;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v4, v3, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-wide v12, v2, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/internal/zzclq;->zzd(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-boolean v5, v3, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v5, :cond_1

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const-wide/16 v6, 0x0

    cmp-long v6, v12, v6

    const/4 v7, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-gez v6, :cond_2

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string v8, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v9, v7, [Ljava/lang/String;

    aput-object v4, v9, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v15

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/zzcgo;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v10, "User property timed out"

    iget-object v11, v8, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v15

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v14, v14, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v10, v11, v14, v15}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v9, v8, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    if-eqz v9, :cond_4

    new-instance v9, Lcom/google/android/gms/internal/zzcha;

    iget-object v10, v8, Lcom/google/android/gms/internal/zzcgl;->zziyk:Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v9, v10, v12, v13}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {v1, v9, v3}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v9

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v8, v8, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v9, v4, v8}, Lcom/google/android/gms/internal/zzcgo;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    if-gez v6, :cond_6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v8, "Invalid time querying expired conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v8, v9, v10}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_6
    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v9, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/zzcgo;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v10

    const-string v11, "User property expired"

    iget-object v14, v9, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v15

    iget-object v7, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v7, v7, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v15, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v10, v11, v14, v7, v15}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v7

    iget-object v10, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v10, v10, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v7, v4, v10}, Lcom/google/android/gms/internal/zzcgo;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v9, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    if-eqz v7, :cond_8

    iget-object v7, v9, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v7

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v9, v9, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v7, v4, v9}, Lcom/google/android/gms/internal/zzcgo;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    goto :goto_3

    :cond_9
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v5, :cond_a

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Lcom/google/android/gms/internal/zzcha;

    new-instance v10, Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v10, v9, v12, v13}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {v1, v10, v3}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    if-gez v6, :cond_b

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v8, "Invalid time querying triggered conditional properties"

    invoke-static {v4}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v8, v4, v5, v7}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v14, 0x0

    goto :goto_5

    :cond_b
    const-string v6, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v8, v14

    const/4 v4, 0x1

    aput-object v7, v8, v4

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v8, v7

    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/internal/zzcgo;->zzc(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :goto_5
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/google/android/gms/internal/zzcgl;

    if-eqz v11, :cond_c

    iget-object v5, v11, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    new-instance v9, Lcom/google/android/gms/internal/zzclp;

    iget-object v6, v11, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v7, v11, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object v5, v9

    move-object v14, v9

    move-wide v9, v12

    move-object/from16 v17, v4

    move-object v4, v11

    move-object/from16 v11, v16

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzclp;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "User property triggered"

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    :goto_7
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "Too many active user properties, ignoring"

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v14, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    goto :goto_7

    :goto_8
    iget-object v5, v4, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    if-eqz v5, :cond_e

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcgl;->zziym:Lcom/google/android/gms/internal/zzcha;

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    new-instance v5, Lcom/google/android/gms/internal/zzcln;

    invoke-direct {v5, v14}, Lcom/google/android/gms/internal/zzcln;-><init>(Lcom/google/android/gms/internal/zzclp;)V

    iput-object v5, v4, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgl;)Z

    move-object/from16 v4, v17

    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_f
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    check-cast v15, Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v2, :cond_10

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/google/android/gms/internal/zzcha;

    new-instance v6, Lcom/google/android/gms/internal/zzcha;

    invoke-direct {v6, v5, v12, v13}, Lcom/google/android/gms/internal/zzcha;-><init>(Lcom/google/android/gms/internal/zzcha;J)V

    invoke-direct {v1, v6, v3}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v2
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcha;Ljava/lang/String;)V
    .locals 25
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/zzbhe;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v4, "_ui"

    iget-object v5, v1, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v15, Lcom/google/android/gms/internal/zzcgi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxg()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxi()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxj()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxk()Z

    move-result v14

    const/16 v16, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxd()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxx()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgh;->zzaxy()Z

    move-result v23

    move-object v2, v15

    move-object/from16 v24, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move/from16 v21, v22

    move/from16 v22, v23

    invoke-direct/range {v2 .. v22}, Lcom/google/android/gms/internal/zzcgi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZ)V

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcjl;)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfz:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/zzcim;->zzjfz:I

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzclq;->zzkd(Ljava/lang/String;)I

    move-result v4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v7, p1

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v5, "_ev"

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzclq;->zzl(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_4

    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_5
    move v11, v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v9, "_ev"

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcln;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzclq;->zzm(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/google/android/gms/internal/zzclp;

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcln;->zziyf:Ljava/lang/String;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    iget-wide v7, p1, Lcom/google/android/gms/internal/zzcln;->zzjji:J

    move-object v3, v1

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzclp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v2, "Setting user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v3

    iget-object v4, v1, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzclp;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "User property set"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/zzclp;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/internal/zzclp;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v3

    iget-object v4, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw p1
.end method

.method final zzb(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v1

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/16 v4, 0x130

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    if-nez p3, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3
    const/16 v5, 0x194

    if-nez v2, :cond_8

    if-ne p2, v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/internal/zzcgh;->zzas(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzcig;->zzju(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_6

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzchx;->zzjct:Lcom/google/android/gms/internal/zzcia;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p2}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    goto/16 :goto_9

    :cond_8
    :goto_3
    const/4 p3, 0x0

    if-eqz p5, :cond_9

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_4

    :cond_9
    move-object p5, p3

    :goto_4
    if-eqz p5, :cond_a

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object p5, p3

    :goto_5
    if-eq p2, v5, :cond_c

    if-ne p2, v4, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/google/android/gms/internal/zzcig;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_d

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    return-void

    :cond_c
    :goto_7
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object p5

    invoke-virtual {p5, p1}, Lcom/google/android/gms/internal/zzcig;->zzjs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcly;

    move-result-object p5

    if-nez p5, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3}, Lcom/google/android/gms/internal/zzcig;->zzb(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_d

    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_d
    :try_start_5
    iget-object p3, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {p3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgh;->zzar(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    if-ne p2, v5, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazg()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbai()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzbah()V

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgd:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    throw p1
.end method

.method public final zzbaa()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfd:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object v0
.end method

.method public final zzbab()Lcom/google/android/gms/internal/zzchq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfi:Lcom/google/android/gms/internal/zzchq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcim;->zza(Lcom/google/android/gms/internal/zzcjl;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfi:Lcom/google/android/gms/internal/zzchq;

    return-object v0
.end method

.method final zzbaf()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzchx;->zzjcw:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    return-wide v0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcim;->zzjgg:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzbah()V
    .locals 18
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawp()Lcom/google/android/gms/internal/zzckg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzckg;->zzbas()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Upload data called on the client side before use of service was decided"

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    iput-boolean v3, v1, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Upload called in the client side when service should be used"

    goto :goto_0

    :cond_2
    iget-wide v4, v1, Lcom/google/android/gms/internal/zzcim;->zzjgc:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v4, v1, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Uploading requested multiple times"

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzchq;->zzzs()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Network not connected, ignoring upload request"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v4, v1, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzayc()J

    move-result-wide v8

    sub-long v8, v4, v8

    const/4 v10, 0x0

    invoke-direct {v1, v10, v8, v9}, Lcom/google/android/gms/internal/zzcim;->zzg(Ljava/lang/String;J)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/zzchx;->zzjcr:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcia;->get()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v7, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzcgo;->zzayf()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-wide/16 v8, -0x1

    if-nez v7, :cond_13

    iget-wide v11, v1, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    cmp-long v7, v11, v8

    if-nez v7, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgo;->zzaym()J

    move-result-wide v7

    iput-wide v7, v1, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    :cond_8
    iget-object v7, v1, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    sget-object v8, Lcom/google/android/gms/internal/zzchc;->zzjaj:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v7

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    sget-object v9, Lcom/google/android/gms/internal/zzchc;->zzjak:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v8, v6, v9}, Lcom/google/android/gms/internal/zzcgn;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzchd;)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v9

    invoke-virtual {v9, v6, v7, v8}, Lcom/google/android/gms/internal/zzcgo;->zzl(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gms/internal/zzcme;

    iget-object v11, v9, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v8, v9, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    goto :goto_4

    :cond_a
    move-object v8, v10

    :goto_4
    if-eqz v8, :cond_c

    move v9, v3

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_c

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/zzcme;

    iget-object v12, v11, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v11, v11, Lcom/google/android/gms/internal/zzcme;->zzjmc:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-interface {v7, v3, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    goto :goto_6

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_c
    :goto_6
    new-instance v8, Lcom/google/android/gms/internal/zzcmd;

    invoke-direct {v8}, Lcom/google/android/gms/internal/zzcmd;-><init>()V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/google/android/gms/internal/zzcme;

    iput-object v9, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzaye()Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, v1, Lcom/google/android/gms/internal/zzcim;->zzjew:Lcom/google/android/gms/internal/zzcgn;

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/zzcgn;->zziz(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    move v11, v2

    goto :goto_7

    :cond_d
    move v11, v3

    :goto_7
    move v12, v3

    :goto_8
    iget-object v13, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    array-length v13, v13

    if-ge v12, v13, :cond_f

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/zzcme;

    aput-object v14, v13, v12

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v13, v13, v12

    const-wide/16 v14, 0x2e86

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lcom/google/android/gms/internal/zzcme;->zzjmb:Ljava/lang/Long;

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v13, v13, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v13, Lcom/google/android/gms/internal/zzcme;->zzjlr:Ljava/lang/Long;

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v13, v13, v12

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iput-object v14, v13, Lcom/google/android/gms/internal/zzcme;->zzjmh:Ljava/lang/Boolean;

    if-nez v11, :cond_e

    iget-object v13, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v13, v13, v12

    iput-object v10, v13, Lcom/google/android/gms/internal/zzcme;->zzjmo:Ljava/lang/String;

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v7

    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzcmd;)Ljava/lang/String;

    move-result-object v10

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzclq;->zzb(Lcom/google/android/gms/internal/zzcmd;)[B

    move-result-object v15

    sget-object v7, Lcom/google/android/gms/internal/zzchc;->zzjat:Lcom/google/android/gms/internal/zzchd;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchd;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v14, Ljava/net/URL;

    invoke-direct {v14, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v2

    invoke-static {v11}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    iget-object v11, v1, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;

    if-eqz v11, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v11, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v1, Lcom/google/android/gms/internal/zzcim;->zzjfx:Ljava/util/List;

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/zzchx;->zzjcs:Lcom/google/android/gms/internal/zzcia;

    invoke-virtual {v9, v4, v5}, Lcom/google/android/gms/internal/zzcia;->set(J)V

    const-string v4, "?"

    iget-object v5, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    array-length v5, v5

    if-lez v5, :cond_12

    iget-object v4, v8, Lcom/google/android/gms/internal/zzcmd;->zzjlm:[Lcom/google/android/gms/internal/zzcme;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/android/gms/internal/zzcme;->zzcn:Ljava/lang/String;

    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v8, "Uploading data. app, uncompressed size, data"

    array-length v9, v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v4, v9, v10}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, v1, Lcom/google/android/gms/internal/zzcim;->zzjge:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzbab()Lcom/google/android/gms/internal/zzchq;

    move-result-object v12

    new-instance v2, Lcom/google/android/gms/internal/zzcip;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzcip;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-static {v14}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v15}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzchu;

    const/16 v16, 0x0

    move-object v11, v5

    move-object v13, v6

    move-object/from16 v17, v2

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/zzchu;-><init>(Lcom/google/android/gms/internal/zzchq;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/internal/zzchs;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzcih;->zzh(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v4, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v7}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_13
    iput-wide v8, v1, Lcom/google/android/gms/internal/zzcim;->zzjgb:J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzcgn;->zzayc()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/zzcgo;->zzba(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcgh;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    iput-boolean v3, v1, Lcom/google/android/gms/internal/zzcim;->zzjgf:Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzban()V

    throw v2
.end method

.method final zzbak()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjga:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjga:I

    return-void
.end method

.method final zzbal()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfs:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazh()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "This instance being marked as an uploader"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbam()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbae()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfw:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcim;->zza(Ljava/nio/channels/FileChannel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawn()Lcom/google/android/gms/internal/zzchh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchh;->zzaza()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcim;->zzjfw:Ljava/nio/channels/FileChannel;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzcim;->zza(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Storage version upgraded. Previous, current version"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Storage version upgrade failed. Previous, current version"

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfs:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    :cond_3
    return-void
.end method

.method public final zzbo(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcim;->zzbaj()V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgo;->zzah(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Removing conditional user property"

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzai(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzcgl;->zziyi:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzcgo;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    if-eqz v2, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzcha;->zzizt:Lcom/google/android/gms/internal/zzcgx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcgx;->zzayx()Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    move-object v2, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawu()Lcom/google/android/gms/internal/zzclq;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzcha;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzcgl;->zziyf:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyo:Lcom/google/android/gms/internal/zzcha;

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzcha;->zzizu:J

    const/4 p1, 0x1

    const/4 v7, 0x0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-wide v4, v5

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/internal/zzcha;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcgl;->zziyg:Lcom/google/android/gms/internal/zzcln;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Removing user property"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/zzcgo;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzchm;->zzazi()Lcom/google/android/gms/internal/zzcho;

    move-result-object p2

    const-string v0, "User property removed"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcln;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw p1
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcgi;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v5, "apps"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "user_attributes"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "conditional_properties"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "raw_events_metadata"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "queue"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    const-string v5, "audience_filter_values"

    const-string v6, "app_id=?"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/2addr v4, v2

    if-lez v4, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    iget-boolean v9, p1, Lcom/google/android/gms/internal/zzcgi;->zziye:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/zzcim;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzcgi;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzcim;->zzf(Lcom/google/android/gms/internal/zzcgi;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/zzcgl;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcim;->zzjw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_0
    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/zzcgi;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void
.end method

.method final zze(Lcom/google/android/gms/internal/zzcgl;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcgl;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzcim;->zzjw(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzcim;->zzc(Lcom/google/android/gms/internal/zzcgl;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_0
    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzcgi;)V
    .locals 19
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzcgh;->zzar(J)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgh;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawv()Lcom/google/android/gms/internal/zzcig;

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/zzcig;->zzjv(Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, v2, Lcom/google/android/gms/internal/zzcgi;->zzixx:Z

    if-nez v3, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    return-void

    :cond_2
    iget-wide v6, v2, Lcom/google/android/gms/internal/zzcgi;->zziyc:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v6

    :cond_3
    iget v3, v2, Lcom/google/android/gms/internal/zzcgi;->zziyd:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v9, v10, v3}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move v3, v14

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgo;->beginTransaction()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/zzcgo;->zzjb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgh;

    move-result-object v8

    const/16 v16, 0x0

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgh;->getGmpAppId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcgi;->zzixs:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgh;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static {v8}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-array v11, v15, [Ljava/lang/String;

    aput-object v8, v11, v14

    const-string v12, "events"

    const-string v13, "app_id=?"

    invoke-virtual {v10, v12, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    add-int/2addr v12, v14

    const-string v13, "user_attributes"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "conditional_properties"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "apps"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "raw_events"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "raw_events_metadata"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "event_filters"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "property_filters"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    const-string v13, "audience_filter_values"

    const-string v14, "app_id=?"

    invoke-virtual {v10, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    add-int/2addr v12, v10

    if-lez v12, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v10

    const-string v11, "Deleted application data. app, records"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v8, v12}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v0

    :try_start_2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v11, "Error deleting application data. appId, error"

    invoke-static {v8}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v11, v8, v10}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_0
    move-object/from16 v8, v16

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcgi;->zzifm:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "_pv"

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcgh;->zzvj()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/google/android/gms/internal/zzcha;

    const-string v10, "_au"

    new-instance v11, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v11, v9}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v12, "auto"

    move-object v8, v14

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/zzcim;->zzg(Lcom/google/android/gms/internal/zzcgi;)V

    if-nez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v10, "_f"

    :goto_1
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v8

    goto :goto_2

    :cond_8
    if-ne v3, v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const-string v10, "_v"

    goto :goto_1

    :cond_9
    move-object/from16 v8, v16

    :goto_2
    if-nez v8, :cond_13

    const-wide/32 v8, 0x36ee80

    div-long v10, v6, v8

    const-wide/16 v13, 0x1

    add-long/2addr v10, v13

    mul-long/2addr v10, v8

    if-nez v3, :cond_11

    new-instance v3, Lcom/google/android/gms/internal/zzcln;

    const-string v9, "_fot"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v17, "auto"

    move-object v8, v3

    move-wide v10, v6

    move-wide v4, v13

    move-object/from16 v13, v17

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_c"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_r"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_uwa"

    const-wide/16 v9, 0x0

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_pfo"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_sys"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_sysu"

    invoke-virtual {v3, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v8, v1, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v9, "PackageManager is null, first open report might be inaccurate. appId"

    iget-object v10, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    :cond_a
    :try_start_3
    iget-object v8, v1, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzbhe;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v10, "Package info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v8}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v16

    :goto_3
    if-eqz v8, :cond_d

    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    iget-wide v9, v8, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v11, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v8, v9, v11

    if-eqz v8, :cond_b

    const-string v8, "_uwa"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v8, 0x0

    goto :goto_4

    :cond_b
    move v8, v15

    :goto_4
    new-instance v14, Lcom/google/android/gms/internal/zzcln;

    const-string v9, "_fi"

    if-eqz v8, :cond_c

    move-wide v10, v4

    goto :goto_5

    :cond_c
    const-wide/16 v10, 0x0

    :goto_5
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "auto"

    move-object v8, v14

    move-wide v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    :try_start_5
    iget-object v8, v1, Lcom/google/android/gms/internal/zzcim;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzbhf;->zzdb(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbhe;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzbhe;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v8, v0

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v10, "Application info is null, first open report might be inaccurate. appId"

    iget-object v11, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v8}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v8, v16

    :goto_6
    if-eqz v8, :cond_f

    iget v9, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v9, v15

    if-eqz v9, :cond_e

    const-string v9, "_sys"

    invoke-virtual {v3, v9, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_e
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_f

    const-string v8, "_sysu"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v8

    iget-object v9, v2, Lcom/google/android/gms/internal/zzcgi;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    const-string v10, "first_open_count"

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/zzcgo;->zzal(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-ltz v10, :cond_10

    const-string v10, "_pfo"

    invoke-virtual {v3, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_10
    new-instance v14, Lcom/google/android/gms/internal/zzcha;

    const-string v9, "_f"

    new-instance v10, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v14

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    :goto_8
    invoke-virtual {v1, v14, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_9

    :cond_11
    move-wide v4, v13

    if-ne v3, v15, :cond_12

    new-instance v3, Lcom/google/android/gms/internal/zzcln;

    const-string v9, "_fvt"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "auto"

    move-object v8, v3

    move-wide v10, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzcln;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcln;Lcom/google/android/gms/internal/zzcgi;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzxf()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_c"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_r"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v14, Lcom/google/android/gms/internal/zzcha;

    const-string v9, "_v"

    new-instance v10, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v14

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    goto :goto_8

    :cond_12
    :goto_9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, "_et"

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v4, Lcom/google/android/gms/internal/zzcha;

    const-string v9, "_e"

    new-instance v10, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    :goto_a
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/zzcim;->zzb(Lcom/google/android/gms/internal/zzcha;Lcom/google/android/gms/internal/zzcgi;)V

    goto :goto_b

    :cond_13
    iget-boolean v3, v2, Lcom/google/android/gms/internal/zzcgi;->zzixy:Z

    if-eqz v3, :cond_14

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/zzcha;

    const-string v9, "_cd"

    new-instance v10, Lcom/google/android/gms/internal/zzcgx;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/zzcgx;-><init>(Landroid/os/Bundle;)V

    const-string v11, "auto"

    move-object v8, v4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/zzcha;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcgx;Ljava/lang/String;J)V

    goto :goto_a

    :cond_14
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcim;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcgo;->endTransaction()V

    throw v2
.end method

.method final zzi(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzjfy:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzjx(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzcio;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcio;-><init>(Lcom/google/android/gms/internal/zzcim;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcih;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcim;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v1

    const-string v2, "Failed to get app instance id. appId"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzws()Lcom/google/android/gms/common/util/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcim;->zzata:Lcom/google/android/gms/common/util/zzd;

    return-object v0
.end method

.method final zzxf()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcim;->zzdtb:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
