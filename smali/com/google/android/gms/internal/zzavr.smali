.class final Lcom/google/android/gms/internal/zzavr;
.super Lcom/google/android/gms/internal/zzavn;


# instance fields
.field private synthetic zzege:Lcom/google/android/gms/internal/zzavq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzavq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavr;->zzege:Lcom/google/android/gms/internal/zzavq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavn;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavr;->zzege:Lcom/google/android/gms/internal/zzavq;

    new-instance v1, Lcom/google/android/gms/internal/zzavo;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzavo;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavr;->zzege:Lcom/google/android/gms/internal/zzavq;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzavo;->zzf(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzavo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
