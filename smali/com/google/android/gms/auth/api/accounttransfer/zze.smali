.class final Lcom/google/android/gms/auth/api/accounttransfer/zze;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzb<",
        "[B>;"
    }
.end annotation


# instance fields
.field private synthetic zzedq:Lcom/google/android/gms/internal/zzavh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzavh;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zze;->zzedq:Lcom/google/android/gms/internal/zzavh;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzb;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzc;)V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/zzavd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/auth/api/accounttransfer/zzf;

    invoke-direct {v0, p0, p0}, Lcom/google/android/gms/auth/api/accounttransfer/zzf;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zze;Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zze;->zzedq:Lcom/google/android/gms/internal/zzavh;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzavd;->zza(Lcom/google/android/gms/internal/zzavb;Lcom/google/android/gms/internal/zzavh;)V

    return-void
.end method
