.class public final Lcom/google/android/gms/internal/zzegm;
.super Lcom/google/android/gms/internal/zzego;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzegp;->zzmxq:Lcom/google/android/gms/internal/zzegp;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzego;-><init>(Lcom/google/android/gms/internal/zzegp;Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ListenComplete { path=%s, source=%s }"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzego;->zzmks:Lcom/google/android/gms/internal/zzedk;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzego;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzego;
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzegm;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzegm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzegm;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzegm;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegm;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegm;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzegm;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    return-object p1
.end method
