.class public final Lcom/google/android/gms/internal/zzeal;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzmmi:Lcom/google/android/gms/internal/zzeag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeag<",
            "TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzeag;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeag<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzeah;->zzbtj()Lcom/google/android/gms/internal/zzeaj;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/zzeah;->zzb(Ljava/util/List;Ljava/util/Map;Lcom/google/android/gms/internal/zzeaj;Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeag;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzeal;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzeal;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->hashCode()I

    move-result v0

    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeam;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeam;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->size()I

    move-result v0

    return v0
.end method

.method public final zzbg(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeam;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzeag;->zzbg(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeam;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzbl(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzeal<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->zzbf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeag;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzeal;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeal;-><init>(Lcom/google/android/gms/internal/zzeag;)V

    return-object v0
.end method

.method public final zzbm(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeal;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/zzeal<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeal;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzeag;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeag;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzeal;-><init>(Lcom/google/android/gms/internal/zzeag;)V

    return-object v0
.end method

.method public final zzbn(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->zzbh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzbti()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzeam;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->zzbti()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzeam;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public final zzbtk()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->zzbtg()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzbtl()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeal;->zzmmi:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->zzbth()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
