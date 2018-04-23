.class final Lcom/google/android/gms/internal/zzefb;
.super Ljava/lang/Object;


# instance fields
.field private zzmvh:Lcom/google/android/gms/internal/zzekd;

.field private zzmvi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzejg;",
            "Lcom/google/android/gms/internal/zzefb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeff;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzeff;->zzf(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzefd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzefd;-><init>(Lcom/google/android/gms/internal/zzefb;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeff;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzefb;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzefe;->zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzefb;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V
    .locals 4

    move-object v0, p0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p2, v0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/internal/zzefb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzefb;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    goto :goto_0
.end method

.method public final zzq(Lcom/google/android/gms/internal/zzedk;)Z
    .locals 5

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    check-cast v0, Lcom/google/android/gms/internal/zzeji;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzefb;->zzmvh:Lcom/google/android/gms/internal/zzekd;

    new-instance v1, Lcom/google/android/gms/internal/zzefc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzefc;-><init>(Lcom/google/android/gms/internal/zzefb;Lcom/google/android/gms/internal/zzedk;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzeji;->zza(Lcom/google/android/gms/internal/zzejl;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzefb;

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/zzefb;->zzq(Lcom/google/android/gms/internal/zzedk;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    iput-object v2, p0, Lcom/google/android/gms/internal/zzefb;->zzmvi:Ljava/util/Map;

    return v1

    :cond_4
    return v3

    :cond_5
    return v1
.end method
