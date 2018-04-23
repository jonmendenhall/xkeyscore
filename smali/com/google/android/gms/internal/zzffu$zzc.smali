.class final Lcom/google/android/gms/internal/zzffu$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzffu$zzh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzffu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzc"
.end annotation


# static fields
.field static final zzpgx:Lcom/google/android/gms/internal/zzffu$zzc;

.field private static zzpgy:Lcom/google/android/gms/internal/zzffv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzffu$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffu$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgx:Lcom/google/android/gms/internal/zzffu$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzffv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzffv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZDZD)D
    .locals 0

    if-ne p1, p4, :cond_1

    cmpl-double p1, p2, p5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-wide p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zza(ZIZI)I
    .locals 0

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zza(ZJZJ)J
    .locals 0

    if-ne p1, p4, :cond_1

    cmp-long p1, p2, p5

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-wide p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zza(ZLcom/google/android/gms/internal/zzfes;ZLcom/google/android/gms/internal/zzfes;)Lcom/google/android/gms/internal/zzfes;
    .locals 0

    if-ne p1, p3, :cond_1

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/zzfes;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfgc;Lcom/google/android/gms/internal/zzfgc;)Lcom/google/android/gms/internal/zzfgc;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1

    :cond_0
    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfgd;Lcom/google/android/gms/internal/zzfgd;)Lcom/google/android/gms/internal/zzfgd;
    .locals 0
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

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1

    :cond_0
    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfgy;Lcom/google/android/gms/internal/zzfgy;)Lcom/google/android/gms/internal/zzfgy;
    .locals 0
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

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfgy;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1

    :cond_0
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

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/zzffu;

    if-eq v1, p2, :cond_2

    sget v2, Lcom/google/android/gms/internal/zzffu$zzg;->zzphk:I

    invoke-virtual {v1, v2, v0, v0}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzffu;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lcom/google/android/gms/internal/zzffu;

    sget v0, Lcom/google/android/gms/internal/zzffu$zzg;->zzphd:I

    invoke-virtual {v1, v0, p0, p2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-interface {p0, v0, p2}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfio;Lcom/google/android/gms/internal/zzfio;)Lcom/google/android/gms/internal/zzfio;

    move-result-object p2

    iput-object p2, v1, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    :cond_2
    return-object p1

    :cond_3
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzfio;Lcom/google/android/gms/internal/zzfio;)Lcom/google/android/gms/internal/zzfio;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzfio;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1

    :cond_0
    return-object p1
.end method

.method public final zza(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zza(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-ne p1, p3, :cond_1

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zza(ZZZZ)Z
    .locals 0

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_0

    goto :goto_0

    :cond_0
    return p2

    :cond_1
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zzb(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zzc(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zzd(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zzdf(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1

    :cond_0
    return-void
.end method

.method public final zze(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zzf(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method

.method public final zzg(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/zzffu;

    check-cast p3, Lcom/google/android/gms/internal/zzfhe;

    const/4 v0, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphk:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzffu;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p3, Lcom/google/android/gms/internal/zzffu;

    sget v1, Lcom/google/android/gms/internal/zzffu$zzg;->zzphd:I

    invoke-virtual {p1, v1, p0, p3}, Lcom/google/android/gms/internal/zzffu;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    iget-object p3, p3, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    invoke-interface {p0, v1, p3}, Lcom/google/android/gms/internal/zzffu$zzh;->zza(Lcom/google/android/gms/internal/zzfio;Lcom/google/android/gms/internal/zzfio;)Lcom/google/android/gms/internal/zzfio;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/zzffu;->zzpgr:Lcom/google/android/gms/internal/zzfio;

    :goto_0
    if-eqz v0, :cond_2

    return-object p2

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/zzffu$zzc;->zzpgy:Lcom/google/android/gms/internal/zzffv;

    throw p1
.end method
