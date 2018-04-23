.class final Lcom/google/android/gms/internal/zzefs;
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

.field private synthetic zzmwb:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Ljava/util/Map;Lcom/google/android/gms/internal/zzedk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefs;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefs;->zzmwb:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefs;->zzmrv:Lcom/google/android/gms/internal/zzedk;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefs;->zzmwb:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzecy;->zzal(Ljava/util/Map;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefs;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefs;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzegy;->zzd(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefs;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    new-instance v2, Lcom/google/android/gms/internal/zzegn;

    sget-object v3, Lcom/google/android/gms/internal/zzegq;->zzmxt:Lcom/google/android/gms/internal/zzegq;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefs;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzegn;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
