.class final Lcom/google/android/gms/internal/zzeis;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzeix;


# instance fields
.field private final zznar:Lcom/google/android/gms/internal/zzein;

.field private final zznbb:Lcom/google/android/gms/internal/zzegj;

.field private final zznbc:Lcom/google/android/gms/internal/zzekd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegj;Lcom/google/android/gms/internal/zzein;Lcom/google/android/gms/internal/zzekd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeis;->zznbb:Lcom/google/android/gms/internal/zzegj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeis;->zznar:Lcom/google/android/gms/internal/zzein;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeis;->zznbc:Lcom/google/android/gms/internal/zzekd;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzejv;Lcom/google/android/gms/internal/zzekc;Z)Lcom/google/android/gms/internal/zzekc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznbc:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznbc:Lcom/google/android/gms/internal/zzekd;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbzf()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeis;->zznbb:Lcom/google/android/gms/internal/zzegj;

    invoke-virtual {v1, v0, p2, p3, p1}, Lcom/google/android/gms/internal/zzegj;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzekc;ZLcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzekc;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbzc()Lcom/google/android/gms/internal/zzehx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzehx;->zzf(Lcom/google/android/gms/internal/zzejg;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzehx;->zzbsv()Lcom/google/android/gms/internal/zzekd;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzekd;->zzm(Lcom/google/android/gms/internal/zzejg;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznbc:Lcom/google/android/gms/internal/zzekd;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzehx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeis;->zznbc:Lcom/google/android/gms/internal/zzekd;

    invoke-static {}, Lcom/google/android/gms/internal/zzejx;->zzcal()Lcom/google/android/gms/internal/zzejx;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzejw;->zza(Lcom/google/android/gms/internal/zzekd;Lcom/google/android/gms/internal/zzejv;)Lcom/google/android/gms/internal/zzejw;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzehx;-><init>(Lcom/google/android/gms/internal/zzejw;ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzeis;->zznar:Lcom/google/android/gms/internal/zzein;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzein;->zzbze()Lcom/google/android/gms/internal/zzehx;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzeis;->zznbb:Lcom/google/android/gms/internal/zzegj;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzegj;->zza(Lcom/google/android/gms/internal/zzejg;Lcom/google/android/gms/internal/zzehx;)Lcom/google/android/gms/internal/zzekd;

    move-result-object p1

    return-object p1
.end method
