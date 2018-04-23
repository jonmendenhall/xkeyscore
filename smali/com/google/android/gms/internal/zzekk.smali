.class public final Lcom/google/android/gms/internal/zzekk;
.super Ljava/lang/Object;


# instance fields
.field private final zzndh:Lcom/google/android/gms/internal/zzedk;

.field private final zzndi:Lcom/google/android/gms/internal/zzedk;

.field private final zzndj:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzecd;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecd;->zzbva()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecd;->zzbvb()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/zzedk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/util/List;)V

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzecd;->zzbvc()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzekk;->zzndj:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzedk;->zzj(Lcom/google/android/gms/internal/zzedk;)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzedk;->zzj(Lcom/google/android/gms/internal/zzedk;)I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/zzedk;->zzi(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    if-lez v0, :cond_4

    if-gez v2, :cond_4

    if-nez v5, :cond_4

    return-object p3

    :cond_4
    if-lez v0, :cond_5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v6

    if-eqz v6, :cond_5

    return-object p3

    :cond_5
    if-lez v0, :cond_7

    if-nez v2, :cond_7

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p2

    :cond_7
    if-nez v3, :cond_9

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    return-object p2

    :cond_9
    :goto_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzp()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-object v1, p2

    :cond_e
    :goto_7
    if-ge v4, v0, :cond_f

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v5

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v6

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v7

    invoke-interface {p3, v3}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/google/android/gms/internal/zzekk;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v6

    if-eq v6, v5, :cond_e

    invoke-interface {v1, v3, v6}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    goto :goto_7

    :cond_f
    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekk;->zzndh:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekk;->zzndi:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekk;->zzndj:Lcom/google/android/gms/internal/zzekd;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x37

    add-int/2addr v4, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "RangeMerge{optExclusiveStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", optInclusiveEnd="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", snap="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekk;->zzndj:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzekk;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method
