.class final Lcom/google/android/gms/internal/zzbfx;
.super Lcom/google/android/gms/internal/zzbga;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbfw;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzbga;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzbgb;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzd;->zzakn()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbge;

    new-instance v0, Lcom/google/android/gms/internal/zzbfy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbfy;-><init>(Lcom/google/android/gms/common/api/internal/zzn;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbge;->zza(Lcom/google/android/gms/internal/zzbgc;)V

    return-void
.end method
