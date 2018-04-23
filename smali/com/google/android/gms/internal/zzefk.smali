.class final Lcom/google/android/gms/internal/zzefk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "+",
        "Lcom/google/android/gms/internal/zzeib;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private synthetic zzmwc:Lcom/google/android/gms/internal/zzedh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzedh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefk;->zzmwc:Lcom/google/android/gms/internal/zzedh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefk;->zzmwc:Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v1

    move v5, v3

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehm;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzefg;

    if-eqz v7, :cond_3

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    :goto_1
    if-nez v5, :cond_2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    move v8, v3

    :cond_2
    :goto_2
    move v5, v8

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, ""

    invoke-static {v7}, Lcom/google/android/gms/internal/zzejg;->zzpz(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v7

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v7

    :goto_3
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/zzehm;->zze(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v6

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzefg;

    if-nez v2, :cond_6

    new-instance v2, Lcom/google/android/gms/internal/zzefg;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/zzefg;-><init>(Lcom/google/android/gms/internal/zzegy;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    goto :goto_6

    :cond_6
    if-nez v5, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    move v5, v3

    goto :goto_5

    :cond_8
    :goto_4
    move v5, v8

    :goto_5
    if-eqz v4, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    :goto_6
    iget-object v6, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/google/android/gms/internal/zzegy;->zzg(Lcom/google/android/gms/internal/zzeik;)V

    if-eqz v4, :cond_a

    new-instance v6, Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v4

    invoke-direct {v6, v4, v8, v3}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    goto/16 :goto_9

    :cond_a
    iget-object v4, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/zzegy;->zzf(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_9

    :cond_b
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzefg;

    if-eqz v9, :cond_c

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {v4, v8, v9}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    goto :goto_7

    :cond_d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v7

    invoke-interface {v4, v8, v7}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    goto :goto_8

    :cond_f
    new-instance v6, Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v4

    invoke-direct {v6, v4, v3, v3}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    :goto_9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzefg;->zzc(Lcom/google/android/gms/internal/zzeik;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzefh;->zzf(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzega;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzefh;->zze(Lcom/google/android/gms/internal/zzefh;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzefh;->zzg(Lcom/google/android/gms/internal/zzefh;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    iget-object v4, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzefh;->zzc(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegg;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/zzegg;->zzt(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzegj;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefk;->zzmwc:Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v2, v4, v1, v6}, Lcom/google/android/gms/internal/zzefg;->zza(Lcom/google/android/gms/internal/zzedh;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzehx;)Ljava/util/List;

    move-result-object v1

    if-nez v3, :cond_11

    if-nez v5, :cond_11

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzefg;->zzb(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeil;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefk;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzeil;)V

    :cond_11
    return-object v1
.end method
