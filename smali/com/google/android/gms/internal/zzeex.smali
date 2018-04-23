.class public final Lcom/google/android/gms/internal/zzeex;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzecy;Ljava/util/Map;)Lcom/google/android/gms/internal/zzecy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzecy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzecy;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzecy;->zzbvq()Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzecy;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekd;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzeex;->zza(Lcom/google/android/gms/internal/zzekd;Ljava/util/Map;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzekd;Ljava/util/Map;)Lcom/google/android/gms/internal/zzekd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzekd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzekd;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v2, ".sv"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ".sv"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzekj;->zzc(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    const-string v3, ".sv"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, ".sv"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-object p0

    :cond_5
    check-cast p0, Lcom/google/android/gms/internal/zzeji;

    new-instance v1, Lcom/google/android/gms/internal/zzefa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzefa;-><init>(Lcom/google/android/gms/internal/zzekd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzeez;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/zzeez;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzefa;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/zzeji;->zza(Lcom/google/android/gms/internal/zzejl;Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefa;->zzbwr()Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefa;->zzbwr()Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/zzekd;->zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefa;->zzbwr()Lcom/google/android/gms/internal/zzekd;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzeli;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeli;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "timestamp"

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzeli;->millis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
