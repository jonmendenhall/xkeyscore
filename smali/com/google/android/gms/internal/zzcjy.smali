.class final Lcom/google/android/gms/internal/zzcjy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzjhc:Lcom/google/android/gms/internal/zzcjn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjy;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjy;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchx;->zzazn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjy;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawm()Lcom/google/android/gms/internal/zzcjn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzcih;->zzazs()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Cannot retrieve app instance id from analytics worker thread"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcho;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawx()Lcom/google/android/gms/internal/zzcih;

    invoke-static {}, Lcom/google/android/gms/internal/zzcih;->zzau()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v0

    const-string v1, "Cannot retrieve app instance id from main thread"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcjn;->zzbd(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzws()Lcom/google/android/gms/common/util/zzd;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    if-nez v5, :cond_3

    cmp-long v1, v6, v3

    if-gez v1, :cond_3

    sub-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzcjn;->zzbd(J)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    if-nez v2, :cond_4

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjy;->zzjhc:Lcom/google/android/gms/internal/zzcjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcjk;->zzawz()Lcom/google/android/gms/internal/zzchx;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzchx;->zzjp(Ljava/lang/String;)V

    return-object v2
.end method
