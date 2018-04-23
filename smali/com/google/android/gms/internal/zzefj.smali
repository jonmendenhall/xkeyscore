.class final Lcom/google/android/gms/internal/zzefj;
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
.field private synthetic zzmrv:Lcom/google/android/gms/internal/zzedk;

.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private synthetic zzmwa:Lcom/google/android/gms/internal/zzega;

.field private synthetic zzmwb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzedk;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefj;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefj;->zzmwa:Lcom/google/android/gms/internal/zzega;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefj;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzefj;->zzmwb:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefj;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefj;->zzmwa:Lcom/google/android/gms/internal/zzega;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefj;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefj;->zzmwb:Ljava/util/Map;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzecy;->zzal(Ljava/util/Map;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefj;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefj;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v3, v4, v2}, Lcom/google/android/gms/internal/zzegy;->zzd(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    new-instance v3, Lcom/google/android/gms/internal/zzegn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/zzegq;->zzc(Lcom/google/android/gms/internal/zzeih;)Lcom/google/android/gms/internal/zzegq;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/zzegn;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefj;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v1, v0, v3}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
