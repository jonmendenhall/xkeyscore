.class public final Lcom/google/android/gms/internal/zzbej;
.super Lcom/google/android/gms/common/api/GoogleApi;

# interfaces
.implements Lcom/google/android/gms/internal/zzbee;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
        ">;",
        "Lcom/google/android/gms/internal/zzbee;"
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/zzbdy;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzg;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/zzg;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/internal/zzcz;)V

    return-void
.end method

.method public static zzca(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbee;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/zzbej;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbej;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzbeh;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbeh;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbem;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApi;->zzago()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbem;-><init>(Lcom/google/android/gms/internal/zzbeh;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApi;->zzc(Lcom/google/android/gms/common/api/internal/zzm;)Lcom/google/android/gms/common/api/internal/zzm;

    move-result-object p1

    return-object p1
.end method
