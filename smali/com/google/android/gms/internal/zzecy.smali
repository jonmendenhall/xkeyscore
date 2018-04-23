.class public final Lcom/google/android/gms/internal/zzecy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/android/gms/internal/zzedk;",
        "Lcom/google/android/gms/internal/zzekd;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final zzmrt:Lcom/google/android/gms/internal/zzecy;


# instance fields
.field private final zzmru:Lcom/google/android/gms/internal/zzehm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehm<",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzecy;

    new-instance v1, Lcom/google/android/gms/internal/zzehm;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    sput-object v0, Lcom/google/android/gms/internal/zzecy;->zzmrt:Lcom/google/android/gms/internal/zzecy;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzehm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehm<",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzehm<",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;",
            "Lcom/google/android/gms/internal/zzekd;",
            ")",
            "Lcom/google/android/gms/internal/zzekd;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzekd;

    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzehm;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekd;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-direct {p0, v1, v2, p3}, Lcom/google/android/gms/internal/zzecy;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzp()Lcom/google/android/gms/internal/zzejg;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p3

    :cond_3
    return-object p3
.end method

.method public static zzak(Ljava/util/Map;)Lcom/google/android/gms/internal/zzecy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/internal/zzecy;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzehm;->zzbxw()Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/google/android/gms/internal/zzehm;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzekg;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/zzedk;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/zzedk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/zzecy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object p0
.end method

.method public static zzal(Ljava/util/Map;)Lcom/google/android/gms/internal/zzecy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;)",
            "Lcom/google/android/gms/internal/zzecy;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/zzehm;->zzbxw()Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/google/android/gms/internal/zzehm;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzekd;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/zzecy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object p0
.end method

.method public static zzbvq()Lcom/google/android/gms/internal/zzecy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzecy;->zzmrt:Lcom/google/android/gms/internal/zzecy;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzecy;->zzcn(Z)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzecy;->zzcn(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzecy;->zzcn(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/android/gms/internal/zzedk;",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzecy;->zzcn(Z)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CompoundWrite{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzedk;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/zzejg;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzedk;-><init>([Lcom/google/android/gms/internal/zzejg;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzecy;->zze(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)Lcom/google/android/gms/internal/zzecy;
    .locals 1

    iget-object p2, p2, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    new-instance v0, Lcom/google/android/gms/internal/zzecz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzecz;-><init>(Lcom/google/android/gms/internal/zzecy;Lcom/google/android/gms/internal/zzedk;)V

    invoke-virtual {p2, p0, v0}, Lcom/google/android/gms/internal/zzehm;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzehp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzecy;

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzedk;->zzbwe()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzecy;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public final zzbvr()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzbvs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekc;

    new-instance v3, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/zzekc;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzekd;

    invoke-direct {v4, v2, v3}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final zzbvt()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzejg;",
            "Lcom/google/android/gms/internal/zzecy;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzejg;

    new-instance v4, Lcom/google/android/gms/internal/zzecy;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzehm;

    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzcn(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    new-instance v1, Lcom/google/android/gms/internal/zzeda;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/zzeda;-><init>(Lcom/google/android/gms/internal/zzecy;Ljava/util/Map;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzehp;)V

    return-object p1
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzecy;->zzmrt:Lcom/google/android/gms/internal/zzecy;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-static {}, Lcom/google/android/gms/internal/zzehm;->zzbxw()Lcom/google/android/gms/internal/zzehm;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzecy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzecy;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzecy;

    new-instance v0, Lcom/google/android/gms/internal/zzehm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzaf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwk()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwj()Lcom/google/android/gms/internal/zzedk;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzecy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object p2

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzehm;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehm;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzecy;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object p2
.end method

.method public final zze(Lcom/google/android/gms/internal/zzedk;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzecy;->zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzaf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzedk;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzecy;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzecy;->zzf(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzecy;

    new-instance v1, Lcom/google/android/gms/internal/zzehm;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzecy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzecy;->zzmru:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzecy;-><init>(Lcom/google/android/gms/internal/zzehm;)V

    return-object v0
.end method
