.class public final Lcom/google/android/gms/common/api/internal/zzcr;
.super Ljava/lang/Object;


# instance fields
.field public final zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzcq<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field

.field public final zzfnr:Lcom/google/android/gms/common/api/internal/zzdn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzdn<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzcq;Lcom/google/android/gms/common/api/internal/zzdn;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/zzcq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/zzdn;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzcq<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/zzdn<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzcr;->zzfnq:Lcom/google/android/gms/common/api/internal/zzcq;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzcr;->zzfnr:Lcom/google/android/gms/common/api/internal/zzdn;

    return-void
.end method
