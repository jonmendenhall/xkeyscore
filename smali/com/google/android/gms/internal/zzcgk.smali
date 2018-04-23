.class final Lcom/google/android/gms/internal/zzcgk;
.super Lcom/google/android/gms/internal/zzcjl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcim;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcjl;-><init>(Lcom/google/android/gms/internal/zzcim;)V

    return-void
.end method

.method private final zza(DLcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    move-result-wide p1

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzclu;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(JLcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    const-wide/16 p1, 0x0

    invoke-static {v0, p3, p1, p2}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzclu;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzcls;Lcom/google/android/gms/internal/zzcmb;J)Ljava/lang/Boolean;
    .locals 9

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzcls;->zzjka:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/gms/internal/zzcgk;->zza(JLcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;

    move-result-object p3

    if-nez p3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iget-object p4, p1, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length v0, p4

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, p4, v3

    iget-object v5, v4, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "null or empty param name in filter. event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_2
    iget-object v4, v4, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance p4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzcmb;->zzjlh:[Lcom/google/android/gms/internal/zzcmc;

    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_8

    aget-object v5, v0, v4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-interface {p3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    if-eqz v6, :cond_4

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcmc;->zzjll:Ljava/lang/Long;

    :goto_2
    invoke-interface {p4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmc;->zzjjl:Ljava/lang/Double;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcmc;->zzjjl:Ljava/lang/Double;

    goto :goto_2

    :cond_5
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmc;->zzgcc:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcmc;->zzgcc:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "Unknown value for param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object v0, v5, Lcom/google/android/gms/internal/zzcmc;->name:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    iget-object p1, p1, Lcom/google/android/gms/internal/zzcls;->zzjjy:[Lcom/google/android/gms/internal/zzclt;

    array-length p3, p1

    move v0, v1

    :goto_4
    const/4 v3, 0x1

    if-ge v0, p3, :cond_17

    aget-object v4, p1, v0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, v4, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v4, Lcom/google/android/gms/internal/zzclt;->zzjkf:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "Event has empty param name. event"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_9
    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/Long;

    if-eqz v8, :cond_c

    iget-object v8, v4, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-nez v8, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "No number filter for long param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    invoke-virtual {p4, v6}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_a
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {p0, v6, v7, v4}, Lcom/google/android/gms/internal/zzcgk;->zza(JLcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_b

    return-object v2

    :cond_b
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    instance-of v8, v7, Ljava/lang/Double;

    if-eqz v8, :cond_f

    iget-object v8, v4, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "No number filter for double param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    invoke-virtual {p4, v6}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_d
    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {p0, v6, v7, v4}, Lcom/google/android/gms/internal/zzcgk;->zza(DLcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_e

    return-object v2

    :cond_e
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_f
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_15

    iget-object v8, v4, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-eqz v8, :cond_10

    check-cast v7, Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    invoke-direct {p0, v7, v4}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclw;)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_5

    :cond_10
    iget-object v8, v4, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-eqz v8, :cond_14

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzclq;->zzkk(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v4, v4, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {p0, v7, v4}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;

    move-result-object v4

    :goto_5
    if-nez v4, :cond_11

    return-object v2

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v5

    if-eqz v3, :cond_12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "Invalid param value for number filter. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    invoke-virtual {p4, v6}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "No filter for String param. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    invoke-virtual {p4, v6}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_15
    if-nez v7, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "Missing param for filter. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    invoke-virtual {p4, v6}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p3, "Unknown param type. event, param"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    iget-object p2, p2, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object p4

    invoke-virtual {p4, v6}, Lcom/google/android/gms/internal/zzchk;->zzji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_17
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x6

    if-ne p2, v1, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-object v0

    :cond_2
    if-nez p4, :cond_3

    return-object v0

    :cond_3
    if-nez p3, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :pswitch_5
    if-eqz p3, :cond_6

    const/4 p2, 0x0

    goto :goto_2

    :cond_6
    const/16 p2, 0x42

    :goto_2
    :try_start_0
    invoke-static {p6, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object p1

    const-string p2, "Invalid regular expression in REGEXP audience filter. expression"

    invoke-virtual {p1, p2, p6}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzclq;->zzkk(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-static {v0, p2, v2, v3}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzclu;D)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclw;)Ljava/lang/Boolean;
    .locals 10

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjko:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjko:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjko:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjkr:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjkr:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_4

    :cond_2
    return-object v0

    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjkp:Ljava/lang/String;

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjko:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjkq:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjkq:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move v6, v4

    goto :goto_0

    :cond_5
    move v6, v3

    :goto_0
    if-nez v6, :cond_7

    if-eq v5, v4, :cond_7

    if-ne v5, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjkp:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjkp:Ljava/lang/String;

    :goto_2
    move-object v7, v1

    iget-object v1, p2, Lcom/google/android/gms/internal/zzclw;->zzjkr:[Ljava/lang/String;

    if-nez v1, :cond_8

    move-object v8, v0

    goto :goto_4

    :cond_8
    iget-object p2, p2, Lcom/google/android/gms/internal/zzclw;->zzjkr:[Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v8, p2

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p2

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v8, p2, v3

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    move-object v8, v1

    :goto_4
    if-ne v5, v4, :cond_b

    move-object v9, v7

    goto :goto_5

    :cond_b
    move-object v9, v0

    :goto_5
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0
.end method

.method private static zza(Ljava/math/BigDecimal;Lcom/google/android/gms/internal/zzclu;D)Ljava/lang/Boolean;
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjkg:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzclq;->zzkk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzclq;->zzkk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    :try_start_0
    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzclu;->zzjkj:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzclu;->zzjkk:Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    move-object v3, v1

    goto :goto_0

    :catch_0
    :cond_5
    return-object v1

    :cond_6
    iget-object v3, p1, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzclq;->zzkk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return-object v1

    :cond_7
    :try_start_1
    new-instance v3, Ljava/math/BigDecimal;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzclu;->zzjki:Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    move-object v4, p1

    :goto_0
    if-ne v0, v2, :cond_8

    if-nez p1, :cond_9

    return-object v1

    :cond_8
    if-eqz v3, :cond_10

    :cond_9
    const/4 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-eq p1, v2, :cond_a

    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-eq p0, v6, :cond_a

    move v5, v6

    :cond_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-wide/16 v0, 0x0

    cmpl-double p1, p2, v0

    if-eqz p1, :cond_c

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ne p1, v6, :cond_b

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, v1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v2, :cond_b

    move v5, v6

    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_d

    move v5, v6

    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v6, :cond_e

    move v5, v6

    :cond_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-ne p0, v2, :cond_f

    move v5, v6

    :cond_f
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_1
    :cond_10
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final zza(Ljava/lang/String;[Lcom/google/android/gms/internal/zzcmb;[Lcom/google/android/gms/internal/zzcmg;)[Lcom/google/android/gms/internal/zzcma;
    .locals 53
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v12, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v12}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v10}, Landroid/support/v4/util/ArrayMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/zzcgo;->zzje(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzcmf;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/BitSet;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v10, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-object/from16 v17, v2

    const/4 v7, 0x0

    :goto_1
    iget-object v2, v5, Lcom/google/android/gms/internal/zzcmf;->zzjmp:[J

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x6

    if-ge v7, v2, :cond_3

    iget-object v2, v5, Lcom/google/android/gms/internal/zzcmf;->zzjmp:[J

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/zzclq;->zza([JI)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    move-object/from16 v18, v3

    const-string v3, "Filter already evaluated. audience ID, filter ID"

    move-object/from16 v19, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v20, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v3, v9, v10}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v2, v5, Lcom/google/android/gms/internal/zzcmf;->zzjmq:[J

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/zzclq;->zza([JI)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    goto :goto_1

    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    new-instance v2, Lcom/google/android/gms/internal/zzcma;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcma;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    iput-object v5, v2, Lcom/google/android/gms/internal/zzcma;->zzjle:Lcom/google/android/gms/internal/zzcmf;

    new-instance v3, Lcom/google/android/gms/internal/zzcmf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzcmf;-><init>()V

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/util/BitSet;)[J

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/internal/zzcmf;->zzjmq:[J

    iget-object v2, v2, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/util/BitSet;)[J

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/zzcmf;->zzjmp:[J

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto/16 :goto_0

    :cond_4
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    const/4 v7, 0x0

    if-eqz v14, :cond_13

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v6, v14

    move v4, v7

    :goto_3
    if-ge v4, v6, :cond_13

    aget-object v3, v14, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v2

    iget-object v7, v3, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v2, v15, v7}, Lcom/google/android/gms/internal/zzcgo;->zzae(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzcgw;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v7, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v16, Lcom/google/android/gms/internal/zzcgw;

    iget-object v7, v3, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    const-wide/16 v8, 0x1

    const-wide/16 v17, 0x1

    iget-object v2, v3, Lcom/google/android/gms/internal/zzcmb;->zzjli:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v2, v16

    move-object v10, v3

    move-object v3, v15

    move/from16 v28, v4

    move-object v4, v7

    move-object v7, v5

    move/from16 v29, v6

    move-wide v5, v8

    move-object v9, v7

    move-wide/from16 v7, v17

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v30, v19

    move-object/from16 v31, v20

    move-wide/from16 v9, v21

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-wide/from16 v11, v23

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/internal/zzcgw;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_4

    :cond_5
    move-object/from16 v33, v3

    move/from16 v28, v4

    move-object/from16 v32, v5

    move/from16 v29, v6

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v30, v19

    move-object/from16 v31, v20

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcgw;->zzayw()Lcom/google/android/gms/internal/zzcgw;

    move-result-object v16

    move-object/from16 v2, v16

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzcgo;->zza(Lcom/google/android/gms/internal/zzcgw;)V

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzcgw;->zzizk:J

    move-object/from16 v4, v33

    iget-object v5, v4, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    move-object/from16 v6, v32

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v5

    iget-object v7, v4, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    move-object/from16 v8, p1

    invoke-virtual {v5, v8, v7}, Lcom/google/android/gms/internal/zzcgo;->zzaj(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_6

    new-instance v5, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v5}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_6
    iget-object v7, v4, Lcom/google/android/gms/internal/zzcmb;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    move-object/from16 v8, p1

    :goto_5
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, v34

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v10

    const-string v12, "Skipping failed audience ID"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v12, v9}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v34, v11

    goto :goto_6

    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v12, v35

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/zzcma;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v14, v30

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v36, v6

    move-object/from16 v6, v31

    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/BitSet;

    if-nez v10, :cond_9

    new-instance v10, Lcom/google/android/gms/internal/zzcma;

    invoke-direct {v10}, Lcom/google/android/gms/internal/zzcma;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v10, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    new-instance v10, Ljava/util/BitSet;

    invoke-direct {v10}, Ljava/util/BitSet;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Ljava/util/BitSet;

    invoke-direct {v15}, Ljava/util/BitSet;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v10

    :cond_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v37, v5

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/internal/zzcls;

    move-object/from16 v38, v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v7

    move-object/from16 v39, v10

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v7

    const-string v10, "Evaluating filter. audience, filter, event"

    move-object/from16 v40, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v41, v14

    iget-object v14, v5, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    move-object/from16 v42, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v12

    iget-object v8, v5, Lcom/google/android/gms/internal/zzcls;->zzjjx:Ljava/lang/String;

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/zzchk;->zzjh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v10, v6, v14, v8}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v7, "Filter definition"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzcls;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    move-object/from16 v40, v6

    move-object/from16 v42, v12

    move-object/from16 v41, v14

    :goto_8
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    if-eqz v6, :cond_10

    iget-object v6, v5, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x100

    if-le v6, v7, :cond_b

    goto/16 :goto_b

    :cond_b
    iget-object v6, v5, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v13, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v8, "Event filter already evaluated true. audience ID, filter ID"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v6, v8, v10, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    :goto_9
    move-object/from16 v5, v37

    move-object/from16 v7, v38

    move-object/from16 v10, v39

    move-object/from16 v6, v40

    move-object/from16 v14, v41

    move-object/from16 v12, v42

    move-object/from16 v8, p1

    goto/16 :goto_7

    :cond_d
    invoke-direct {v1, v5, v4, v2, v3}, Lcom/google/android/gms/internal/zzcgk;->zza(Lcom/google/android/gms/internal/zzcls;Lcom/google/android/gms/internal/zzcmb;J)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v8

    const-string v10, "Event filter result"

    if-nez v6, :cond_e

    const-string v12, "null"

    goto :goto_a

    :cond_e
    move-object v12, v6

    :goto_a
    invoke-virtual {v8, v10, v12}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v6, :cond_f

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    iget-object v8, v5, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v13, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    :cond_10
    const/16 v7, 0x100

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v8, "Invalid event filter ID. appId, id"

    move-object/from16 v10, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v5, v5, Lcom/google/android/gms/internal/zzcls;->zzjjw:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v12, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v10

    move-object/from16 v5, v37

    move-object/from16 v7, v38

    move-object/from16 v10, v39

    move-object/from16 v6, v40

    move-object/from16 v14, v41

    move-object/from16 v12, v42

    goto/16 :goto_7

    :cond_11
    move-object/from16 v38, v7

    move-object/from16 v31, v6

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v30, v14

    move-object/from16 v6, v36

    goto/16 :goto_6

    :cond_12
    move-object/from16 v36, v6

    move-object v10, v8

    move-object/from16 v41, v30

    move-object/from16 v40, v31

    move-object/from16 v11, v34

    move-object/from16 v42, v35

    const/16 v7, 0x100

    add-int/lit8 v4, v28, 0x1

    move-object/from16 v14, p2

    move-object v15, v10

    move/from16 v6, v29

    move-object/from16 v5, v36

    move-object/from16 v20, v40

    move-object/from16 v19, v41

    move-object/from16 v12, v42

    const/4 v7, 0x0

    move-object/from16 v13, p3

    goto/16 :goto_3

    :cond_13
    move-object/from16 v42, v12

    move-object v10, v15

    move-object/from16 v41, v19

    move-object/from16 v40, v20

    const/16 v7, 0x100

    move-object/from16 v3, p3

    if-eqz v3, :cond_2a

    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    array-length v5, v3

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v5, :cond_2a

    aget-object v8, v3, v6

    iget-object v9, v8, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v9

    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-virtual {v9, v10, v12}, Lcom/google/android/gms/internal/zzcgo;->zzak(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    if-nez v9, :cond_14

    new-instance v9, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v9}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :cond_14
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-interface {v4, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v14

    const-string v15, "Skipping failed audience ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v15, v13}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_16
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v15, v42

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/zzcma;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v7, v41

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    move-object/from16 v43, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v40

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    if-nez v14, :cond_17

    new-instance v2, Lcom/google/android/gms/internal/zzcma;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzcma;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v15, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v44, v4

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/gms/internal/zzcma;->zzjlf:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_17
    move-object/from16 v44, v4

    move-object v4, v2

    move-object/from16 v2, v43

    :goto_e
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_f
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_28

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v45, v5

    move-object/from16 v5, v16

    check-cast v5, Lcom/google/android/gms/internal/zzclv;

    move-object/from16 v46, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    move-object/from16 v47, v12

    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/zzchm;->zzae(I)Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v12, "Evaluating filter. audience, filter, property"

    move-object/from16 v48, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v49, v3

    iget-object v3, v5, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    move-object/from16 v50, v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v15

    move-object/from16 v51, v7

    iget-object v7, v5, Lcom/google/android/gms/internal/zzclv;->zzjkm:Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v12, v14, v3, v7}, Lcom/google/android/gms/internal/zzcho;->zzd(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v7, "Filter definition"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/zzchk;->zza(Lcom/google/android/gms/internal/zzclv;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v9}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_18
    move-object/from16 v49, v3

    move-object/from16 v51, v7

    move-object/from16 v48, v14

    move-object/from16 v50, v15

    :goto_10
    iget-object v3, v5, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    if-eqz v3, :cond_27

    iget-object v3, v5, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x100

    if-le v3, v7, :cond_19

    goto/16 :goto_17

    :cond_19
    iget-object v3, v5, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v9, "Property filter already evaluated true. audience ID, filter ID"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v5, v5, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v3, v9, v12, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    :goto_11
    move/from16 v5, v45

    move-object/from16 v9, v46

    move-object/from16 v12, v47

    move-object/from16 v14, v48

    move-object/from16 v3, v49

    move-object/from16 v15, v50

    move-object/from16 v7, v51

    goto/16 :goto_f

    :cond_1b
    iget-object v3, v5, Lcom/google/android/gms/internal/zzclv;->zzjkn:Lcom/google/android/gms/internal/zzclt;

    if-nez v3, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v9, "Missing property filter. property"

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v12

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_13
    const/4 v3, 0x0

    goto/16 :goto_15

    :cond_1c
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v12, v3, Lcom/google/android/gms/internal/zzclt;->zzjke:Ljava/lang/Boolean;

    invoke-virtual {v9, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->zzjll:Ljava/lang/Long;

    if-eqz v12, :cond_1e

    iget-object v12, v3, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-nez v12, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v9, "No number filter for long property. property"

    goto :goto_12

    :cond_1d
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->zzjll:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iget-object v3, v3, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {v1, v14, v15, v3}, Lcom/google/android/gms/internal/zzcgk;->zza(JLcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;

    move-result-object v3

    :goto_14
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_15

    :cond_1e
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->zzjjl:Ljava/lang/Double;

    if-eqz v12, :cond_20

    iget-object v12, v3, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-nez v12, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v9, "No number filter for double property. property"

    goto :goto_12

    :cond_1f
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->zzjjl:Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    iget-object v3, v3, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {v1, v14, v15, v3}, Lcom/google/android/gms/internal/zzcgk;->zza(DLcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_14

    :cond_20
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->zzgcc:Ljava/lang/String;

    if-eqz v12, :cond_24

    iget-object v12, v3, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    if-nez v12, :cond_23

    iget-object v12, v3, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    if-nez v12, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v9, "No string or number filter defined. property"

    goto :goto_12

    :cond_21
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->zzgcc:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzclq;->zzkk(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_22

    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->zzgcc:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzclt;->zzjkd:Lcom/google/android/gms/internal/zzclu;

    invoke-direct {v1, v12, v3}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclu;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_14

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawt()Lcom/google/android/gms/internal/zzchk;

    move-result-object v12

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcmg;->name:Ljava/lang/String;

    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/zzchk;->zzjj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v8, Lcom/google/android/gms/internal/zzcmg;->zzgcc:Ljava/lang/String;

    invoke-virtual {v3, v9, v12, v14}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_23
    iget-object v12, v8, Lcom/google/android/gms/internal/zzcmg;->zzgcc:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzclt;->zzjkc:Lcom/google/android/gms/internal/zzclw;

    invoke-direct {v1, v12, v3}, Lcom/google/android/gms/internal/zzcgk;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzclw;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_14

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v3

    const-string v9, "User property has no value, property"

    goto/16 :goto_12

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzchm;->zzazj()Lcom/google/android/gms/internal/zzcho;

    move-result-object v9

    const-string v12, "Property filter result"

    if-nez v3, :cond_25

    const-string v14, "null"

    goto :goto_16

    :cond_25
    move-object v14, v3

    :goto_16
    invoke-virtual {v9, v12, v14}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v3, :cond_26

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_26
    iget-object v9, v5, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v5, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_11

    :cond_27
    const/16 v7, 0x100

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzchm;->zzazf()Lcom/google/android/gms/internal/zzcho;

    move-result-object v2

    const-string v3, "Invalid property filter ID. appId, id"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/internal/zzclv;->zzjjw:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v44

    move/from16 v5, v45

    move-object/from16 v9, v46

    move-object/from16 v12, v47

    move-object/from16 v40, v49

    move-object/from16 v42, v50

    move-object/from16 v41, v51

    move-object/from16 v3, p3

    goto/16 :goto_d

    :cond_28
    move-object/from16 v51, v7

    move-object/from16 v40, v3

    move-object/from16 v42, v15

    move-object/from16 v4, v44

    move-object/from16 v41, v51

    move-object/from16 v3, p3

    const/16 v7, 0x100

    goto/16 :goto_d

    :cond_29
    move-object/from16 v44, v4

    move/from16 v45, v5

    move-object/from16 v49, v40

    move-object/from16 v51, v41

    move-object/from16 v50, v42

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, p3

    goto/16 :goto_c

    :cond_2a
    move-object/from16 v49, v40

    move-object/from16 v50, v42

    move-object/from16 v2, v41

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/zzcma;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v7, 0x0

    :cond_2b
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, v50

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzcma;

    if-nez v6, :cond_2c

    new-instance v6, Lcom/google/android/gms/internal/zzcma;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzcma;-><init>()V

    :cond_2c
    add-int/lit8 v9, v7, 0x1

    aput-object v6, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/gms/internal/zzcma;->zzjjs:Ljava/lang/Integer;

    new-instance v7, Lcom/google/android/gms/internal/zzcmf;

    invoke-direct {v7}, Lcom/google/android/gms/internal/zzcmf;-><init>()V

    iput-object v7, v6, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/BitSet;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/util/BitSet;)[J

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/zzcmf;->zzjmq:[J

    iget-object v7, v6, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v13, v49

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/BitSet;

    invoke-static {v12}, Lcom/google/android/gms/internal/zzclq;->zza(Ljava/util/BitSet;)[J

    move-result-object v12

    iput-object v12, v7, Lcom/google/android/gms/internal/zzcmf;->zzjmp:[J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/zzcjk;->zzaws()Lcom/google/android/gms/internal/zzcgo;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/internal/zzcma;->zzjld:Lcom/google/android/gms/internal/zzcmf;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjl;->zzxf()V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjk;->zzve()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzfjs;->zzho()I

    move-result v12

    new-array v12, v12, [B

    array-length v14, v12

    const/4 v15, 0x0

    invoke-static {v12, v15, v14}, Lcom/google/android/gms/internal/zzfjk;->zzo([BII)Lcom/google/android/gms/internal/zzfjk;

    move-result-object v14

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/zzfjs;->zza(Lcom/google/android/gms/internal/zzfjk;)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/zzfjk;->zzcwt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "app_id"

    invoke-virtual {v6, v14, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "audience_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "current_results"

    invoke-virtual {v6, v5, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcgo;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v12, "audience_filter_values"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x5

    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v5, v12, v15, v6, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5

    const-wide/16 v16, -0x1

    cmp-long v5, v5, v16

    if-nez v5, :cond_2d

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v5

    const-string v6, "Failed to insert filter results (got -1). appId"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Lcom/google/android/gms/internal/zzcho;->zzj(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1b

    :catch_0
    move-exception v0

    goto :goto_19

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    :goto_19
    move-object v5, v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v7, "Error storing filter results. appId"

    goto :goto_1a

    :catch_2
    move-exception v0

    const/4 v15, 0x0

    move-object v5, v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzcjk;->zzawy()Lcom/google/android/gms/internal/zzchm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzchm;->zzazd()Lcom/google/android/gms/internal/zzcho;

    move-result-object v6

    const-string v7, "Configuration loss. Failed to serialize filter results. appId"

    :goto_1a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzchm;->zzjk(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v7, v12, v5}, Lcom/google/android/gms/internal/zzcho;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2d
    :goto_1b
    move-object/from16 v50, v8

    move v7, v9

    move-object/from16 v49, v13

    goto/16 :goto_18

    :cond_2e
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/internal/zzcma;

    return-object v2
.end method

.method protected final zzaxz()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
