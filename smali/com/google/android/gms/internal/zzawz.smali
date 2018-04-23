.class final Lcom/google/android/gms/internal/zzawz;
.super Lcom/google/android/gms/internal/zzawh;


# instance fields
.field private synthetic zzegp:Lcom/google/android/gms/internal/zzawy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawz;->zzegp:Lcom/google/android/gms/internal/zzawy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzawh;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzawz;->zzegp:Lcom/google/android/gms/internal/zzawy;

    new-instance v1, Lcom/google/android/gms/internal/zzaxa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzaxa;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
