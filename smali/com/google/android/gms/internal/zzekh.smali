.class public final Lcom/google/android/gms/internal/zzekh;
.super Lcom/google/android/gms/internal/zzejv;


# instance fields
.field private final zzndf:Lcom/google/android/gms/internal/zzedk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedk;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejv;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t create PathIndex with \'.priority\' as key. Please use PriorityIndex instead!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/zzekc;

    check-cast p2, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzejg;->zzi(Lcom/google/android/gms/internal/zzejg;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzekh;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzedk;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzcag()Lcom/google/android/gms/internal/zzekc;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    sget-object v2, Lcom/google/android/gms/internal/zzekd;->zzndb:Lcom/google/android/gms/internal/zzeji;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzeji;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzekc;

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzo()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v1
.end method

.method public final zzcah()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekc;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzeji;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzekd;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekh;->zzndf:Lcom/google/android/gms/internal/zzedk;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
