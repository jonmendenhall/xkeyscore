.class public final Lcom/google/android/gms/common/api/internal/zzd;
.super Lcom/google/android/gms/common/api/internal/zzb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzb<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzcq<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field

.field private zzfnr:Lcom/google/android/gms/common/api/internal/zzdn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzdn<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzcr;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzcr;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/zzb;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/zzcr;->zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zzcr;->zzfnr:Lcom/google/android/gms/common/api/internal/zzdn;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzfnr:Lcom/google/android/gms/common/api/internal/zzdn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/internal/zzae;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/zzae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/zzbo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzbo<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzbo;->zzahp()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzedx:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/zzcq;->zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzcq;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzbo;->zzaiy()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzcq;->zzajo()Lcom/google/android/gms/common/api/internal/zzck;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzcr;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzd;->zzfnr:Lcom/google/android/gms/common/api/internal/zzdn;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zzcr;-><init>(Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzs(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zzb;->zzs(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
