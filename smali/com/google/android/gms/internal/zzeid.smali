.class public final Lcom/google/android/gms/internal/zzeid;
.super Ljava/lang/Object;


# instance fields
.field private final zzmzz:Lcom/google/android/gms/internal/zzeik;

.field private final zznaa:Lcom/google/android/gms/internal/zzejv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeik;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeid;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeid;->zznaa:Lcom/google/android/gms/internal/zzejv;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeid;)Lcom/google/android/gms/internal/zzejv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzeid;->zznaa:Lcom/google/android/gms/internal/zzejv;

    return-object p0
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeic;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzejw;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;",
            "Lcom/google/android/gms/internal/zzeic;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehz;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzedh;",
            ">;",
            "Lcom/google/android/gms/internal/zzejw;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzehz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehz;->zzbye()Lcom/google/android/gms/internal/zzeic;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/zzeic;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/google/android/gms/internal/zzeie;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/zzeie;-><init>(Lcom/google/android/gms/internal/zzeid;)V

    invoke-static {v0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    :cond_2
    if-ge v1, p3, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/google/android/gms/internal/zzehz;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/zzedh;->zza(Lcom/google/android/gms/internal/zzeic;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehz;->zzbye()Lcom/google/android/gms/internal/zzeic;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzeic;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehz;->zzbye()Lcom/google/android/gms/internal/zzeic;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/zzeic;->zzmzt:Lcom/google/android/gms/internal/zzeic;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzeic;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/zzeid;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {p5, v5, v6, v7}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejg;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/zzehz;->zzg(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v5, v2

    :goto_3
    iget-object v6, p0, Lcom/google/android/gms/internal/zzeid;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzedh;->zza(Lcom/google/android/gms/internal/zzehz;Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeia;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehz;",
            ">;",
            "Lcom/google/android/gms/internal/zzejw;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzedh;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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

    sget-object v3, Lcom/google/android/gms/internal/zzeic;->zzmzw:Lcom/google/android/gms/internal/zzeic;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzeic;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeid;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehz;->zzbyg()Lcom/google/android/gms/internal/zzejw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/zzekc;

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzn()Lcom/google/android/gms/internal/zzejg;

    move-result-object v8

    invoke-direct {v5, v8, v3}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    new-instance v3, Lcom/google/android/gms/internal/zzekc;

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzn()Lcom/google/android/gms/internal/zzejg;

    move-result-object v8

    invoke-direct {v3, v8, v4}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/zzejv;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehz;->zzbyd()Lcom/google/android/gms/internal/zzejg;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehz;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzehz;->zzc(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzejw;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/zzeic;->zzmzt:Lcom/google/android/gms/internal/zzeic;

    move-object v0, p0

    move-object v1, v6

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeid;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeic;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzejw;)V

    sget-object v2, Lcom/google/android/gms/internal/zzeic;->zzmzu:Lcom/google/android/gms/internal/zzeic;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeid;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeic;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzejw;)V

    sget-object v2, Lcom/google/android/gms/internal/zzeic;->zzmzv:Lcom/google/android/gms/internal/zzeic;

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeid;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeic;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzejw;)V

    sget-object v2, Lcom/google/android/gms/internal/zzeic;->zzmzw:Lcom/google/android/gms/internal/zzeic;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeid;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeic;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzejw;)V

    sget-object v2, Lcom/google/android/gms/internal/zzeic;->zzmzx:Lcom/google/android/gms/internal/zzeic;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzeid;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzeic;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/zzejw;)V

    return-object v6
.end method
