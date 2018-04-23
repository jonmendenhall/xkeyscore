.class final Lcom/google/android/gms/internal/zzefi;
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

.field private synthetic zzmuf:J

.field private synthetic zzmvv:Z

.field private synthetic zzmvw:Lcom/google/android/gms/internal/zzekd;

.field private synthetic zzmvx:Lcom/google/android/gms/internal/zzekd;

.field private synthetic zzmvy:Z

.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;ZLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;JLcom/google/android/gms/internal/zzekd;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefi;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzefi;->zzmvv:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefi;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzefi;->zzmvw:Lcom/google/android/gms/internal/zzekd;

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzefi;->zzmuf:J

    iput-object p7, p0, Lcom/google/android/gms/internal/zzefi;->zzmvx:Lcom/google/android/gms/internal/zzekd;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzefi;->zzmvy:Z

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

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefi;->zzmvv:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefi;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefi;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefi;->zzmvw:Lcom/google/android/gms/internal/zzekd;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzefi;->zzmuf:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzegy;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;J)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefi;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzc(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefi;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefi;->zzmvx:Lcom/google/android/gms/internal/zzekd;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzefi;->zzmuf:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzefi;->zzmvy:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzegg;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Ljava/lang/Long;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzefi;->zzmvy:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefi;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    new-instance v1, Lcom/google/android/gms/internal/zzegs;

    sget-object v2, Lcom/google/android/gms/internal/zzegq;->zzmxs:Lcom/google/android/gms/internal/zzegq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefi;->zzmrv:Lcom/google/android/gms/internal/zzedk;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefi;->zzmvx:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzegs;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
