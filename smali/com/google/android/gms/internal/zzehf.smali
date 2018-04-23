.class public final Lcom/google/android/gms/internal/zzehf;
.super Ljava/lang/Object;


# static fields
.field private static final zzmyp:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzeih;",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzmyq:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzeih;",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final zzmyr:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmys:Lcom/google/android/gms/internal/zzehq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehq<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzmlr:Lcom/google/android/gms/internal/zzejc;

.field private final zzmyc:Lcom/google/android/gms/internal/zzegz;

.field private zzmyt:Lcom/google/android/gms/internal/zzehm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzehm<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzeih;",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzmyu:Lcom/google/android/gms/internal/zzeli;

.field private zzmyv:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzehg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyp:Lcom/google/android/gms/internal/zzehq;

    new-instance v0, Lcom/google/android/gms/internal/zzehh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyq:Lcom/google/android/gms/internal/zzehq;

    new-instance v0, Lcom/google/android/gms/internal/zzehi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyr:Lcom/google/android/gms/internal/zzehq;

    new-instance v0, Lcom/google/android/gms/internal/zzehj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzehj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzehf;->zzmys:Lcom/google/android/gms/internal/zzehq;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzegz;Lcom/google/android/gms/internal/zzejc;Lcom/google/android/gms/internal/zzeli;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehf;->zzmyu:Lcom/google/android/gms/internal/zzeli;

    new-instance p1, Lcom/google/android/gms/internal/zzehm;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzehm;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzegz;->beginTransaction()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehf;->zzmyu:Lcom/google/android/gms/internal/zzeli;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzeli;->millis()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/zzegz;->zzbn(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzegz;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzegz;->endTransaction()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzegz;->zzbtd()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzehe;

    iget-wide v0, p2, Lcom/google/android/gms/internal/zzehe;->id:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzehf;->zzb(Lcom/google/android/gms/internal/zzehe;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzegz;->endTransaction()V

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzehq;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzehq<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehe;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzehe;

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/zzehq;->zzbs(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzehe;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zzb(Lcom/google/android/gms/internal/zzehe;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzegz;->zza(Lcom/google/android/gms/internal/zzehe;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzehf;Lcom/google/android/gms/internal/zzehe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehe;)V

    return-void
.end method

.method private final zzad(Lcom/google/android/gms/internal/zzedk;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzehf;->zzmyp:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehq;)Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzae(Lcom/google/android/gms/internal/zzedk;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzehe;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v1, v1, Lcom/google/android/gms/internal/zzehe;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzehe;)V
    .locals 8

    iget-object v0, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    const-string v1, "Can\'t have tracked non-default query that loads all data"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzelt;->zzb(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    iget-object v4, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    :cond_2
    iget-object v1, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzehe;

    if-eqz v1, :cond_4

    iget-wide v4, v1, Lcom/google/android/gms/internal/zzehe;->id:J

    iget-wide v6, p1, Lcom/google/android/gms/internal/zzehe;->id:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/zzelt;->zzcp(Z)V

    iget-object v1, p1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzeik;Z)V
    .locals 21

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzehf;->zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/zzehf;->zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzehf;->zzmyu:Lcom/google/android/gms/internal/zzeli;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzeli;->millis()J

    move-result-wide v9

    if-eqz v1, :cond_0

    new-instance v2, Lcom/google/android/gms/internal/zzehe;

    iget-wide v6, v1, Lcom/google/android/gms/internal/zzehe;->id:J

    iget-object v8, v1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    iget-boolean v11, v1, Lcom/google/android/gms/internal/zzehe;->complete:Z

    iget-boolean v12, v1, Lcom/google/android/gms/internal/zzehe;->zziyi:Z

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    new-instance v1, Lcom/google/android/gms/internal/zzehe;

    iget-wide v14, v2, Lcom/google/android/gms/internal/zzehe;->id:J

    iget-object v3, v2, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    iget-wide v4, v2, Lcom/google/android/gms/internal/zzehe;->zzmyo:J

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzehe;->complete:Z

    move-object v13, v1

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move/from16 v19, v2

    move/from16 v20, p2

    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    move-object v11, v1

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/google/android/gms/internal/zzehe;

    iget-wide v2, v0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    const/4 v7, 0x0

    move-object v1, v11

    move-wide v5, v9

    move/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    :goto_0
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehe;)V

    return-void
.end method

.method static synthetic zzbxv()Lcom/google/android/gms/internal/zzehq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyr:Lcom/google/android/gms/internal/zzehq;

    return-object v0
.end method

.method private static zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzegt;)Lcom/google/android/gms/internal/zzeha;
    .locals 11

    sget-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyr:Lcom/google/android/gms/internal/zzehq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzegt;->zzbxp()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    long-to-float v3, v1

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzegt;->zzbxq()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    sub-long/2addr v1, v3

    new-instance p1, Lcom/google/android/gms/internal/zzeha;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzeha;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x50

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Pruning old queries.  Prunable: "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " Count to prune: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v6, v4, v7}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/zzehl;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzehl;-><init>(Lcom/google/android/gms/internal/zzehf;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v3, p1

    move p1, v5

    :goto_0
    int-to-long v6, p1

    cmp-long v6, v6, v1

    if-gez v6, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzehe;

    iget-object v7, v6, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/zzeha;->zzx(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeha;

    move-result-object v3

    iget-object v6, v6, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-static {v6}, Lcom/google/android/gms/internal/zzehf;->zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/zzehf;->zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    iget-wide v9, v7, Lcom/google/android/gms/internal/zzehe;->id:J

    invoke-interface {v8, v9, v10}, Lcom/google/android/gms/internal/zzegz;->zzbm(J)V

    iget-object v7, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/zzehm;->zzai(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    long-to-int p1, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzehe;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/zzeha;->zzy(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeha;

    move-result-object v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/zzehf;->zzmys:Lcom/google/android/gms/internal/zzehq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehq;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejc;->zzbzl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmlr:Lcom/google/android/gms/internal/zzejc;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unprunable queries: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/gms/internal/zzejc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzehe;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzehe;->zzmyn:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/zzeha;->zzy(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeha;

    move-result-object v3

    goto :goto_2

    :cond_5
    return-object v3
.end method

.method public final zzaa(Lcom/google/android/gms/internal/zzedk;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedk;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zzae(Lcom/google/android/gms/internal/zzedk;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehf;->zzmyc:Lcom/google/android/gms/internal/zzegz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzegz;->zze(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehm;->zzbxx()Lcom/google/android/gms/internal/zzeag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/android/gms/internal/zzehf;->zzmyp:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzehm;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/zzehq;->zzbs(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final zzab(Lcom/google/android/gms/internal/zzedk;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zzad(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzeik;->zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzehf;->zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzehe;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyv:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyu:Lcom/google/android/gms/internal/zzeli;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzeli;->millis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzehe;-><init>(JLcom/google/android/gms/internal/zzeik;JZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehe;->zzbxt()Lcom/google/android/gms/internal/zzehe;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehe;)V

    :cond_1
    return-void
.end method

.method public final zzac(Lcom/google/android/gms/internal/zzedk;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    sget-object v1, Lcom/google/android/gms/internal/zzehf;->zzmyq:Lcom/google/android/gms/internal/zzehq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzehm;->zzb(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzehq;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzbxu()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzehf;->zzmyr:Lcom/google/android/gms/internal/zzehq;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzeik;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzehf;->zzb(Lcom/google/android/gms/internal/zzeik;Z)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzeik;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzehf;->zzb(Lcom/google/android/gms/internal/zzeik;Z)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzehf;->zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzehe;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/zzeik;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzehf;->zzj(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzeik;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zzk(Lcom/google/android/gms/internal/zzeik;)Lcom/google/android/gms/internal/zzehe;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzehe;->complete:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzehe;->zzbxt()Lcom/google/android/gms/internal/zzehe;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzehf;->zza(Lcom/google/android/gms/internal/zzehe;)V

    :cond_0
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/zzeik;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzehf;->zzad(Lcom/google/android/gms/internal/zzedk;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzehm;->zzaj(Lcom/google/android/gms/internal/zzedk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzehe;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzehe;->complete:Z

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public final zzz(Lcom/google/android/gms/internal/zzedk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehf;->zzmyt:Lcom/google/android/gms/internal/zzehm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehm;->zzah(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzehm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzehk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzehk;-><init>(Lcom/google/android/gms/internal/zzehf;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzehm;->zza(Lcom/google/android/gms/internal/zzehp;)V

    return-void
.end method
