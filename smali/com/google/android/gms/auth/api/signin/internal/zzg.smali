.class final Lcom/google/android/gms/auth/api/signin/internal/zzg;
.super Lcom/google/android/gms/auth/api/signin/internal/zza;


# instance fields
.field private synthetic zzeib:Lcom/google/android/gms/auth/api/signin/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzeib:Lcom/google/android/gms/auth/api/signin/internal/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzeib:Lcom/google/android/gms/auth/api/signin/internal/zzf;

    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/zzf;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zzbr(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzeib:Lcom/google/android/gms/auth/api/signin/internal/zzf;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/internal/zzf;->zzeia:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzo;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzg;->zzeib:Lcom/google/android/gms/auth/api/signin/internal/zzf;

    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
