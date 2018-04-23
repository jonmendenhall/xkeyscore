.class public final Lcom/google/android/gms/internal/zzegn;
.super Lcom/google/android/gms/internal/zzego;


# instance fields
.field private final zzmxk:Lcom/google/android/gms/internal/zzecy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzegp;->zzmxo:Lcom/google/android/gms/internal/zzegp;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/zzego;-><init>(Lcom/google/android/gms/internal/zzegp;Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Merge { path=%s, source=%s, children=%s }"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzego;->zzmks:Lcom/google/android/gms/internal/zzedk;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzego;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxi()Lcom/google/android/gms/internal/zzecy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzego;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegn;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    new-instance v2, Lcom/google/android/gms/internal/zzedk;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/zzejg;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzedk;-><init>([Lcom/google/android/gms/internal/zzejg;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzecy;->zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecy;->zzbvr()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzegs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegn;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecy;->zzbvr()Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzegs;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzegn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegn;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzegn;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegn;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzegn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegn;->zzmxm:Lcom/google/android/gms/internal/zzegq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegn;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegn;->zzmxk:Lcom/google/android/gms/internal/zzecy;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzegn;-><init>(Lcom/google/android/gms/internal/zzegq;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V

    return-object p1

    :cond_3
    return-object v1
.end method
