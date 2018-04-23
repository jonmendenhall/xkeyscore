.class public final Lcom/google/android/gms/internal/zzegs;
.super Lcom/google/android/gms/internal/zzego;


# instance fields
.field private final zzmya:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzegp;->zzmxn:Lcom/google/android/gms/internal/zzegp;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzego;-><init>(Lcom/google/android/gms/internal/zzegp;Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegs;->zzmya:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Overwrite { path=%s, source=%s, snapshot=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzego;->zzmks:Lcom/google/android/gms/internal/zzedk;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzego;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegs;->zzmya:Lcom/google/android/gms/internal/zzekd;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxo()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegs;->zzmya:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzego;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegs;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzegs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegs;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzegs;->zzmya:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzegs;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzegs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegs;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegs;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegs;->zzmya:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzegs;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return-object p1
.end method
