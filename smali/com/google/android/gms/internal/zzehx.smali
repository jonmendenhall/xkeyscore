.class public final Lcom/google/android/gms/internal/zzehx;
.super Ljava/lang/Object;


# instance fields
.field private final zzmzi:Lcom/google/android/gms/internal/zzejw;

.field private final zzmzj:Z

.field private final zzmzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzejw;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehx;->zzmzi:Lcom/google/android/gms/internal/zzejw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzehx;->zzmzj:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzehx;->zzmzk:Z

    return-void
.end method


# virtual methods
.method public final zzal(Lcom/google/android/gms/internal/zzedk;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzehx;->zzmzj:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzehx;->zzmzk:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzedk;->zzbwh()Lcom/google/android/gms/internal/zzejg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzehx;->zzf(Lcom/google/android/gms/internal/zzejg;)Z

    move-result p1

    return p1
.end method

.method public final zzbsv()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzi:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0
.end method

.method public final zzbxz()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzj:Z

    return v0
.end method

.method public final zzbya()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzk:Z

    return v0
.end method

.method public final zzbyb()Lcom/google/android/gms/internal/zzejw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzi:Lcom/google/android/gms/internal/zzejw;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/zzejg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzj:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzk:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzehx;->zzmzi:Lcom/google/android/gms/internal/zzejw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejw;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->zzk(Lcom/google/android/gms/internal/zzejg;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
