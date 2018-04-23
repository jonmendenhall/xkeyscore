.class public Lcom/google/android/gms/internal/zzeji;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzekd;


# static fields
.field public static zznbw:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/gms/internal/zzejg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzmyx:Lcom/google/android/gms/internal/zzeag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeag<",
            "Lcom/google/android/gms/internal/zzejg;",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;"
        }
    .end annotation
.end field

.field private final zznbx:Lcom/google/android/gms/internal/zzekd;

.field private zznby:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzejj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzejj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzeji;->zznbw:Ljava/util/Comparator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznby:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzeji;->zznbw:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzeah;->zza(Ljava/util/Comparator;)Lcom/google/android/gms/internal/zzeag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/internal/zzeag;Lcom/google/android/gms/internal/zzekd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeag<",
            "Lcom/google/android/gms/internal/zzejg;",
            "Lcom/google/android/gms/internal/zzekd;",
            ">;",
            "Lcom/google/android/gms/internal/zzekd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznby:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create empty ChildrenNode with priority!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    return-void
.end method

.method private static zzb(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzc(Ljava/lang/StringBuilder;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p2, "{ }"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string/jumbo v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzeji;->zzb(Ljava/lang/StringBuilder;I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/gms/internal/zzeji;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzeji;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/zzeji;->zzc(Ljava/lang/StringBuilder;I)V

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, p2, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzeji;->zzb(Ljava/lang/StringBuilder;I)V

    const-string v0, ".priority="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzeji;->zzb(Ljava/lang/StringBuilder;I)V

    const-string/jumbo p2, "}"

    goto :goto_0
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeji;->zzg(Lcom/google/android/gms/internal/zzekd;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzeji;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzeji;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeji;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeji;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeag;->size()I

    move-result v2

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzeag;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzejg;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_6
    return v0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    return v1

    :cond_9
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Something went wrong internally."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->size()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeji;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Z)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeji;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    move v6, v4

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v7, p1}, Lcom/google/android/gms/internal/zzekd;->getValue(Z)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v2, :cond_2

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x30

    if-eq v7, v9, :cond_3

    :cond_2
    invoke-static {v8}, Lcom/google/android/gms/internal/zzelt;->zzqg(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    if-eqz v5, :cond_6

    const/4 v1, 0x2

    mul-int/2addr v1, v4

    if-ge v6, v1, :cond_6

    new-instance p1, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-gt v3, v6, :cond_5

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object p1

    :cond_6
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, ".priority"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzekd;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeji;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzekc;

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejg;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzejm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejm;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzeji;->zzc(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/zzekf;->zzndc:Lcom/google/android/gms/internal/zzekf;

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hashes on children nodes only supported for V1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "priority:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    sget-object v1, Lcom/google/android/gms/internal/zzekf;->zzndc:Lcom/google/android/gms/internal/zzekf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzekd;->zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeji;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzekc;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzekd;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {}, Lcom/google/android/gms/internal/zzeki;->zzcap()Lcom/google/android/gms/internal/zzeki;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_6
    :goto_1
    if-ge v2, v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/zzekc;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekc;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzekd;->zzbzt()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzekc;->zzcao()Lcom/google/android/gms/internal/zzejg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzejg;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzejl;Z)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeji;->zzbzv()Lcom/google/android/gms/internal/zzekd;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    new-instance v0, Lcom/google/android/gms/internal/zzejk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzejk;-><init>(Lcom/google/android/gms/internal/zzeji;Lcom/google/android/gms/internal/zzejl;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzeag;->zza(Lcom/google/android/gms/internal/zzear;)V

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzeag;->zza(Lcom/google/android/gms/internal/zzear;)V

    return-void
.end method

.method public zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeji;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->zzan(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public zzbti()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/zzekc;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzejm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeag;->zzbti()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzejm;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public zzbzt()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznby:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/zzekf;->zzndc:Lcom/google/android/gms/internal/zzekf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeji;->zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzelt;->zzqe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznby:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznby:Ljava/lang/String;

    return-object v0
.end method

.method public zzbzu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzbzv()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzbzw()Lcom/google/android/gms/internal/zzejg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->zzbtg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method public final zzbzx()Lcom/google/android/gms/internal/zzejg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->zzbth()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method

.method public zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzeji;->zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->zzbf(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeag;

    move-result-object v0

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzeag;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzeag;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/zzeji;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/zzeji;-><init>(Lcom/google/android/gms/internal/zzeag;Lcom/google/android/gms/internal/zzekd;)V

    return-object p1
.end method

.method public zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzeji;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzeji;-><init>(Lcom/google/android/gms/internal/zzeag;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzekd;)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeji;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->zzbzu()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/zzekd;->zzndb:Lcom/google/android/gms/internal/zzeji;

    if-ne p1, v0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public zzk(Lcom/google/android/gms/internal/zzejg;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzeji;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public zzl(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzejg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->zzbh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzejg;

    return-object p1
.end method

.method public zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzeji;->zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzeji;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwi()Lcom/google/android/gms/internal/zzedk;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/zzekd;->zzl(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzeji;->zze(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method

.method public zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzejg;->zzbzr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzekd;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzeji;->zznbx:Lcom/google/android/gms/internal/zzekd;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeji;->zzmyx:Lcom/google/android/gms/internal/zzeag;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeag;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzekd;

    return-object p1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object p1

    return-object p1
.end method
