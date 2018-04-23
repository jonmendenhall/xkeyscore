.class final Lcom/google/android/gms/internal/zzefu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/android/gms/internal/zzeib;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private synthetic zzmwa:Lcom/google/android/gms/internal/zzega;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefu;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefu;->zzmwa:Lcom/google/android/gms/internal/zzega;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefu;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefu;->zzmwa:Lcom/google/android/gms/internal/zzega;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefu;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzegy;->zzi(Lcom/google/android/gms/internal/zzeik;)V

    new-instance v1, Lcom/google/android/gms/internal/zzegm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzegq;->zzc(Lcom/google/android/gms/internal/zzeih;)Lcom/google/android/gms/internal/zzegq;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/zzegm;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefu;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
