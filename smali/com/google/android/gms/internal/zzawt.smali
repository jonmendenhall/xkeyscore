.class final Lcom/google/android/gms/internal/zzawt;
.super Lcom/google/android/gms/internal/zzawv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaws;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzawv;-><init>(Lcom/google/android/gms/internal/zzawt;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzawn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzawu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzawu;-><init>(Lcom/google/android/gms/internal/zzawt;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzawn;->zza(Lcom/google/android/gms/internal/zzawp;)V

    return-void
.end method
