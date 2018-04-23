.class public final Lcom/google/android/gms/internal/zzeil;
.super Ljava/lang/Object;


# instance fields
.field private final zzmzz:Lcom/google/android/gms/internal/zzeik;

.field private final zznaq:Lcom/google/android/gms/internal/zzeio;

.field private zznar:Lcom/google/android/gms/internal/zzein;

.field private final zznas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzedh;",
            ">;"
        }
    .end annotation
.end field

.field private final zznat:Lcom/google/android/gms/internal/zzeid;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeik;Lcom/google/android/gms/internal/zzein;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeil;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    new-instance v0, Lcom/google/android/gms/internal/zzeiu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeiu;-><init>(Lcom/google/android/gms/internal/zzejv;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyy()Lcom/google/android/gms/internal/zzeih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeih;->zzbyx()Lcom/google/android/gms/internal/zzeiw;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzeio;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzeio;-><init>(Lcom/google/android/gms/internal/zzeiw;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzeil;->zznaq:Lcom/google/android/gms/internal/zzeio;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzein;->zzbze()Lcom/google/android/gms/internal/zzehx;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeik;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/internal/zzeiu;->zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v4

    invoke-interface {v1, v3, v4, v5}, Lcom/google/android/gms/internal/zzeiw;->zza(Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzeit;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v2

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    new-instance v0, Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result p2

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzeiw;->zzbzi()Z

    move-result v1

    invoke-direct {v0, v3, p2, v1}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    new-instance p2, Lcom/google/android/gms/internal/zzein;

    invoke-direct {p2, v0, v4}, Lcom/google/android/gms/internal/zzein;-><init>(Lcom/google/android/gms/internal/zzehx;Lcom/google/android/gms/internal/zzehx;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    new-instance p2, Lcom/google/android/gms/internal/zzeid;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/zzeid;-><init>(Lcom/google/android/gms/internal/zzeik;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeil;->zznat:Lcom/google/android/gms/internal/zzeid;

    return-void
.end method

.method private final zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzehz;",
            ">;",
            "Lcom/google/android/gms/internal/zzejw;",
            "Lcom/google/android/gms/internal/zzedh;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzedh;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznat:Lcom/google/android/gms/internal/zzeid;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeid;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedh;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeib;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbsy()Lcom/google/android/gms/internal/zzedk;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzedh;

    new-instance v4, Lcom/google/android/gms/internal/zzehy;

    invoke-direct {v4, v3, p2, v1}, Lcom/google/android/gms/internal/zzehy;-><init>(Lcom/google/android/gms/internal/zzedh;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzedk;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_5

    const/4 p2, 0x0

    const/4 v1, -0x1

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzedh;->zzc(Lcom/google/android/gms/internal/zzedh;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzedh;->zzbwd()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v2

    :cond_4
    if-eq p2, v1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzedh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedh;->zzbwc()V

    return-object v0

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzedh;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzedh;->zzbwc()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_7
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzeim;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzego;->zzbxk()Lcom/google/android/gms/internal/zzegp;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzegp;->zzmxo:Lcom/google/android/gms/internal/zzegp;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzego;->zzbxj()Lcom/google/android/gms/internal/zzegq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegq;->zzbxn()Lcom/google/android/gms/internal/zzeih;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zznaq:Lcom/google/android/gms/internal/zzeio;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzeio;->zza(Lcom/google/android/gms/internal/zzein;Lcom/google/android/gms/internal/zzego;Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzeir;

    move-result-object p1

    iget-object p2, p1, Lcom/google/android/gms/internal/zzeir;->zznar:Lcom/google/android/gms/internal/zzein;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    iget-object p2, p1, Lcom/google/android/gms/internal/zzeir;->zznav:Ljava/util/List;

    iget-object p3, p1, Lcom/google/android/gms/internal/zzeir;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/gms/internal/zzeil;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/zzeim;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeir;->zznav:Ljava/util/List;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/zzeim;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzedh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzbyz()Lcom/google/android/gms/internal/zzeik;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    return-object v0
.end method

.method public final zzbza()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbze()Lcom/google/android/gms/internal/zzehx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method

.method public final zzbzb()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzedh;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzeia;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzehz;->zzc(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/zzehz;->zza(Lcom/google/android/gms/internal/zzejw;)Lcom/google/android/gms/internal/zzehz;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbyb()Lcom/google/android/gms/internal/zzejw;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/gms/internal/zzeil;->zza(Ljava/util/List;Lcom/google/android/gms/internal/zzejw;Lcom/google/android/gms/internal/zzedh;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzr(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeil;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbzf()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeil;->zzmzz:Lcom/google/android/gms/internal/zzeik;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeik;->zzbyv()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
