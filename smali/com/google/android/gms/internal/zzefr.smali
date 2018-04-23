.class final Lcom/google/android/gms/internal/zzefr;
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

.field private synthetic zzmvx:Lcom/google/android/gms/internal/zzekd;

.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefr;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefr;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefr;->zzmvx:Lcom/google/android/gms/internal/zzekd;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefr;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefr;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefr;->zzmvx:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzegy;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzekd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefr;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    new-instance v1, Lcom/google/android/gms/internal/zzegs;

    sget-object v2, Lcom/google/android/gms/internal/zzegq;->zzmxt:Lcom/google/android/gms/internal/zzegq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefr;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefr;->zzmvx:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzegs;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
