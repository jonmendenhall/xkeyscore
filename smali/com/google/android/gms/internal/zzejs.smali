.class public final Lcom/google/android/gms/internal/zzejs;
.super Lcom/google/android/gms/internal/zzejy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzejy<",
        "Lcom/google/android/gms/internal/zzejs;",
        ">;"
    }
.end annotation


# instance fields
.field private zzncm:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzekd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/gms/internal/zzekd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzejy;-><init>(Lcom/google/android/gms/internal/zzekd;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejs;->zzncm:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/internal/zzejs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/zzejs;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejs;->zzncm:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzejs;->zzncm:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejs;->zznbx:Lcom/google/android/gms/internal/zzekd;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzejs;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejs;->zzncm:Ljava/util/Map;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejs;->zzncm:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejs;->zznbx:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected final bridge synthetic zza(Lcom/google/android/gms/internal/zzejy;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzejy;->zzb(Lcom/google/android/gms/internal/zzekf;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejs;->zzncm:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    add-int/2addr v2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "deferredValue:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final zzbzm()Lcom/google/android/gms/internal/zzeka;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzeka;->zzncu:Lcom/google/android/gms/internal/zzeka;

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/zzekd;)Lcom/google/android/gms/internal/zzekd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzejs;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejs;->zzncm:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzejs;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/zzekd;)V

    return-object v0
.end method
