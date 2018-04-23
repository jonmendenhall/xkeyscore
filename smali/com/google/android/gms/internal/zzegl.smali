.class public final Lcom/google/android/gms/internal/zzegl;
.super Lcom/google/android/gms/internal/zzego;


# instance fields
.field private final zzmxi:Z

.field private final zzmxj:Lcom/google/android/gms/internal/zzehm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzegp;->zzmxp:Lcom/google/android/gms/internal/zzegp;

    sget-object v1, Lcom/google/android/gms/internal/zzegq;->zzmxs:Lcom/google/android/gms/internal/zzegq;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzego;-><init>(Lcom/google/android/gms/internal/zzegp;Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegl;->zzmxj:Lcom/google/android/gms/internal/zzehm;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzegl;->zzmxi:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AckUserWrite { path=%s, revert=%s, affectedTree=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzego;->zzmks:Lcom/google/android/gms/internal/zzedk;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzegl;->zzmxi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegl;->zzmxj:Lcom/google/android/gms/internal/zzehm;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxg()Lcom/google/android/gms/internal/zzehm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegl;->zzmxj:Lcom/google/android/gms/internal/zzehm;

    return-object v0
.end method

.method public final zzbxh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegl;->zzmxi:Z

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzego;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegl;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegl;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "operationForChild called for unrelated child."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/zzegl;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegl;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegl;->zzmxj:Lcom/google/android/gms/internal/zzehm;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzegl;->zzmxi:Z

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzegl;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Z)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegl;->zzmxj:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegl;->zzmxj:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeag;->isEmpty()Z

    move-result p1

    const-string v0, "affectedTree should not have overlapping affected paths."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegl;->zzmxj:Lcom/google/android/gms/internal/zzehm;

    new-instance v1, Lcom/google/android/gms/internal/zzedk;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/zzejg;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzedk;-><init>([Lcom/google/android/gms/internal/zzejg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzegl;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzegl;->zzmxi:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzegl;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Z)V

    return-object v0
.end method
