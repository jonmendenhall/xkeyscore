.class public final Lcom/google/android/gms/internal/zzegx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegy;


# instance fields
.field private zzmls:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    return-void
.end method

.method private final zzbtf()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzekd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeik;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeik;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzbl(J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzbtb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzegd;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbte()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzegx;->zzmls:Z

    throw p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehx;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzehx;

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzeik;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzeik;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzeik;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegx;->zzbtf()V

    return-void
.end method
