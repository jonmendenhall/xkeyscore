.class public final Lcom/google/android/gms/internal/zzekc;
.super Ljava/lang/Object;


# static fields
.field private static final zzncz:Lcom/google/android/gms/internal/zzekc;

.field private static final zznda:Lcom/google/android/gms/internal/zzekc;


# instance fields
.field private final zzmzd:Lcom/google/android/gms/internal/zzejg;

.field private final zzncq:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzn()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzcaf()Lcom/google/android/gms/internal/zzeju;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    sput-object v0, Lcom/google/android/gms/internal/zzekc;->zzncz:Lcom/google/android/gms/internal/zzekc;

    new-instance v0, Lcom/google/android/gms/internal/zzekc;

    invoke-static {}, Lcom/google/android/gms/internal/zzejg;->zzbzo()Lcom/google/android/gms/internal/zzejg;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzekd;->zzndb:Lcom/google/android/gms/internal/zzeji;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzekc;-><init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V

    sput-object v0, Lcom/google/android/gms/internal/zzekc;->zznda:Lcom/google/android/gms/internal/zzekc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzekd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzekc;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzekc;->zzncq:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method

.method public static zzcam()Lcom/google/android/gms/internal/zzekc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzekc;->zzncz:Lcom/google/android/gms/internal/zzekc;

    return-object v0
.end method

.method public static zzcan()Lcom/google/android/gms/internal/zzekc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzekc;->zznda:Lcom/google/android/gms/internal/zzekc;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzekc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzekc;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzekc;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzejg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzekc;->zzncq:Lcom/google/android/gms/internal/zzekd;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzekc;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekc;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejg;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekc;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekc;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzekc;->zzncq:Lcom/google/android/gms/internal/zzekd;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x17

    add-int/2addr v3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "NamedNode{name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", node="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbsv()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekc;->zzncq:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzcao()Lcom/google/android/gms/internal/zzejg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzekc;->zzmzd:Lcom/google/android/gms/internal/zzejg;

    return-object v0
.end method
