.class final Lcom/google/android/gms/internal/zzfhj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzfhv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzfhv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzpiu:Lcom/google/android/gms/internal/zzfhe;

.field private final zzpiv:Lcom/google/android/gms/internal/zzfin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfin<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzpiw:Z

.field private final zzpix:Lcom/google/android/gms/internal/zzffn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzffn<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfhe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzfin<",
            "**>;",
            "Lcom/google/android/gms/internal/zzffn<",
            "*>;",
            "Lcom/google/android/gms/internal/zzfhe;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfhj;->zzpiv:Lcom/google/android/gms/internal/zzfin;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzffn;->zzh(Ljava/lang/Class;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfhj;->zzpiw:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfhj;->zzpix:Lcom/google/android/gms/internal/zzffn;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfhj;->zzpiu:Lcom/google/android/gms/internal/zzfhe;

    return-void
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzfin<",
            "**>;",
            "Lcom/google/android/gms/internal/zzffn<",
            "*>;",
            "Lcom/google/android/gms/internal/zzfhe;",
            ")",
            "Lcom/google/android/gms/internal/zzfhj<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzfhj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzfhj;-><init>(Ljava/lang/Class;Lcom/google/android/gms/internal/zzfin;Lcom/google/android/gms/internal/zzffn;Lcom/google/android/gms/internal/zzfhe;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzfji;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/zzfji;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhj;->zzpix:Lcom/google/android/gms/internal/zzffn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzffn;->zzcn(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzffq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzffq;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzffs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzffs;->zzcxi()Lcom/google/android/gms/internal/zzfjd;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zzfjd;->zzpms:Lcom/google/android/gms/internal/zzfjd;

    if-ne v3, v4, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzffs;->zzcxj()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzffs;->zzcxk()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    instance-of v3, v1, Lcom/google/android/gms/internal/zzfgi;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzffs;->zzhq()I

    move-result v2

    check-cast v1, Lcom/google/android/gms/internal/zzfgi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfgi;->zzcyk()Lcom/google/android/gms/internal/zzfgg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzfgk;->toByteString()Lcom/google/android/gms/internal/zzfes;

    move-result-object v1

    :goto_1
    invoke-interface {p2, v2, v1}, Lcom/google/android/gms/internal/zzfji;->zzb(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/internal/zzffs;->zzhq()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhj;->zzpiv:Lcom/google/android/gms/internal/zzfin;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfin;->zzcq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfin;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzfji;)V

    return-void
.end method

.method public final zzcp(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhj;->zzpiv:Lcom/google/android/gms/internal/zzfin;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfin;->zzcq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfin;->zzcr(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfhj;->zzpiw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfhj;->zzpix:Lcom/google/android/gms/internal/zzffn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzffn;->zzcn(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzffq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzffq;->zzcxg()I

    move-result p1

    add-int/2addr v1, p1

    :cond_0
    return v1
.end method
