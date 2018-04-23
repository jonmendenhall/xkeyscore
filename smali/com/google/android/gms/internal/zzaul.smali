.class final Lcom/google/android/gms/internal/zzaul;
.super Lcom/google/android/gms/internal/zzaum;


# instance fields
.field private synthetic zzecu:Lcom/google/android/gms/internal/zzauk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzauk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaul;->zzecu:Lcom/google/android/gms/internal/zzauk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaum;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzap(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaul;->zzecu:Lcom/google/android/gms/internal/zzauk;

    new-instance v1, Lcom/google/android/gms/internal/zzaup;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzfni:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaug;->zzaar()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzaup;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
