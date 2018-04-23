.class public final Lcom/google/android/gms/internal/zzefg;
.super Ljava/lang/Object;


# instance fields
.field private final zzmvm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzeih;",
            "Lcom/google/android/gms/internal/zzeil;",
            ">;"
        }
    .end annotation
.end field

.field private final zzmvn:Lcom/google/android/gms/internal/zzegy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzefg;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzeil;Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeil;",
            "Lcom/google/android/gms/internal/zzego;",
            "Lcom/google/android/gms/internal/zzegj;",
            "Lcom/google/android/gms/internal/zzekd;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzeil;->zzb(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzeim;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result p3

    if-nez p3, :cond_4

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/zzeim;->zznav:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzehz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehz;->zzbye()Lcom/google/android/gms/internal/zzeic;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzeic;->zzmzu:Lcom/google/android/gms/internal/zzeic;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/zzeic;->zzmzt:Lcom/google/android/gms/internal/zzeic;

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object p1

    invoke-interface {v0, p1, p4, p3}, Lcom/google/android/gms/internal/zzegy;->zza(Lcom/google/android/gms/internal/zzeik;Ljava/util/Set;Ljava/util/Set;)V

    :cond_4
    iget-object p1, p2, Lcom/google/android/gms/internal/zzeim;->zznau:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Lcom/google/android/gms/internal/zzelq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeik;",
            "Lcom/google/android/gms/internal/zzedh;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Lcom/google/android/gms/internal/zzelq<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeik;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v4, p2, p3}, Lcom/google/android/gms/internal/zzeil;->zza(Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzeil;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzeil;

    if-eqz v3, :cond_2

    invoke-virtual {v3, p2, p3}, Lcom/google/android/gms/internal/zzeil;->zza(Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeil;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzefg;->zzbwt()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/zzelq;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/zzelq;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedh;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzehx;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedh;",
            "Lcom/google/android/gms/internal/zzegj;",
            "Lcom/google/android/gms/internal/zzehx;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedh;->zzbvp()Lcom/google/android/gms/internal/zzeik;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeil;

    if-nez v1, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzegj;->zzc(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzegj;->zzd(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    move p2, v2

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/zzein;

    new-instance v4, Lcom/google/android/gms/internal/zzehx;

    invoke-direct {v4, v1, p2, v2}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    invoke-direct {v3, v4, p3}, Lcom/google/android/gms/internal/zzein;-><init>(Lcom/google/android/gms/internal/zzehx;Lcom/google/android/gms/internal/zzehx;)V

    new-instance v1, Lcom/google/android/gms/internal/zzeil;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/internal/zzeil;-><init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzein;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeil;->zzbzb()Lcom/google/android/gms/internal/zzekd;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/zzefg;->zzmvn:Lcom/google/android/gms/internal/zzegy;

    invoke-interface {p3, v0, p2}, Lcom/google/android/gms/internal/zzegy;->zza(Lcom/google/android/gms/internal/zzeik;Ljava/util/Set;)V

    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object p3

    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzeil;->zzb(Lcom/google/android/gms/internal/zzedh;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzeil;->zzk(Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzego;",
            "Lcom/google/android/gms/internal/zzegj;",
            "Lcom/google/android/gms/internal/zzekd;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzego;->zzbxj()Lcom/google/android/gms/internal/zzegq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegq;->zzbxn()Lcom/google/android/gms/internal/zzeih;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzeil;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzefg;->zza(Lcom/google/android/gms/internal/zzeil;Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzeil;

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/android/gms/internal/zzefg;->zza(Lcom/google/android/gms/internal/zzeil;Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeil;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzefg;->zzbwu()Lcom/google/android/gms/internal/zzeil;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzeil;

    return-object p1
.end method

.method public final zzbws()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeil;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final zzbwt()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzefg;->zzbwu()Lcom/google/android/gms/internal/zzeil;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzbwu()Lcom/google/android/gms/internal/zzeil;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeil;->zzbyz()Lcom/google/android/gms/internal/zzeik;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzeik;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzefg;->zzb(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeil;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzefg;->zzmvm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeil;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzeil;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzeil;->zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
