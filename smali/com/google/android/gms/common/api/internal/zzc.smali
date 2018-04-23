.class public final Lcom/google/android/gms/common/api/internal/zzc;
.super Lcom/google/android/gms/common/api/internal/zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/google/android/gms/common/api/internal/zzm<",
        "+",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        ">;>",
        "Lcom/google/android/gms/common/api/internal/zza;"
    }
.end annotation


# instance fields
.field private zzfnp:Lcom/google/android/gms/common/api/internal/zzm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/api/internal/zzm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zza;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzfnp:Lcom/google/android/gms/common/api/internal/zzm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/internal/zzae;Z)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/zzae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzfnp:Lcom/google/android/gms/common/api/internal/zzm;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/zzae;->zza(Lcom/google/android/gms/common/api/internal/BasePendingResult;Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/zzbo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzbo<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzfnp:Lcom/google/android/gms/common/api/internal/zzm;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zzbo;->zzahp()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzm;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzc;->zzfnp:Lcom/google/android/gms/common/api/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzm;->zzu(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
