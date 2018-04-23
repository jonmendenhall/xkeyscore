.class final Lcom/google/android/gms/common/api/internal/zzar;
.super Lcom/google/android/gms/common/api/internal/zzay;


# instance fields
.field final synthetic zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

.field private final zzfrn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/common/api/internal/zzaq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzao;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/common/api/internal/zzaq;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zzay;-><init>(Lcom/google/android/gms/common/api/internal/zzao;Lcom/google/android/gms/common/api/internal/zzap;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrn:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zzaib()V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$zze;->zzagg()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrn:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zzaq;

    invoke-static {v3}, Lcom/google/android/gms/common/api/internal/zzaq;->zza(Lcom/google/android/gms/common/api/internal/zzaq;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v0, v2

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzao;->zzb(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/common/zzf;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zzao;->zza(Lcom/google/android/gms/common/api/internal/zzao;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/zzf;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    :cond_3
    if-eqz v2, :cond_5

    if-nez v0, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzao;->zzd(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/common/api/internal/zzbi;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zzas;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-direct {v2, p0, v3, v0}, Lcom/google/android/gms/common/api/internal/zzas;-><init>(Lcom/google/android/gms/common/api/internal/zzar;Lcom/google/android/gms/common/api/internal/zzbh;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zzbi;->zza(Lcom/google/android/gms/common/api/internal/zzbj;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzao;->zze(Lcom/google/android/gms/common/api/internal/zzao;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzao;->zzf(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/internal/zzcxd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcxd;->connect()V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrn:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zze;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrn:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzj;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->zzagg()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/zzao;->zzd(Lcom/google/android/gms/common/api/internal/zzao;)Lcom/google/android/gms/common/api/internal/zzbi;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/common/api/internal/zzat;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zzar;->zzfrl:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-direct {v4, p0, v5, v3}, Lcom/google/android/gms/common/api/internal/zzat;-><init>(Lcom/google/android/gms/common/api/internal/zzar;Lcom/google/android/gms/common/api/internal/zzbh;Lcom/google/android/gms/common/internal/zzj;)V

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/api/internal/zzbi;->zza(Lcom/google/android/gms/common/api/internal/zzbj;)V

    goto :goto_2

    :cond_7
    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzj;)V

    goto :goto_2

    :cond_8
    return-void
.end method
