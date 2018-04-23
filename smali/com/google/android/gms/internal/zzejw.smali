.class public final Lcom/google/android/gms/internal/zzejw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/zzekc;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzncp:Lcom/google/android/gms/internal/zzeal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeal<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zznaa:Lcom/google/android/gms/internal/zzejv;

.field private final zzncq:Lcom/google/android/gms/internal/zzekd;

.field private zzncr:Lcom/google/android/gms/internal/zzeal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeal<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzeal;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzeal;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;Lcom/google/android/gms/internal/zzeal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzekd;",
            "Lcom/google/android/gms/internal/zzejv;",
            "Lcom/google/android/gms/internal/zzeal<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzejw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)V

    return-object v0
.end method

.method private final zzcai()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-static {}, Lcom/google/android/gms/internal/zzejx;->zzcal()Lcom/google/android/gms/internal/zzejx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzekc;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/zzejv;->zzi(Lcom/google/android/gms/internal/zzekd;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v2

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    new-instance v5, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/zzeal;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzeal;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    return-void

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    :cond_4
    return-void
.end method

.method public static zzj(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzejw;

    invoke-static {}, Lcom/google/android/gms/internal/zzeki;->zzcap()Lcom/google/android/gms/internal/zzeki;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)V

    return-object v0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejw;->zzcai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    sget-object v1, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeal;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejg;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-static {}, Lcom/google/android/gms/internal/zzejx;->zzcal()Lcom/google/android/gms/internal/zzejx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Index not available in IndexedNode!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejw;->zzcai()V

    iget-object p3, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    sget-object v0, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    if-ne p3, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzejg;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/zzeal;->zzbn(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzekc;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzbsv()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzbti()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejw;->zzcai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    sget-object v1, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->zzbti()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeal;->zzbti()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzcaj()Lcom/google/android/gms/internal/zzekc;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzeji;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejw;->zzcai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    sget-object v1, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    check-cast v0, Lcom/google/android/gms/internal/zzeji;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeji;->zzbzw()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzekc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeal;->zzbtk()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    return-object v0
.end method

.method public final zzcak()Lcom/google/android/gms/internal/zzekc;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    instance-of v0, v0, Lcom/google/android/gms/internal/zzeji;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzejw;->zzcai()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    sget-object v1, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    check-cast v0, Lcom/google/android/gms/internal/zzeji;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeji;->zzbzx()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzekc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeal;->zzbtl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzekc;

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzekd;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    sget-object v2, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/zzejv;->zzi(Lcom/google/android/gms/internal/zzekd;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzejw;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    sget-object v1, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;Lcom/google/android/gms/internal/zzeal;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    sget-object v2, Lcom/google/android/gms/internal/zzejw;->zzncp:Lcom/google/android/gms/internal/zzeal;

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    new-instance v3, Lcom/google/android/gms/internal/zzekc;

    invoke-direct {v3, p1, v1}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzeal;->zzbl(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeal;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/zzekc;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzeal;->zzbm(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeal;

    move-result-object v1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/zzejw;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;Lcom/google/android/gms/internal/zzeal;)V

    return-object p1

    :cond_3
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/zzejw;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;Lcom/google/android/gms/internal/zzeal;)V

    return-object p1
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzejw;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzejw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzekd;->zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejw;->zznaa:Lcom/google/android/gms/internal/zzejv;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejw;->zzncr:Lcom/google/android/gms/internal/zzeal;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzejw;-><init>(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;Lcom/google/android/gms/internal/zzeal;)V

    return-object v0
.end method
