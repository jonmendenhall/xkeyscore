.class final Lcom/google/android/gms/common/api/internal/zzbc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field private synthetic zzfsj:Lcom/google/android/gms/common/api/internal/zzba;

.field private synthetic zzfsk:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzfsl:Lcom/google/android/gms/common/api/internal/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzba;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/zzda;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbc;->zzfsj:Lcom/google/android/gms/common/api/internal/zzba;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbc;->zzfsk:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzbc;->zzfsl:Lcom/google/android/gms/common/api/internal/zzda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbc;->zzfsj:Lcom/google/android/gms/common/api/internal/zzba;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbc;->zzfsk:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbc;->zzfsl:Lcom/google/android/gms/common/api/internal/zzda;

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zzba;->zza(Lcom/google/android/gms/common/api/internal/zzba;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/zzda;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
