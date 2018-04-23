.class final Lcom/google/android/gms/internal/zzffu$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzffu$zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzffu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zze"
.end annotation


# instance fields
.field zzpha:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-void
.end method


# virtual methods
.method public final zza(ZDZD)D
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p4, 0x35

    mul-int/2addr p4, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p5

    invoke-static {p5, p6}, Lcom/google/android/gms/internal/zzffz;->zzde(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-wide p2
.end method

.method public final zza(ZIZI)I
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return p2
.end method

.method public final zza(ZJZJ)J
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p4, 0x35

    mul-int/2addr p4, p1

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/zzffz;->zzde(J)I

    move-result p1

    add-int/2addr p4, p1

    iput p4, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-wide p2
.end method

.method public final zza(ZLcom/google/android/gms/internal/zzfes;ZLcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfes;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfes;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfgc;Lcom/google/android/gms/internal/zzfgc;)Lcom/google/android/gms/internal/zzfgc;
    .locals 1

    iget p2, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 v0, 0x35

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfgd;Lcom/google/android/gms/internal/zzfgd;)Lcom/google/android/gms/internal/zzfgd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfgd<",
            "TT;>;",
            "Lcom/google/android/gms/internal/zzfgd<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/zzfgd<",
            "TT;>;"
        }
    .end annotation

    iget p2, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 v0, 0x35

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfgy;Lcom/google/android/gms/internal/zzfgy;)Lcom/google/android/gms/internal/zzfgy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzfgy<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/zzfgy<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/zzfgy<",
            "TK;TV;>;"
        }
    .end annotation

    iget p2, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 v0, 0x35

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfgy;->hashCode()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfhe;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/zzfhe;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_2

    instance-of p2, p1, Lcom/google/android/gms/internal/zzffu;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/zzffu;

    iget v0, p2, Lcom/google/android/gms/internal/zzffu;->zzpfa:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphd:I

    invoke-virtual {p2, v1, p0, p2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p2, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    iget-object v2, p2, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-interface {p0, v1, v2}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfio;Lcom/google/android/gms/internal/zzfio;)Lcom/google/android/gms/internal/zzfio;

    move-result-object v1

    iput-object v1, p2, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    iget v1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    iput v1, p2, Lcom/google/android/gms/internal/zzffu;->zzpfa:I

    iput v0, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    :cond_0
    iget p2, p2, Lcom/google/android/gms/internal/zzffu;->zzpfa:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    goto :goto_0

    :cond_2
    const/16 p2, 0x25

    :goto_0
    const/16 v0, 0x35

    iget v1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfio;Lcom/google/android/gms/internal/zzfio;)Lcom/google/android/gms/internal/zzfio;
    .locals 1

    iget p2, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 v0, 0x35

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfio;->hashCode()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p1
.end method

.method public final zza(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzffz;->zzdg(Z)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p2
.end method

.method public final zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p2
.end method

.method public final zza(ZZZZ)Z
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/zzffz;->zzdg(Z)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return p2
.end method

.method public final zzb(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    move-object p1, p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p2
.end method

.method public final zzc(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    move-object p1, p2

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzffz;->zzde(J)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p2
.end method

.method public final zzd(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    move-object p1, p2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzffz;->zzde(J)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p2
.end method

.method public final zzdf(Z)V
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_0
    return-void
.end method

.method public final zze(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p2
.end method

.method public final zzf(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    const/16 p3, 0x35

    mul-int/2addr p3, p1

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/google/android/gms/internal/zzffu$zze;->zzpha:I

    return-object p2
.end method

.method public final zzg(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/zzfhe;

    check-cast p3, Lcom/google/android/gms/internal/zzfhe;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzffu$zze;->zza(Lcom/google/android/gms/internal/zzfhe;Lcom/google/android/gms/internal/zzfhe;)Lcom/google/android/gms/internal/zzfhe;

    move-result-object p1

    return-object p1
.end method
