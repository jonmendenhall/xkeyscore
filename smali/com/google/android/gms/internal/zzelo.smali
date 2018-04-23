.class public final Lcom/google/android/gms/internal/zzelo;
.super Ljava/lang/Object;


# direct methods
.method private static zzc(Lcom/google/android/gms/internal/zzejy;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzejy<",
            "*>;)J"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzejt;

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/zzekb;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/zzejf;

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x4

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/google/android/gms/internal/zzekl;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejy;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-wide v1

    :cond_3
    const-wide/16 v3, 0x18

    add-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzejy;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzejy;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzelo;->zzc(Lcom/google/android/gms/internal/zzejy;)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x18

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown leaf node type: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzn(Lcom/google/android/gms/internal/zzekd;)J
    .locals 8

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/zzejy;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzelo;->zzc(Lcom/google/android/gms/internal/zzejy;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v3, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    add-long/2addr v3, v1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/zzelo;->zzn(Lcom/google/android/gms/internal/zzekd;)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0xc

    add-long/2addr v3, v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzejy;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzelo;->zzc(Lcom/google/android/gms/internal/zzejy;)J

    move-result-wide v0

    add-long/2addr v3, v0

    :cond_3
    return-wide v3
.end method

.method public static zzo(Lcom/google/android/gms/internal/zzekd;)I
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzelo;->zzo(Lcom/google/android/gms/internal/zzekd;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method
