.class final Lcom/google/android/gms/internal/zzefl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/google/android/gms/internal/zzeib;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzmtx:Lcom/google/android/gms/internal/zzeik;

.field private synthetic zzmvz:Lcom/google/android/gms/internal/zzefh;

.field private synthetic zzmwc:Lcom/google/android/gms/internal/zzedh;

.field private synthetic zzmwd:Lcom/google/firebase/database/DatabaseError;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefl;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefl;->zzmwc:Lcom/google/android/gms/internal/zzedh;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzefl;->zzmwd:Lcom/google/firebase/database/DatabaseError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefl;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzefg;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefl;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeik;->isDefault()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefl;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzefg;->zzc(Lcom/google/android/gms/internal/zzeik;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzefl;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefl;->zzmwc:Lcom/google/android/gms/internal/zzedh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefl;->zzmwd:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzefg;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Lcom/google/android/gms/internal/zzelq;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzefg;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzehm;->zzai(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelq;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzelq;->zzcbg()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzeik;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v8}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/zzefl;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    invoke-interface {v8, v9}, Lcom/google/android/gms/internal/zzegy;->zzh(Lcom/google/android/gms/internal/zzeik;)V

    if-nez v5, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    move v5, v7

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzefg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_1

    :cond_5
    move v6, v4

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/zzehm;->zze(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v3

    if-nez v6, :cond_8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzefg;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    move v6, v4

    goto :goto_3

    :cond_8
    :goto_2
    move v6, v7

    :goto_3
    if-nez v6, :cond_9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehm;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_9
    if-eqz v5, :cond_a

    if-nez v6, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzehm;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzeil;

    new-instance v4, Lcom/google/android/gms/internal/zzefy;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-direct {v4, v7, v3}, Lcom/google/android/gms/internal/zzefy;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeil;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    iget-object v7, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v7}, Lcom/google/android/gms/internal/zzefh;->zzh(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzefz;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v8, v3}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    invoke-static {v4}, Lcom/google/android/gms/internal/zzefy;->zza(Lcom/google/android/gms/internal/zzefy;)Lcom/google/android/gms/internal/zzega;

    move-result-object v8

    invoke-interface {v7, v3, v8, v4, v4}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzebl;Lcom/google/android/gms/internal/zzefw;)V

    goto :goto_4

    :cond_a
    if-nez v6, :cond_c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefl;->zzmwd:Lcom/google/firebase/database/DatabaseError;

    if-nez v0, :cond_c

    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzefh;->zzh(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzefz;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefl;->zzmtx:Lcom/google/android/gms/internal/zzeik;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V

    goto :goto_6

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzeik;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzefh;->zzh(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzefz;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;)V

    goto :goto_5

    :cond_c
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefl;->zzmvz:Lcom/google/android/gms/internal/zzefh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzefh;Ljava/util/List;)V

    :cond_d
    return-object v2
.end method
