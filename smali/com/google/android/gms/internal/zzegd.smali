.class public final Lcom/google/android/gms/internal/zzegd;
.super Ljava/lang/Object;


# instance fields
.field private final zzmks:Lcom/google/android/gms/internal/zzedk;

.field private final zzmwq:J

.field private final zzmwr:Lcom/google/android/gms/internal/zzekd;

.field private final zzmws:Lcom/google/android/gms/internal/zzecy;

.field private final zzmwt:Z


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzecy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    return-void
.end method

.method public constructor <init>(JLcom/google/android/gms/internal/zzedk;Lcom/google/android/gms/internal/zzekd;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzegd;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzedk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-eqz v2, :cond_7

    :cond_6
    return v1

    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzecy;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    :cond_8
    iget-object p1, p1, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    if-eqz p1, :cond_a

    :cond_9
    return v1

    :cond_a
    return v0

    :cond_b
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzedk;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzecy;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzegd;->zzmwt:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x4e

    add-int/2addr v7, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v7, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "UserWriteRecord{id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " path="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " visible="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " overwrite="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " merge="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzbsy()Lcom/google/android/gms/internal/zzedk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmks:Lcom/google/android/gms/internal/zzedk;

    return-object v0
.end method

.method public final zzbwy()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwq:J

    return-wide v0
.end method

.method public final zzbwz()Lcom/google/android/gms/internal/zzekd;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access overwrite when write is a merge!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    return-object v0
.end method

.method public final zzbxa()Lcom/google/android/gms/internal/zzecy;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t access merge when write is an overwrite!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmws:Lcom/google/android/gms/internal/zzecy;

    return-object v0
.end method

.method public final zzbxb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegd;->zzmwr:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
