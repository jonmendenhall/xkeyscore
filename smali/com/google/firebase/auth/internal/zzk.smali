.class public final Lcom/google/firebase/auth/internal/zzk;
.super Ljava/lang/Object;


# static fields
.field private static zzecc:Lcom/google/android/gms/internal/zzbgg;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private zzdcv:Landroid/os/HandlerThread;

.field private final zzmcx:Lcom/google/firebase/FirebaseApp;

.field volatile zzmhs:J

.field volatile zzmht:J

.field private zzmhu:J

.field private zzz:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "TokenRefresher"

    const-string v2, "FirebaseAuth:"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/auth/internal/zzk;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 3
    .param p1    # Lcom/google/firebase/FirebaseApp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/firebase/auth/internal/zzk;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    const-string v1, "Initializing TokenRefresher"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmcx:Lcom/google/firebase/FirebaseApp;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TokenRefresher"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzdcv:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzdcv:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzdcv:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/google/firebase/auth/internal/zzl;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmcx:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/firebase/auth/internal/zzl;-><init>(Lcom/google/firebase/auth/internal/zzk;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzk;->zzz:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmhu:J

    return-void
.end method

.method static synthetic zzbsf()Lcom/google/android/gms/internal/zzbgg;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/zzk;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzz:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzbsd()V
    .locals 6

    sget-object v0, Lcom/google/firebase/auth/internal/zzk;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    iget-wide v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmhs:J

    iget-wide v3, p0, Lcom/google/firebase/auth/internal/zzk;->zzmhu:J

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scheduling refresh for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzk;->cancel()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzamg()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzk;->zzmhs:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmhu:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmht:J

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzz:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/google/firebase/auth/internal/zzk;->zzmht:J

    mul-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final zzbse()V
    .locals 7

    iget-wide v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmht:J

    long-to-int v0, v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3c0

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3c0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x2

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzk;->zzmht:J

    mul-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmht:J

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzamg()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzk;->zzmht:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/firebase/auth/internal/zzk;->zzmhs:J

    sget-object v0, Lcom/google/firebase/auth/internal/zzk;->zzecc:Lcom/google/android/gms/internal/zzbgg;

    iget-wide v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzmhs:J

    const/16 v3, 0x2b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scheduling refresh for "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbgg;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzk;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzk;->zzz:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/firebase/auth/internal/zzk;->zzmht:J

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
