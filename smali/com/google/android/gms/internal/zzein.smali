.class public final Lcom/google/android/gms/internal/zzein;
.super Ljava/lang/Object;


# instance fields
.field private final zznaw:Lcom/google/android/gms/internal/zzehx;

.field private final zznax:Lcom/google/android/gms/internal/zzehx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzehx;Lcom/google/android/gms/internal/zzehx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzein;->zznaw:Lcom/google/android/gms/internal/zzehx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzein;->zznax:Lcom/google/android/gms/internal/zzehx;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzejw;ZZ)Lcom/google/android/gms/internal/zzein;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzein;

    new-instance v1, Lcom/google/android/gms/internal/zzehx;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzein;->zznax:Lcom/google/android/gms/internal/zzehx;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzein;-><init>(Lcom/google/android/gms/internal/zzehx;Lcom/google/android/gms/internal/zzehx;)V

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzejw;ZZ)Lcom/google/android/gms/internal/zzein;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzein;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzein;->zznaw:Lcom/google/android/gms/internal/zzehx;

    new-instance v2, Lcom/google/android/gms/internal/zzehx;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzein;-><init>(Lcom/google/android/gms/internal/zzehx;Lcom/google/android/gms/internal/zzehx;)V

    return-object v0
.end method

.method public final zzbzc()Lcom/google/android/gms/internal/zzehx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzein;->zznaw:Lcom/google/android/gms/internal/zzehx;

    return-object v0
.end method

.method public final zzbzd()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzein;->zznaw:Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzein;->zznaw:Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzbze()Lcom/google/android/gms/internal/zzehx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzein;->zznax:Lcom/google/android/gms/internal/zzehx;

    return-object v0
.end method

.method public final zzbzf()Lcom/google/android/gms/internal/zzekd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzein;->zznax:Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbxz()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzein;->zznax:Lcom/google/android/gms/internal/zzehx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
