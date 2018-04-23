.class final Lcom/google/android/gms/auth/api/accounttransfer/zzj;
.super Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;


# instance fields
.field private synthetic zzedv:Lcom/google/android/gms/internal/zzavf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient;Lcom/google/android/gms/internal/zzavf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzedv:Lcom/google/android/gms/internal/zzavf;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferClient$zzc;-><init>(Lcom/google/android/gms/auth/api/accounttransfer/zzc;)V

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

    iget-object v0, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzedy:Lcom/google/android/gms/internal/zzavc;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/accounttransfer/zzj;->zzedv:Lcom/google/android/gms/internal/zzavf;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzavd;->zza(Lcom/google/android/gms/internal/zzavb;Lcom/google/android/gms/internal/zzavf;)V

    return-void
.end method
