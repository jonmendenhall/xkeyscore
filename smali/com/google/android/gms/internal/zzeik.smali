.class public final Lcom/google/android/gms/internal/zzeik;
.super Ljava/lang/Object;


# instance fields
.field private final zzmks:Lcom/google/android/gms/internal/zzedk;

.field private final zzmkw:Lcom/google/android/gms/internal/zzeih;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    return-void
.end method

.method public static zzam(Lcom/google/android/gms/internal/zzedk;)Lcom/google/android/gms/internal/zzeik;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzeik;

    sget-object v1, Lcom/google/android/gms/internal/zzeih;->zznae:Lcom/google/android/gms/internal/zzeih;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzeik;-><init>(Lcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzeih;)V

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
    check-cast p1, Lcom/google/android/gms/internal/zzeik;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzeih;->equals(Ljava/lang/Object;)Z

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzedk;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzeih;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->isDefault()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbsy()Lcom/google/android/gms/internal/zzedk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-object v0
.end method

.method public final zzbyr()Lcom/google/android/gms/internal/zzejv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbyr()Lcom/google/android/gms/internal/zzejv;

    move-result-object v0

    return-object v0
.end method

.method public final zzbyv()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzeih;->zzbyv()Z

    move-result v0

    return v0
.end method

.method public final zzbyy()Lcom/google/android/gms/internal/zzeih;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeik;->zzmkw:Lcom/google/android/gms/internal/zzeih;

    return-object v0
.end method
