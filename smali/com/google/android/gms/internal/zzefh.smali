.class public final Lcom/google/android/gms/internal/zzefh;
.super Ljava/lang/Object;


# instance fields
.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private final zzmvn:Lcom/google/android/gms/internal/zzegy;

.field private zzmvo:Lcom/google/android/gms/internal/zzehm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehm<",
            "Lcom/google/android/gms/internal/zzefg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmvp:Lcom/google/android/gms/internal/zzegg;

.field private final zzmvq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzega;",
            "Lcom/google/android/gms/internal/zzeik;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmvr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzeik;",
            "Lcom/google/android/gms/internal/zzega;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmvs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzeik;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmvt:Lcom/google/android/gms/internal/zzefz;

.field private zzmvu:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedc;Lcom/google/android/gms/internal/zzegy;Lcom/google/android/gms/internal/zzefz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvu:J

    invoke-static {}, Lcom/google/android/gms/internal/zzehm;->zzbxw()Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    new-instance v0, Lcom/google/android/gms/internal/zzegg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzegg;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvp:Lcom/google/android/gms/internal/zzegg;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvq:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvr:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvs:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzefh;->zzmvt:Lcom/google/android/gms/internal/zzefz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    const-string p2, "SyncTree"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzedc;->zzpv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzejc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefh;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefh;->zze(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;)Lcom/google/android/gms/internal/zzeik;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzega;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzejc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefh;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzego;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzego;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefh;->zzmvp:Lcom/google/android/gms/internal/zzegg;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzegg;->zzt(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzegj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzego;",
            "Lcom/google/android/gms/internal/zzehm<",
            "Lcom/google/android/gms/internal/zzefg;",
            ">;",
            "Lcom/google/android/gms/internal/zzekd;",
            "Lcom/google/android/gms/internal/zzegj;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzego;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefg;

    if-nez p3, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p3

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzego;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzego;->zzc(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzego;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/zzeag;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzehm;

    if-eqz p2, :cond_3

    if-eqz v3, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p4, v2}, Lcom/google/android/gms/internal/zzegj;->zzb(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzegj;

    move-result-object v2

    invoke-direct {p0, v3, p2, v4, v2}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1, p4, p3}, Lcom/google/android/gms/internal/zzefg;->zza(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzehm;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehm<",
            "Lcom/google/android/gms/internal/zzefg;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeil;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzehm;Ljava/util/List;)V

    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzego;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeik;",
            "Lcom/google/android/gms/internal/zzego;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefh;->zzmvp:Lcom/google/android/gms/internal/zzegg;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzegg;->zzt(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzegj;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/google/android/gms/internal/zzefg;->zza(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzeil;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzeil;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzefh;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefh;->zzav(Ljava/util/List;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzehm;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehm<",
            "Lcom/google/android/gms/internal/zzefg;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeil;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefg;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzefg;->zzbwu()Lcom/google/android/gms/internal/zzeil;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzefg;->zzbws()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehm;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzehm;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzeil;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefh;->zze(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzefy;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/zzefy;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeil;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzefh;->zzmvt:Lcom/google/android/gms/internal/zzefz;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p1

    invoke-interface {p2, p1, v1, v2, v2}, Lcom/google/android/gms/internal/zzefz;->zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzebl;Lcom/google/android/gms/internal/zzefw;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    if-nez v1, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzefm;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzefm;-><init>(Lcom/google/android/gms/internal/zzefh;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzehp;)V

    :cond_0
    return-void
.end method

.method private final zzav(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeik;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzefh;->zze(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzefh;->zzmvr:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvq:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegy;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzefh;->zzd(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzega;)Lcom/google/android/gms/internal/zzeik;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzeik;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzehm;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzehm;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzego;",
            "Lcom/google/android/gms/internal/zzehm<",
            "Lcom/google/android/gms/internal/zzefg;",
            ">;",
            "Lcom/google/android/gms/internal/zzekd;",
            "Lcom/google/android/gms/internal/zzegj;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefg;

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p3

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object p2

    new-instance v8, Lcom/google/android/gms/internal/zzefn;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzefn;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzego;Ljava/util/List;)V

    invoke-virtual {p2, v8}, Lcom/google/android/gms/internal/zzeag;->zza(Lcom/google/android/gms/internal/zzear;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p4, p3}, Lcom/google/android/gms/internal/zzefg;->zza(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v7
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeik;",
            "Lcom/google/android/gms/internal/zzedh;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzefl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzefl;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private final zzbww()Lcom/google/android/gms/internal/zzega;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzega;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzefh;->zzmvu:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/internal/zzefh;->zzmvu:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzega;-><init>(J)V

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzegg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvp:Lcom/google/android/gms/internal/zzegg;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzehm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    return-object p0
.end method

.method private static zzd(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeik;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final zze(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzega;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzega;

    return-object p1
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzefh;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvr:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzega;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzefh;->zzbww()Lcom/google/android/gms/internal/zzega;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzefh;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvq:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzefh;)Lcom/google/android/gms/internal/zzefz;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvt:Lcom/google/android/gms/internal/zzefz;

    return-object p0
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zza(JZZLcom/google/android/gms/internal/zzeli;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ",
            "Lcom/google/android/gms/internal/zzeli;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v8, Lcom/google/android/gms/internal/zzefp;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move-wide v4, p1

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzefp;-><init>(Lcom/google/android/gms/internal/zzefh;ZJZLcom/google/android/gms/internal/zzeli;)V

    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;Lcom/google/android/gms/internal/zzecy;JZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzecy;",
            "Lcom/google/android/gms/internal/zzecy;",
            "JZ)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    move-object v8, p0

    iget-object v9, v8, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v10, Lcom/google/android/gms/internal/zzefo;

    move-object v0, v10

    move-object v1, v8

    move/from16 v2, p6

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/zzefo;-><init>(Lcom/google/android/gms/internal/zzefh;ZLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;JLcom/google/android/gms/internal/zzecy;)V

    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzega;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            "Lcom/google/android/gms/internal/zzega;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzefv;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzefv;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekd;JZZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            "Lcom/google/android/gms/internal/zzekd;",
            "JZZ)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    if-nez p6, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "We shouldn\'t be persisting non-visible writes."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    move-object v9, p0

    iget-object v10, v9, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v11, Lcom/google/android/gms/internal/zzefi;

    move-object v0, v11

    move-object v1, v9

    move/from16 v2, p7

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v5, p4

    move-object v7, p3

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzefi;-><init>(Lcom/google/android/gms/internal/zzefh;ZLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;JLcom/google/android/gms/internal/zzekd;Z)V

    invoke-interface {v10, v11}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Ljava/util/List;Lcom/google/android/gms/internal/zzega;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzekk;",
            ">;",
            "Lcom/google/android/gms/internal/zzega;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzega;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzefg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzefg;->zzb(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeil;->zzbza()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzekk;->zzm(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/zzefh;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzega;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzefs;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/zzefs;-><init>(Lcom/google/android/gms/internal/zzefh;Ljava/util/Map;Lcom/google/android/gms/internal/zzedk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedk;Ljava/util/Map;Lcom/google/android/gms/internal/zzega;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;",
            "Lcom/google/android/gms/internal/zzega;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzefj;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/internal/zzefj;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;Lcom/google/android/gms/internal/zzedk;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzega;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzega;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzefu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzefu;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzega;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeik;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/google/android/gms/internal/zzefx;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzefx;-><init>(Lcom/google/android/gms/internal/zzeik;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzefh;->zzg(Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzefh;->zzmvs:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzefh;->zzmvs:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/android/gms/internal/zzefx;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzefx;-><init>(Lcom/google/android/gms/internal/zzeik;)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzefh;->zzh(Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzefh;->zzmvs:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzedk;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzekk;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzefg;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzefg;->zzbwu()Lcom/google/android/gms/internal/zzeil;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeil;->zzbza()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzekk;->zzm(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzefh;->zzi(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzbwv()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzefq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzefq;-><init>(Lcom/google/android/gms/internal/zzefh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzedk;Ljava/util/List;)Lcom/google/android/gms/internal/zzekd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gms/internal/zzekd;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvo:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v0

    move-object v0, p1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v5

    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/zzehm;->zze(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzehm;->zzbxw()Lcom/google/android/gms/internal/zzehm;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzefg;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzefg;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvp:Lcom/google/android/gms/internal/zzegg;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v3, p2, v1}, Lcom/google/android/gms/internal/zzegg;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Ljava/util/List;Z)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedh;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzefk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzefk;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzedh;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedh;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/zzefh;->zzb(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzefr;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzefr;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public final zzs(Lcom/google/android/gms/internal/zzedk;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefh;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    new-instance v1, Lcom/google/android/gms/internal/zzeft;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzeft;-><init>(Lcom/google/android/gms/internal/zzefh;Lcom/google/android/gms/internal/zzedk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzegy;->zze(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
